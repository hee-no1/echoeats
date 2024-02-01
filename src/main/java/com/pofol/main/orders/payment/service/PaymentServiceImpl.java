package com.pofol.main.orders.payment.service;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.pofol.main.member.dto.GradeDto;
import com.pofol.main.member.dto.MemberDto;
import com.pofol.main.member.repository.GradeRepository;
import com.pofol.main.member.repository.MemberRepository;
import com.pofol.main.orders.order.domain.OrderCheckout;
import com.pofol.main.orders.order.domain.OrderDto;
import com.pofol.main.orders.order.repository.OrderRepository;
import com.pofol.main.orders.payment.domain.PaymentDto;
import com.pofol.main.orders.payment.domain.PaymentHistoryDto;
import com.pofol.main.orders.payment.repository.PaymentHistoryRepository;
import com.pofol.main.orders.payment.repository.PaymentRepository;
import com.pofol.main.product.cart.SelectedItemsDto;
import com.pofol.main.product.cart.CartRepository;
import com.pofol.main.product.domain.OptionProductDto;
import com.pofol.main.product.domain.ProductDto;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.List;

import static java.nio.charset.StandardCharsets.*;

@Service
@Slf4j
@RequiredArgsConstructor
public class PaymentServiceImpl implements PaymentService{

    private final GradeRepository gradeRepository;
    private final CartRepository basketRepository;
    private final OrderRepository orderRepository;
    private final PaymentRepository paymentRepository;
    private final PaymentHistoryRepository paymentHistoryRepository;


