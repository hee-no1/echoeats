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
    let point_used = document.getElementById('inputPointUsed').value;
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
})


