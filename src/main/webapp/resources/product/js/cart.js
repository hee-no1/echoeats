const showHideButton = document.querySelector(".css-lvqq7y");
const goLoginButton = document.querySelector('.goLoginButton');
let productCheck = document.querySelectorAll('.css-agvwxo');

// 장바구니 상품 체크한 데이터 최종상품 가격에 반영
// 이거 해야함
const productCheckAjax = function () {

    $.ajax({
        type: 'POST',
        url: '/cart/saveProduct',
        headers: {
            "content-type": "application/json"
        },
        dataType: 'json',
        data: JSON.stringify(cartProduct),
        success: function () {
            alert("success");
        },
        error: function () {
            alert("error");
        }
    })
}






// 장바구니 상품 수량 계산
const productCountAjax = function (action, productQuantity, productQuantityHtml, i) {

    let totalDiscPrice = document.querySelectorAll('.css-zq4evb');
    let totalPrice = document.querySelectorAll('.css-cwmxfz');

    if (action === 'increase') {
        cartProduct[i].qty = parseInt(productQuantity) + 1
    } else if (action === 'decrease') {
        cartProduct[i].qty = parseInt(productQuantity) - 1
    }

    $.ajax({
        type: 'POST',
        url: '/cart/CartCalculation',
        headers: {
            "content-type": "application/json"
        },
        dataType: 'json',
        data: JSON.stringify(cartProduct[i]),
        success: function (result) {
            let {qty} = result;
            let {total_disc_price} = result;
            let {total_price} = result;
            productQuantityHtml.textContent = qty;
            totalDiscPrice[i].innerText = total_disc_price.toLocaleString() + "원";
            totalPrice[i].innerText = total_price.toLocaleString() + "원";
        },
        error: function () {
            alert("error");
        }
    })
}

$(document).ready(function () {

    // 장바구니 상품 리스트 화면 보이기 + 숨기기
    showHideButton.addEventListener("click", function () {

        const cartList = document.querySelectorAll(".cartList");
        const upDownButton = document.querySelector("use");

        cartList.forEach(cartProduct => {
            if (cartProduct.style.display === "none") {
                cartProduct.style.display = "";
                upDownButton.setAttribute("transform", "rotate(-45 15.5 16.5)")
            } else {
                cartProduct.style.display = "none"
                upDownButton.setAttribute("transform", "rotate(135 15.5 16.5)")

            }
        });
    })

    // 로그인 하기 버튼 클릭시 로그인 화면으로 이동
    if (goLoginButton !== null) {
        goLoginButton.addEventListener('click', function () {
            window.location.href = '/member/login_form';
        })
    }




















    // 장바구니 상품의 체크박스 누를 시 총 가격 계산
    for (let i = 0; i < productCheck.length; i++) {
        productCheck[i].addEventListener('change', function () {
            // productCheckAjax();
        })
    }























    // 상품 수량 올리기
    const upButton = document.querySelectorAll('.css-18y6jr4')

    for (let i = 0; i < upButton.length; i++) {
        upButton[i].addEventListener("click", function () {
            let productQuantity = document.querySelectorAll('.count')[i].textContent
            let productQuantityHtml = document.querySelectorAll('.count')[i];

            productCountAjax('increase', productQuantity, productQuantityHtml, i);
        })
    }

    // 상품 수량 내리기
    const downButton = document.querySelectorAll('.css-8azp8')

    for (let i = 0; i < downButton.length; i++) {
        downButton[i].addEventListener("click", function () {

            let productQuantity = document.querySelectorAll('.count')[i].textContent
            let productQuantityHtml = document.querySelectorAll('.count')[i];

            if (productQuantity === '1') {
                return;
            }

            productCountAjax('decrease', productQuantity, productQuantityHtml, i);
        })
    }

})





