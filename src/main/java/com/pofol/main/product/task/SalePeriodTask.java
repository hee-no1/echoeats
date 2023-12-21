package com.pofol.main.product.task;

import com.pofol.admin.product.ProductAdminService;
import com.pofol.main.product.exception.HandlerProductException;
import com.pofol.main.product.exception.ProductStatusException;
import lombok.RequiredArgsConstructor;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.Date;

@Component
@RequiredArgsConstructor
public class SalePeriodTask {

    private final ProductAdminService productAdminService;
    
    // 판매 기간에 따른 상품 판매상태와 진열상태 변경 (자정을 기준으로 변경)
    // 스케줄은 주석으로 처리해놈 -> 개발 중 데이터가 바뀌는 것을 방지
//    @Scheduled(cron = "0 0 0 * * *") // 자정마다 업데이트
    public void salePeriodCheck() {

        // 현재 시간
        Date currentDate = new Date();

        String[] saleDateCheck = {"start", "end"};

        try {
            for (String range : saleDateCheck) {
                String before;
                String after;
                if (range.equals("start")) {
                    before = "판매전";
                    after = "판매중";
                } else if (range.equals("end")) {
                    before = "판매중";
                    after = "판매종료";
                } else {
                    throw new ProductStatusException("상품의 판매상태가 존재하지 않습니다.");
                }
                productAdminService.getSalePeriod(range, currentDate)
                    .stream()
                    .filter(productDto -> productDto.getSale_sts().equals(before))
                    .forEach(productDto -> {
                        productDto.setSale_sts(after);
                        try {
                            productAdminService.updateProductAdmin(productDto);
                        } catch (Exception exception) {
                            exception.printStackTrace();
                        }
                    });
            }

        } catch (ProductStatusException productStatusException) { // 판매상태가 존재하지 않을 때 예외처리
            HandlerProductException handlerProductException = new HandlerProductException();
            handlerProductException.ProductStatusExceptionHandler(productStatusException);
        } catch (Exception exception) {
            exception.printStackTrace();
        }
    }

    // 일일 할인 상품 상태 변경 (매일 10 : 00 에 업데이트)
}
