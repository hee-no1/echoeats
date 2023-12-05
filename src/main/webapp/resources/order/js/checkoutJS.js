//적립금
function updateValue(input){

    if(input === 0 && input === null){ //처음 입력할 때
        input.value = input.value.replace(/[^1-9]/g, '');
    } else{
        input.value = input.value.replace(/[^0-9]/g, '');
    }



    let tot_prod_price = document.getElementById('tot_prod_price').innerHTML;
    let reserves_used = document.getElementById('inputReservesUsed').value;
    let dlvy_fee = document.getElementById('dlvy_fee').innerHTML;


    let paymentDiscount = {
        tot_prod_price: tot_prod_price,
        reserves_used: reserves_used,
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
                if(paymentData.reserves_used === null) {
                    $("#outputReservesUsed").html(0);
                }else{
                    $("#outputReservesUsed").html("<span class='css-rfpchb eahaaoi3'>-</span>"+paymentData.reserves_used);
                }
                //나중에 여기에 쿠폰도 추가해야한다.
                if(paymentData.tot_pay_price === null){
                    $("#tot_pay_price").html(0);
                }else{
                    $("#tot_pay_price").html(paymentData.tot_pay_price);
                }


            },
            error: function(){ alert("error!!" ); }
        })


    });

}


