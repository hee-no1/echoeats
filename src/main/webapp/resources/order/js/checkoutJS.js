window.addEventListener('scroll', function() {
    let scrollPosition = window.scrollY;
    // 특정 스크롤 위치 이상일 때
    if (scrollPosition >= 55) {
        document.querySelector('.css-9i9om4').style.position = 'sticky';
        document.querySelector('.css-9i9om4').style.top = '55px';
    }
});


let checkout = {
    selectedItems: selectedItems,
    tot_prod_name: tot_prod_name,
    tot_prod_price: tot_prod_price,
    origin_prod_price: origin_prod_price,
    dlvy_fee: dlvy_fee,
    pay_way: pay_way,
}
console.log(checkout);

//쿠폰, 적립금 ajax로 보내기
let ajaxData = function(){

    let tot_prod_price = document.getElementById('tot_prod_price').innerText;
    let point_used = document.getElementById('inputPointUsed').value;
    let dlvy_fee = document.getElementById('dlvy_fee').innerText;

    let paymentDiscount = {
        tot_prod_price: tot_prod_price,
        point_used: point_used,
        dlvy_fee: dlvy_fee
    }

    let paymentData = {}

    $(document).ready(function(){
        $.ajax({
            type:'POST',
            url: '/order/calculatePayment',
            headers:{"content-type":"application/json"},
            dataType:'json',
            data: JSON.stringify(paymentDiscount),
            success: function(result){
                paymentData = result;
                if(paymentData.point_used === null) {
                    $("#sign").html("");
                    $("#outputPointUsed").html(0);
                }else{
                    $("#sign").html("-");
                    $("#outputPointUsed").html(paymentData.point_used);
                }
                //나중에 여기에 쿠폰도 추가해야한다.
                if(paymentData.tot_pay_price === null){
                    $("#tot_pay_price").html(0);
                }else{
                    $("#tot_pay_price").html(paymentData.tot_pay_price);
                    $("#payment").html(paymentData.tot_pay_price);
                }
            },
            error: function(){ alert("error!!" ); }
        })
    });
}

//쿠폰 list
$('#couponList').hide(); //페이지를 로드할 때 숨길 요소
$("#couponBtn").click(function(){
    let couponBtn = $("#couponBtn");
    if(couponBtn.val() === 'unchecked'){
        $('#couponList').show();
        couponBtn.val('checked');
    }else {
        $('#couponList').hide();
        couponBtn.val('unchecked');
    }
});



//적립금 입력
function updateValue(input){

    const inputValue = input.value;

    let point = document.getElementById('point').innerHTML;
    console.log(point);

    if(inputValue === '0'){
        input.value = '';
    }else if(inputValue*1 > point*1){
        input.value = point;
    }
    else{
        let result = inputValue.replace(/[^-0-9]/g,'');
        input.value = result;

    }

    ajaxData();
}