    @Override
    @Transactional
    public Boolean prevVerify(OrderCheckout oc) {
        List<SelectedItemsDto> items = oc.getSelectedItems();
        int jsTotPayPrice = oc.getTot_pay_price(); //js에서 넘어온 실 결제 금액
        int dbTotPayPrice = 0; //

        try {
            for (SelectedItemsDto item : items) {
                String opt_prod_id = item.getOpt_prod_id();
                Integer qty = item.getQty();

                if (opt_prod_id == null || opt_prod_id.isEmpty()) { //일반 상품일 때
                    ProductDto prod = basketRepository.selectProduct(item.getProd_id());
                    dbTotPayPrice += prod.getDisc_price() * qty;
                } else { //옵션 상품일 때
                    OptionProductDto prod = basketRepository.selectOptionProduct(item.getOpt_prod_id());
                    dbTotPayPrice += prod.getOpt_disc_price() * qty;
                }
            }

            if (dbTotPayPrice < 40000) { //배송비 추가
                dbTotPayPrice += 3000;
            }

            dbTotPayPrice -= (oc.getCoupon_disc() + oc.getPoint_used());

            System.out.println("jsTotPayPrice = " + jsTotPayPrice);
            System.out.println("dbTotPayPrice = " + dbTotPayPrice);
            return jsTotPayPrice == dbTotPayPrice; //같으면 true, 다르면 false
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }


    @Override
    @Transactional
    public PaymentDto writePayment(PaymentDto pay) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String mem_id = authentication.getName(); //회원id

        try {
            //결제 table 작성
            pay.setMemberData(mem_id);
            //적립금 계산 <- 결제 완료 시에만 필요
            if(pay.getSuccess().equals("true")){
                GradeDto grade = gradeRepository.select_grade(mem_id);
                System.out.println(grade);
                pay.setReserves(pay.getTot_pay_price() * grade.getAcm_rate() / 100);
            }
            paymentRepository.insert(pay);

            //결제이력 table 작성
            PaymentHistoryDto paymentHistoryDto = new PaymentHistoryDto(pay.getPay_id(), pay.getOrd_id(), pay.getMem_id(), pay.getCode_name(), pay.getPay_way(), pay.getTot_prod_name(), pay.getTot_pay_price(), pay.getPg_tid(), pay.getMem_id(), pay.getMem_id());
            paymentHistoryRepository.insert(paymentHistoryDto);
            return pay;
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }


    @Value("${api.Key}")
    private String apiKey;

    @Value("${api.secretKey}")
    private String apiSecretKey;

    private final String iamportURL = "https://api.iamport.kr";

    @Override
    public Boolean nextVerify(PaymentDto pd)  {
        //자바 서버에서 포트원 api를 연결하자
        log.info("PortOne api 호출");
        try {
            //토큰 불러오기
            String accessToken = getToken();

            //토큰을 해더에 넣고, GET /payments/{imp_uid}를 이용해 결제 내역 조회
            URL url = new URL(iamportURL+"/payments/"+ pd.getPay_id());
            HttpURLConnection con = (HttpURLConnection) url.openConnection();

            con.setRequestMethod("GET");
            con.setRequestProperty("Authorization", "Bearer " + accessToken);

            int responseCode = con.getResponseCode();
            System.out.println("결제 내역 조회 HTTP Response Code: " + responseCode);

            int portOneTotPayPrice;
            try (BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream(), UTF_8))) {
                String line;
                StringBuilder response = new StringBuilder();
                while ((line = br.readLine()) != null) {
                    response.append(line);
                }


                // JSON 파싱
                JsonElement element = JsonParser.parseString(response.toString());

                JsonObject object = element.getAsJsonObject();

                String amount = object.getAsJsonObject("response").get("amount").getAsString();
                portOneTotPayPrice = Integer.parseInt(amount);
            }

            int dbTotPayPrice = pd.getTot_pay_price(); //결제 DB에 저장된 총 실 결제 금액
            System.out.println("dbTotPayPrice = " + dbTotPayPrice);
            System.out.println("portOneTotPayPrice = " + portOneTotPayPrice);;

            return portOneTotPayPrice == dbTotPayPrice;
        }catch (Exception e) {
            log.info("에러발생");
            return false;
        }
    }

    private String getToken(){
        log.info("getToken method");
        try{
            //먼저 토큰을 발급
            URL url = new URL(iamportURL + "/users/getToken");
            HttpURLConnection con = (HttpURLConnection) url.openConnection();
            //json으로 key와 secret정보 보내기
            con.setRequestMethod("POST");
            con.setRequestProperty("Content-Type", "application/json; utf-8");
            con.setDoOutput(true);

            //JsonObject 클래스: gson 라이브러리에 있는 객체로, Json 객체를 객체를 생성하고 다룰 수 있다.
            //참고: Gson 객체는 자바 객체 ⇄ Json를 변환할 때 주로 사용한다.
            JsonObject jsonInput = new JsonObject();
            jsonInput.addProperty("imp_key",apiKey); //Json객체에 추가
            jsonInput.addProperty("imp_secret", apiSecretKey);
            String inputString = new Gson().toJson(jsonInput); //Gson 객체를 이용해 JsonObject(jsonInput)를 JSON 문자열로 변환하는 코드(직렬화)

            //서버로 데이터 전송
            try (OutputStream os = con.getOutputStream();
                 OutputStreamWriter osw = new OutputStreamWriter(os, UTF_8)) {
                osw.write(inputString);
                osw.flush();
            }

            int responseCode = con.getResponseCode();
            log.info("토큰 발급 HTTP Response Code: {}", responseCode);


            //토큰 가져오기
            String accessToken;
            try (BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream(), UTF_8))) {
                String line;
                StringBuilder response = new StringBuilder();
                while ((line = br.readLine()) != null) {
                    response.append(line);
                }


                // JSON 파싱
                JsonElement element = JsonParser.parseString(response.toString());

                JsonObject object = element.getAsJsonObject();

                accessToken = object.getAsJsonObject("response").get("access_token").getAsString();
            }

            return accessToken;
        } catch (IOException e) {
            //MalformedURLException: URL형식이 잘못됐거나, 지원하지 않는 프로토콜 사용시 발생
            //MalformedURLException < IOException
            log.error(e.getMessage());
            throw new RuntimeException();
        }
    }

    @Override
    public PaymentDto getPayment(Long ord_id) {
        try {
            PaymentDto paymentDto = paymentRepository.select(ord_id);
            return paymentDto;
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }
}
