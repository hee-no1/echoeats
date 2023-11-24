$(document).ready(function(){

    let ssss = {name : "sandwich", price:8000, pack_type:"냉장"}; //샌드위치
    let cccc = {name : "chicken", price:8500, pack_type:"냉동"}; //닭가슴살

    //장바구니를 통해 체크되어 넘어온 상품들
    let selectedItems
        = [{dealProductNo:ssss, qty:1},
        {dealProductNo: cccc, qty: 2}];


    let tot_prod_price = 0; //총 상품 구매 금액
    let tot_ord_qty = 0; //총 수량

    for(let item of selectedItems){
        //총 상품 구매 금액 계산
        tot_prod_price += item.qty * item.dealProductNo.price;

        //총 수량 계산
        tot_ord_qty += item.qty;
    }

    console.log(tot_prod_price);
    console.log(tot_ord_qty);

    let payDicount = {
        prod_disc : 0,
        coupon_disc : 0,
        card_disc : 0,
        reserves_used: 1000,
        kurly_cash : 0
    }

    //총 실 결제 금액
    let tot_pay_price
        = tot_prod_price - (payDicount.card_disc+payDicount.coupon_disc+payDicount.card_disc+payDicount.reserves_used+payDicount.kurly_cash);

    //최종적으로 ajax로 보낼 객체
    let totalProducts = {
        tot_prod_name:"샌드위치 외 1개",
        selectedItems: selectedItems, // 선택된 상품 상세
        tot_ord_qty:tot_ord_qty, //총 수량
        tot_prod_price:tot_prod_price, //총 상품 구매 금액
        tot_pay_price:tot_pay_price //총 실 결제 금액
    }

    let paymentData = {
        totalProducts: totalProducts,
        payDiscount: payDicount
    }

    console.log(paymentData)

    $("#payBtn").click(function(){
        $.ajax({
            type:'POST',
            url: '/payment',
            headers:{"content-type": "application/json"},
            dataType:'text',
            data : JSON.stringify(paymentData),
            success: function(result){
                alert("✅ received = " +result);
                console.log(result);
            },
            error: function(){alert("error‼️")}
        });
        alert("the request is sent")
    });
});wq