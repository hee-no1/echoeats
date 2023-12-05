// document.addEventListener('DOMContentLoaded', function () {
//     addComma();
// });

// //금액에 콤마 추가
// let addComma = function(){
//     $(".money").each(function () {
//         let currentValue = $(this).text();
//         let formattedValue = Number(currentValue).toLocaleString();
//         $(this).text(formattedValue);
//     });
// }
//
// //금액에 콤마 제거
// let removeComma = function(){
//     $(".money").each(function () {
//         let currentValue = $(this).text();
//         let formattedValue = currentValue.replace(/,/g, '');
//         $(this).text(formattedValue);
//     });
// }

//쿠폰, 적립금 ajax로 보내기
let ajaxData = function(){

    let tot_prod_price = document.getElementById('tot_prod_price').innerHTML;
    let point_used = document.getElementById('inputPointUsed').value.replace(/[^0-9]/g, '');
    let dlvy_fee = document.getElementById('dlvy_fee').innerHTML;

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
    console.log("Before: " + input.value);
    let lastChar = input.value[input.value.length-1]; //마지막 글자
    console.log("마지막 글자: " + lastChar);
    let sliceResult = input.value.slice(0, -1); //첫글자부터 마지막 전 글자까지
    console.log("첫 글자부터 마지막 전 글자까지: " + sliceResult);

    if (input.value === '' || input.value === '0') {
        input.value = input.value.replace(/[^1-9]/g, '');
    }else if(isNaN(lastChar)){ //lastChar이 숫자가 아닐 때
        let sanitizedValue = lastChar.replace(/[^0-9]/g, '');

        input.value = sliceResult + sanitizedValue;
    }

    let point = document.getElementById('point').innerHTML;

    if(input.value*1 > point*1){
        input.value = point;
    }

    console.log("After: " + input.value);

    ajaxData();
}


//적립금 모두 사용 버튼
$("#allUseBtn").click(function(){
    let point = document.getElementById('point').innerHTML;
    document.getElementById('inputPointUsed').value = point;

    ajaxData();
})


