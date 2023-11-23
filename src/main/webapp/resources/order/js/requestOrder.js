$(document).ready(function(){

    let ssss = {name : "sandwich", price:8000}; //샌드위치
    let cccc = {name : "chicken", price:8500}; //닭가슴살

    //장바구니를 통해 체크되어 넘어온 상품들
    let selectedItems
        = [{dealProductNo:ssss, quantity:1},
        {dealProductNo: cccc, quantity: 2}];


    let totalProductPrice = 0; //총 상품 구매 금액
    let totalOrderQuantity = 0; //총 수량

    for(let item of selectedItems){
        //총 상품 구매 금액 계산
        totalProductPrice += item.quantity * item.dealProductNo.price;

        //총 수량 계산
        totalOrderQuantity += item.quantity;
    }

    console.log(totalProductPrice);
    console.log(totalOrderQuantity);

    //최종적으로 ajax로 보낼 객체
    let totalProducts = {
        totalProductName:"샌드위치 외 1개",
        selectedItems: selectedItems, // 선택된 상품 상세
        totalOrderQuantity:totalOrderQuantity, //총 수량
        totalProductPrice:totalProductPrice //총 상품 구매 금액
    }

    $("#payBtn").click(function(){
        $.ajax({
            type:'POST',
            url: ''
        })
    })


})