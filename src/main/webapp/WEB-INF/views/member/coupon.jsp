<%--
  Created by IntelliJ IDEA.
  User: wooHj
  Date: 2023-12-20
  Time: 오후 5:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<div class="css-j0lifa ed9qr673">
    <div class="css-fhxb3m ed9qr672">
        <h2 class="css-1268zpe ed9qr671">쿠폰</h2>
    </div>
</div>




<div class="download_coupon">



    <input type="checkbox" id="check">
    <label for="check">
        <span></span>
        <span></span>
        <span></span>
    </label>


    <div class="sidebar">
        <ul>



            <c:forEach var="download" items="${download}">

                <li class="coupon" id="dw_id ${download.dw_id}">
                    <span class="coupon_count">${download.cp_qty}</span>
                    <div class="coupon_front">
                        <div>${download.cp_name}</div>
                        <div><c:if test="${download.type == 'rate'}">
                            ${download.cash_rate}%
                        </c:if>
                            <c:if test="${download.type == 'cash'}">
                                ${download.cash_rate}원
                            </c:if></div>
                        <div class="cp_del_date">${download.cp_del_date}</div>
                    </div>
                    <div class="coupon_back active" id="${download.cp_id}"><span>coupon</span></div>
                </li>

            </c:forEach>



        </ul>
    </div>



</div>




<div data-testid="summary" class="css-1ky9cuc e3geg1y2">
    <p class="css-16z9rvt e3geg1y1">쿠폰은 적용 가능한 상품이 따로 적용되어 있는 경우 해당 상품 구매 시에만 사용이 가능합니다.</p>
    <p class="css-1x6sdw1 e3geg1y0">사용가능쿠폰: ${mem_have_cp_qty}장</p>
</div>
<table class="css-171zbec e1rqxz0z3">
    <thead class="css-0 e1rqxz0z2">
    <tr class="css-141m64i e1rqxz0z1">
        <th class="css-1ug13y3 e1rqxz0z0">쿠폰명</th>
        <th class="css-1ug13y3 e1rqxz0z0">기능</th>
        <th class="css-1ug13y3 e1rqxz0z0">할인/적립</th>
        <th class="css-1ug13y3 e1rqxz0z0">사용가능기간</th>
        <th class="css-1ug13y3 e1rqxz0z0">사용여부</th>
    </tr>
    </thead>



    <c:forEach var="coupon" items="${coupon}">

        <tbody data-testid="coupon-detail" class="css-1deckd1 e1rjzgz00">
        <tr data-testid="coupon-item" class="css-141m64i e1tgnahe2">
            <td class="css-q2jm29 evod6yc1">
                <p class="css-1sg7btz evod6yc0">${coupon.cp_name}</p>
                <div data-testid="price-condition" class="css-3apn08 e1y0jaxm0">${coupon.min_amt}원 이상 주문 시
                    <c:if test="${coupon.max_disc_amt != 0}">
                        최대 ${coupon.max_disc_amt}원 할인
                    </c:if>
                </div>
                <p data-testid="payment-condition" class="css-3apn08 er3hb6s0">특정상품 한정</p><div
                    class="css-1xwjhen e1mgczsm0">${coupon.cp_qty}장</div>
            </td>
            <td class="css-44wg63 e1tgnahe1">할인</td>
            <td class="css-44wg63 e1tgnahe1">
                <c:if test="${coupon.type == 'rate'}">
                    ${coupon.cash_rate}%
                </c:if>
                <c:if test="${coupon.type == 'cash'}">
                    ${coupon.cash_rate}원
                </c:if>
            </td>
            <td class="css-44wg63 e1tgnahe1">${coupon.cp_del_date}</td>
            <td class="css-qlipgp e1tgnahe0">${coupon.cp_sts}</td>
        </tr>
        </tbody>

    </c:forEach>


