let product2 = {}

const productAjax = function (action) {

    // 상품 가격
    let discountPrice = document.querySelector('.css-gqkxk8').textContent.match(/\d+/)[0];
    // 상품 수량
    let productQuantity = document.querySelector('.count').textContent
    // 총 상품 가격 (html)
    let totalPrice = document.querySelector('.css-x4cdgl');
    // 상품 수량 (html)
    let productQuantityHtml = document.querySelector('.count');
    // 상품 수량 내리기 버튼
    let productCountDown = document.querySelector('.css-8azp8');

    let productQuantityAndPrice = {
        disc_price: discountPrice,
        quantity: 1
    }

    console.log(typeof discountPrice);

    if (action === 'increase') {
        productQuantityAndPrice.quantity = parseInt(productQuantity) + 1
    } else if (action === 'decrease') {
        productQuantityAndPrice.quantity = parseInt(productQuantity) - 1
    }

    $.ajax({
        type: 'POST',
        url: '/ProductCalculation',
        headers: {
            "content-type": "application/json"
        },
        dataType: 'json',
        data: JSON.stringify(productQuantityAndPrice),
        success: function (result) {
            // product2 = result;
            let {disc_price} = result;
            let {quantity} = result;
            totalPrice.textContent = disc_price;
            productQuantityHtml.textContent = quantity;

            productCountDown.disabled = quantity === '1';
        },
        error: function () {
            alert("error");
        }
    })
}

$(document).ready(function () {

    // 상품 수량 올리기
    document.querySelectorAll('.css-18y6jr4')[0].addEventListener("click", function () {
        console.log('수량 올리기 실행')
        productAjax('increase');
    })

    // 상품 수량 내리기
    document.querySelectorAll('.css-8azp8')[0].addEventListener("click", function () {

        let productQuantityCount = document.querySelectorAll('.count')[0].textContent
        if (productQuantityCount === '1') {
            return;
        }

        console.log('수량 내리기 실행')
        productAjax('decrease');
    })

})