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
                alert("✅ 1차 검증 성공 " );
                requestPay();

            },
            error: function(){alert("🔥 1차 검증 실패 또는 서버 오류")}
        });
    })

    var IMP = window.IMP;
    IMP.init("imp38341687");

    function requestPay() {
        IMP.request_pay({
            pg: 'kakaopay',
            pay_method: 'card',
            merchant_uid: 12341234,
            name: checkout.tot_prod_name,
            amount: checkout.tot_pay_price,
        }, rsp => {
            if (rsp.success) {
                // axios로 HTTP 요청, 결제 성공시 서버로 전송
                alert("success")
            } else {
                alert("fail")
            }
        });
    }

});