</table>
<script>
    function getRandomColor(){
        const elements = "0123456789ABCDEF";
        let color = "#";

        for(let i = 0 ; i<6 ; i++){
            color += elements[Math.floor(Math.random()*16)];
        }
        return color;
    }

    document.addEventListener("DOMContentLoaded", function(){
        const coupons = document.querySelectorAll(".coupon");
        console.log('coupons : ' +coupons);

        coupons.forEach(function(coupon){
            console.log(coupon);
            const coupon_front = coupon.querySelector(".coupon_front");
            console.log('coupon_front : '+coupon_front)
            const RandomColor = getRandomColor();
            coupon_front.style.backgroundColor = RandomColor;

        });

        // alreadyDownloadedArray 변수에는 Java에서 전달한 List<Integer>의 내용이 JavaScript 배열로 저장
        var alreadyDownloadedArray = <%= request.getAttribute("already_downloaded") %>;

        // JavaScript에서 데이터 사용 예제
        for (var i = 0; i < alreadyDownloadedArray.length; i++) {
            console.log("Downloaded Item: " + alreadyDownloadedArray[i]);
        }
        const uniqueData = Array.from(new Set(alreadyDownloadedArray));
        console.log(uniqueData);


        uniqueData.forEach(number=> {
            var dwId1Tag = $('#dw_id\\ ' + number);


            let couponBackTag = dwId1Tag.find('.coupon_back');
            let couponFrontTag = dwId1Tag.find('.coupon_front');
            var isActive = couponBackTag.hasClass('active');
            if (isActive) {
                couponBackTag.removeClass('active').addClass('non');
            }

            couponBackTag.css("background-color", "gray");
            couponFrontTag.css("background-color", "gray");
            couponBackTag.css('cursor', 'default');
            couponFrontTag.css('cursor', 'default');
        });

        //모든 coupon태그를 가져온다
        //수량 최신화
        update_cp_qty();



        //2023-12-25T15:30 이런식으로 출력돼서 아래 코드 추가
        const elements = document.querySelectorAll('.cp_del_date');

// Iterate through each element
        elements.forEach(element => {
            const originalDateString = element.innerHTML;
            const originalDate = new Date(originalDateString);
            const options = {
                year: 'numeric',
                month: '2-digit',
                day: '2-digit',
                hour: 'numeric',
                minute: 'numeric',
                hour12: false,
            };

            const formattedDate = originalDate.toLocaleString('en-US', options).replace(/(\d+)\/(\d+)\/(\d+), (\d+:\d+)/, '$3-$1-$2 $4');
            element.innerHTML = formattedDate;
        });





    });


    //     쿠폰에 이벤트 추가
    $('.coupon_back').on('click', function (){
        var currentId = $(this).attr('class');
        if(currentId.includes('active')){

            //밑에 두 코드를 추가한 이유: 여러번 클릭했을 경우 밑에 코드가 여러번 실행된다
            // 첫 번 째 응답은 success, 그 뒤부터는 erorr로 오게되어 여러개의 alert가 나온다
            var currentElement = $(this);
            currentElement.removeClass('active').addClass('non');

            var cp_del_date = $(this).siblings('.coupon_front').find('.cp_del_date').text();
            console.log(cp_del_date);

            //dw_id 얻기
            var couponId = $(this).closest('.coupon').attr('id');

            // id에서 숫자 부분만 추출 (dw_id 뒤의 숫자)
            var dw_id = couponId.split(' ')[1];

            var clickedId = $(this).attr('id');

            var isAlertShown = false;

            $.ajax({
                url: "coupon_dw",
                method: "GET",
                data: {
                    cp_id: clickedId,
                    cp_del_date: cp_del_date,
                    dw_id : dw_id
                },
                dataType: "json",
                success: function(data) {


                    console.log(data.download_cp_qty);
                    let download_cp_qty = data.download_cp_qty;

                    //컨트롤러에서 받아온 dw_id를 사용하여
                    var download_dw_id = $('#dw_id\\ ' + data.download_dw_id);
                    download_dw_id.find('.coupon_count').text(download_cp_qty);
                    //만약 반환받은 값이 텍스트의 값보다 1보다 작으면 현재 보유한 쿠폰 수량+1


                    //data에는 내가 받았던 dw_id들이 들어있다
                    console.log(data);
                    let downloaded_dw_id_list =  data.downloaded_dw_id_list;

                    //나중에는 필요 없지만 일단 중복제거를 한다
                    const uniqueData = Array.from(new Set(downloaded_dw_id_list));
                    console.log(uniqueData);
                    //하나씩 꺼내서 dw_id 에 해당하는 태그를 선택
                    uniqueData.forEach(a => change_coupon_disable(a));
                    //change_coupon_disable(uniqueData);




                    //대공사
                    //밑에 문제는 반복문이 돌 때 마다 각각 바디에 하나씩 들어간다(어 총 3개씩 3번)
                    //목표 하나의 쿠폰을 받을 때는 하나의 쿠폰만 마지막 태그에 추가

                    let couponData = data.coupon_detail;
                    console.log(couponData);


                    // Create the new tbody element
                    var newTbody = $("<tbody data-testid='coupon-detail' class='css-1deckd1 e1rjzgz00'></tbody>");

// Create the new tr element
                    var newTr = $("<tr data-testid='coupon-item' class='css-141m64i e1tgnahe2'></tr>");

// Append td elements to the new tr
                    newTr.append("<td class='css-q2jm29 evod6yc1'>" +
                        "<p class='css-1sg7btz evod6yc0'>" + couponData.cp_name + "</p>" +
                        "<div data-testid='price-condition' class='css-3apn08 e1y0jaxm0'>" + couponData.min_amt + "원 이상 주문 시" +
                        "<c:if test='${couponData.max_disc_amt != 0}'>" +
                        "최대 " + couponData.max_disc_amt + "원 할인" +
                        "</c:if>" +
                        "</div>" +
                        "<p data-testid='payment-condition' class='css-3apn08 er3hb6s0'>특정상품 한정</p>" +
                        "<div class='css-1xwjhen e1mgczsm0'>"+ couponData.cp_qty +"장</div>" +
                        "</td>");

                    newTr.append("<td class='css-44wg63 e1tgnahe1'>할인</td>");
                    newTr.append("<td class='css-44wg63 e1tgnahe1'>" +
                        (couponData.type === 'rate' ? couponData.cash_rate + "%" :
                            (couponData.type === 'cash' ? couponData.cash_rate + "원" : "")) +
                        "</td>");
                    newTr.append("<td class='css-44wg63 e1tgnahe1'>" + couponData.cp_del_date + "</td>");
                    newTr.append("<td class='css-qlipgp e1tgnahe0'>" +
                        (couponData.cp_sts === 'UNUSED' ? "미사용" :
                            (couponData.cp_sts === 'USED' ?  "사용 완료" : "기간 만료")) +
                        "</td>");


                    newTbody.append(newTr);


                    $("table.css-171zbec.e1rqxz0z3").append(newTbody);

                    //위쪽 수량 2개 최신화
                    let mem_have_cp_qty = data.mem_have_cp_qty;
                    console.log('mem_have_cp_qty : '+ mem_have_cp_qty);

                    var couponElements = document.querySelectorAll('.css-1lomzjv .css-157zkrj');

                    // 배열을 순회하면서 조건에 맞는 태그 찾기
                    couponElements.forEach(function(element) {
                        if (element.innerText.trim() === "쿠폰") {
                            var siblingElement = element.nextElementSibling;
                            if (siblingElement && siblingElement.classList.contains('css-1omzzwx')) {
                                siblingElement.innerHTML = mem_have_cp_qty + ' <span class="css-mmvz9h e1ugk4rt0">개</span>'; // 변경하고 싶은 텍스트로 교체
                            }
                        }
                    });

                    var couponElement2 = document.querySelector('.css-1x6sdw1.e3geg1y0');
                    let originalText = couponElement2.innerText;
                    var updatedText = originalText.replace(/\d+/, mem_have_cp_qty);
                    couponElement2.innerText = updatedText;



                },
                error: function(error) {
                    //두 사람이 같은 아이디로 이미 다운받은 쿠폰을 다운받은 경우
                    //경고메시지와 redirect
                    var errorData = error.responseJSON;
                    if (!isAlertShown) {
                        isAlertShown = true;
                        console.error('Error:', errorData);
                        alert(errorData.message);

                        if (errorData.redirect) {
                            console.log(errorData.redirect);
                            window.location.href = errorData.redirect;
                        }

                    }


                }
            });

        }else{
        }



    });

    function change_coupon_disable(number){
        var dwId1Tag = $('#dw_id\\ ' + number);
        let couponBackTag = dwId1Tag.find('.coupon_back');
        let couponFrontTag = dwId1Tag.find('.coupon_front');

        // var isActive = couponBackTag.hasClass('active');
        // if (isActive) {
        //     couponBackTag.removeClass('active').addClass('non');
        // }

        couponBackTag.css("background-color", "gray");
        couponFrontTag.css("background-color", "gray");
        couponBackTag.css('cursor', 'default');
        couponFrontTag.css('cursor', 'default');

    }

    function update_cp_qty (){
        var couponItems = document.querySelectorAll('.coupon');
        couponItems.forEach(function(item) {

            //현재 태그의 dw_id 가져오기
            var idAttribute = item.id;
            var dwIdMatch = idAttribute.match(/dw_id\s+(\d+)/);
            console.log('dwIdMatch : '+dwIdMatch[1]);
            let dw_id = parseInt(dwIdMatch[1], 10);
            console.log('dw_id : '+dw_id);

            //쿠폰 남은 수량이 0보다 작으면 다운 불가
            let qty = item.querySelector('.coupon_count').textContent;
            console.log('qty : '+qty);
            if(qty <= 0){
                change_coupon_disable(dw_id);
            }
        });
    }


</script>