//적립금 모두 사용 버튼
$("#allUseBtn").click(function(){
    let point = document.getElementById('point').innerHTML;
    document.getElementById('inputPointUsed').value = point;

    ajaxData();
});
$(document).ready(function() {


    let orderData = {
        pg : 'kakaopay',
        pay_method : 'kakaopay'
    };

    //결제 버튼 클릭 이벤트
    $(".payBtnList").on('click', function (e){
       if(e.target.id === 'kakaopayBtn'){
           $('#kakaopayBtn').removeClass('css-1wlyg0y');
           $('#kakaopayBtn').addClass('css-1fecctx');
           $('#creditcardBtn').removeClass('css-1pvbmgb');
           $('#creditcardBtn').addClass('css-1wlyg0y');
           $('#simplepayBtn').removeClass('css-1pvbmgb');
           $('#simplepayBtn').addClass('css-1wlyg0y');
           $('#mobiliansBtn').removeClass('css-1pvbmgb');
           $('#mobiliansBtn').addClass('css-1wlyg0y');
           $(".css-nemdq9").remove()
           orderData.pg = $("#kakaopayBtn").val();
           orderData.pay_method = 'kakaopay';

       } else if(e.target.id === 'creditcardBtn'){
           $('#creditcardBtn').removeClass('css-1wlyg0y');
           $('#creditcardBtn').addClass('css-1pvbmgb');
           $('#kakaopayBtn').removeClass('css-1fecctx');
           $('#kakaopayBtn').addClass('css-1wlyg0y');
           $('#simplepayBtn').removeClass('css-1pvbmgb');
           $('#simplepayBtn').addClass('css-1wlyg0y');
           $('#mobiliansBtn').removeClass('css-1pvbmgb');
           $('#mobiliansBtn').addClass('css-1wlyg0y');
           $(".css-nemdq9").remove()
           orderData.pg = $("#creditcardBtn").val();
           orderData.pay_method = 'card';

       } else if(e.target.id === 'simplepayBtn'){
           $('#simplepayBtn').removeClass('css-1wlyg0y');
           $('#simplepayBtn').addClass('css-1pvbmgb');
           $('#kakaopayBtn').removeClass('css-1fecctx');
           $('#kakaopayBtn').addClass('css-1wlyg0y');
           $('#creditcardBtn').removeClass('css-1pvbmgb');
           $('#creditcardBtn').addClass('css-1wlyg0y');
           $('#mobiliansBtn').removeClass('css-1pvbmgb');
           $('#mobiliansBtn').addClass('css-1wlyg0y');
           let checkbox = "";
           checkbox = checkbox + '<div class="css-nemdq9 evz7bw03">' +
               '<div class="css-nznuh9 evz7bw02"><label class="css-11zj85u et8nqc33" for="naver-pay">' +
                    '<input data-testid="radio-naver-pay" id="naver-pay" name="naver-pay" type="radio" class="css-1pes2r6 et8nqc32" value="naver-pay" checked=""><span class="css-5xw1m2 e2sqze61"><div class="css-1vic0rk e2sqze60"></div></span><span aria-labelledby="naver-pay" class="css-mgd87h et8nqc31"><span class="css-s5xdrg evz7bw00">네이버페이 </span></span></label></div>' +
               '<div class="css-nznuh9 evz7bw02"><label class="css-11zj85u et8nqc33" for="toss">' +
                    '<input data-testid="radio-toss" id="toss" name="toss" type="radio" class="css-1pes2r6 et8nqc32" value="toss"><span class="css-198i9ca e2sqze61"><div class="css-1dahn5m e2sqze60"></div></span><span aria-labelledby="toss" class="css-mgd87h et8nqc31"><span class="css-s5xdrg evz7bw00">토스 </span></span></label></div>' +
               '<div class="css-nznuh9 evz7bw02"><label class="css-11zj85u et8nqc33" for="payco">' +
                    '<input data-testid="radio-payco" id="payco" name="payco" type="radio" class="css-1pes2r6 et8nqc32" value="payco"><span class="css-198i9ca e2sqze61"><div class="css-1dahn5m e2sqze60"></div></span><span aria-labelledby="payco" class="css-mgd87h et8nqc31"><span class="css-s5xdrg evz7bw00">페이코</span></span></label></div>' +
               '</div>';
           $(".css-gd125q").append(checkbox);


       } else if(e.target.id === 'mobiliansBtn'){
           $('#mobiliansBtn').removeClass('css-1wlyg0y');
           $('#mobiliansBtn').addClass('css-1pvbmgb');
           $('#kakaopayBtn').removeClass('css-1fecctx');
           $('#kakaopayBtn').addClass('css-1wlyg0y');
           $('#creditcardBtn').removeClass('css-1pvbmgb');
           $('#creditcardBtn').addClass('css-1wlyg0y');
           $('#simplepayBtn').removeClass('css-1pvbmgb');
           $('#simplepayBtn').addClass('css-1wlyg0y');
           $(".css-nemdq9").remove()
       }
    });



    //주문서 상품 목록
    $('.totItems').show(); //페이지를 로드할 때 표시할 요소
    $('.items').hide(); //페이지를 로드할 때 숨길 요소
    $('#prodDetailBtn').click(function(){
        let arrowBtn = document.getElementById("arrowBtn");
        let rotate = arrowBtn.getAttribute("transform");
        if(rotate === "rotate(-45 15.5 16.5)"){
            $('.totItems').hide(); //클릭 시 첫 번째 요소 숨김
            $('.items').show(); //클릭 시 두 번째 요소 표시
            arrowBtn.setAttribute("transform", "rotate(135 15.5 16.5)");
        }else{
            $('.totItems').show(); //클릭 시 첫 번째 요소 숨김
            $('.items').hide(); //클릭 시 두 번째 요소 표시
            arrowBtn.setAttribute("transform", "rotate(-45 15.5 16.5)");
        }
    });

    //결제 버튼 누르면
    $('#paymentBtn').click(function(){

        checkout.tot_pay_price = document.getElementById("tot_pay_price").innerText*1;
        checkout.prod_disc = checkout.origin_prod_price - checkout.tot_prod_price;
        checkout.coupon_disc = document.getElementById("outputCouponUsed").innerText*1;
        checkout.point_used = document.getElementById("outputPointUsed").innerText*1;
        console.log("1차 검증 바로전 checkout = " + checkout);

        //넘어가야하는 것
        //총 상품명, 총 주문금액, 총 실결제 금액,총 상품할인 금액, 배송비, 결제 방법, 회원 아이디는 서버에서 세션으로 받는다.
        $.ajax({
            type:'POST',
            url: '/payment/verify/prev',
            headers:{"content-type": "application/json"},
            dataType: 'text',
            data : JSON.stringify(checkout),
            success: function(result){
                alert("✅ 1차 검증 성공 = " + result);
                orderData.ord_id = result*1;
                requestPay();

            },
            error: function(){alert("🔥 1차 검증 실패 또는 서버 오류")}
        });
    })

    var IMP = window.IMP;
    IMP.init("imp38341687");

    function requestPay() {
        IMP.request_pay({
            pg: orderData.pg,
            pay_method: orderData.pay_method,
            merchant_uid: orderData.ord_id,
            name: checkout.tot_prod_name,
            amount: checkout.tot_pay_price,
        }, rsp => {
            if (rsp.success) {
                // axios로 HTTP 요청, 결제 성공시 서버로 전송
                alert("success")
                console.log("rsp",rsp);
                writePayment(rsp);

            } else {
                alert("fail")
                writePayment(rsp);
            }
        });
    }

    function writePayment(rsp){
        axios({
            url: "/payment/verify/next",
            method: "post",
            headers: { "Content-Type": "application/json" },
            data: {
                pay_id: rsp.imp_uid,
                ord_id: rsp.merchant_uid,
                tot_prod_name: rsp.name,
                tot_pay_price: rsp.paid_amount,
                pay_way: rsp.pg_provider,
                pg_tid: rsp.pg_tid,
                success: rsp.success
            }
        }).then(response  => {
            // 서버 결제 API 성공시 로직
            alert("success: " +JSON.stringify(response.data))
            //주문번호
            window.location.href = '/order/completed/'+orderData.ord_id;

        }).catch(error => {
            alert("error: " + JSON.stringify(error.response))
        });
    }
});

