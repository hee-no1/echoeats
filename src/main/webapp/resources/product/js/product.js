let cartProduct = productList;

const productAjax = function (action, productQuantity, discountPrice, productQuantityHtml, i) {
    console.log(productList)
    // 총 상품 가격
    let totalPrice = document.querySelector('.css-x4cdgl');

    if (action === 'increase') {
        productList[i].qty = parseInt(productQuantity) + 1
    } else if (action === 'decrease') {
        productList[i].qty = parseInt(productQuantity) - 1
    }

    $.ajax({
        type: 'POST',
        url: '/cart/ProductCalculation',
        headers: {
            "content-type": "application/json"
        },
        dataType: 'json',
        data: JSON.stringify(productList),
        success: function (result) {
            cartProduct = result;
            let totalProductPrice = 0;

            for (let j = 0; j < cartProduct.length; j++) {
                totalProductPrice += cartProduct[j].total_price;
            }
            totalPrice.textContent = totalProductPrice.toLocaleString();
            let {qty} = cartProduct[i];
            productQuantityHtml.textContent = qty;
        },
        error: function () {
            alert("error");
        }
    })
}











// 장바구니에 상품 담는 기능
const saveProductAjax = function () {

    console.log("cart",cartProduct);
    $.ajax({
        type: 'POST',
        url: '/cart/saveProduct',
        headers: {
            "content-type": "application/json"
        },
        dataType: 'text',
        data: JSON.stringify(cartProduct),
        success: function () {
            alert("장바구니에 담겼습니다.");
        },
        error: function () {
            alert("장바구니 에러.");
        }
    })
}












$(document).ready(function () {

    // 로그인 버튼 누를 시 로그인 화면으로
    const getLogin = document.querySelector('.getLogin');
    if (getLogin !== null) {
        getLogin.addEventListener('click', function () {
            window.location.href = '/member/login_form';
        })
    }

    // 상품 수량 올리기
    const upButton = document.querySelectorAll('.css-18y6jr4')

    for (let i = 0; i < upButton.length; i++) {
        upButton[i].addEventListener("click", function () {

            let productQuantity = document.querySelectorAll('.count')[i].textContent
            let productQuantityHtml = document.querySelectorAll('.count')[i];
            let discountPrice = document.querySelectorAll('.css-gqkxk8')[i].textContent.replace(/\D/g, '');
            console.log(discountPrice)
            productAjax('increase', productQuantity, discountPrice, productQuantityHtml, i);
        })
    }

    // 상품 수량 내리기
    const downButton = document.querySelectorAll('.css-8azp8')

    for (let i = 0; i < downButton.length; i++) {
        downButton[i].addEventListener("click", function () {

            let productQuantity = document.querySelectorAll('.count')[i].textContent
            let productQuantityHtml = document.querySelectorAll('.count')[i];
            let discountPrice = document.querySelectorAll('.css-gqkxk8')[i].textContent.replace(/\D/g, '');

            if (downButton.length === 1) {
                if (productQuantity === '1') {
                    return;
                }
            } else {
                if (productQuantity === '0') {
                    return;
                }
            }

            productAjax('decrease', productQuantity, discountPrice, productQuantityHtml, i);
        })
    }


    // 장바구니 담기 버튼
    const cartButton = document.querySelector(".cart-button")

    cartButton.addEventListener('click', function () {
        console.log("1111", cartProduct)
        let qtyCount = 0;
        for (let i = 0; i < cartProduct.length; i++) {
            if (cartProduct[i].qty === 0) {
                qtyCount++
            }
        }

        if (qtyCount !== cartProduct.length) {
            saveProductAjax();
        }
    })


    // 상품 상세 페이지
    const button_description = document.getElementsByClassName('efe6b6j0')[0];
    const button_detail = document.getElementsByClassName('efe6b6j0')[1];
    const button_review = document.getElementsByClassName('efe6b6j0')[2];
    const button_inquiry = document.getElementsByClassName('efe6b6j0')[3];
    const description = document.getElementById('description');
    const detail = document.getElementById('detail');
    const review = document.getElementById('review');
    const inquiry = document.getElementById('inquiry');

    button_description.addEventListener('click', () => {
        window.scrollBy({top: description.getBoundingClientRect().top, behavior: 'smooth'});

    });
    button_detail.addEventListener('click', () => {
        window.scrollBy({top: detail.getBoundingClientRect().top, behavior: 'smooth'});

    });
    button_review.addEventListener('click', () => {
        window.scrollBy({top: review.getBoundingClientRect().top, behavior: 'smooth'});

    });
    button_inquiry.addEventListener('click', () => {
        window.scrollBy({top: inquiry.getBoundingClientRect().top, behavior: 'smooth'});

    });
});