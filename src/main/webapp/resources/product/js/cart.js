const showHideButton = document.querySelector(".css-lvqq7y");
const goLoginButton = document.querySelector('.goLoginButton');
const allCartCheck = document.querySelectorAll('.allCartCheck');
const productCartCheck = document.querySelectorAll(".cartProductCheck");
const removeButton = document.querySelectorAll('.css-h5zdhc');

let productCheck = document.querySelectorAll('.css-agvwxo');

const allCheck = function (value) {
    allCartCheck.forEach(function (checkbox) {
        checkbox.checked = value;
    })
}

const cartCheckbox = function () {
    let checkCount = 0;
    for (let i = 0; i < productCartCheck.length; i++) {
        if (productCartCheck[i].checked) {
            checkCount++;
            if (checkCount === productCartCheck.length) {
                allCheck(true);
            } else {
                allCheck(false);
            }
        }
    }
}







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








// 장바구니 상품 삭제 + (체크박스 된거 삭제기능 추가해야함)
const productRemoveAjax = function (i) {

    let cartList = document.querySelectorAll('.css-1d6kgf6');
    let cartProductCheck = document.querySelectorAll('.cartProductCheck');

    console.log('장바구니 리스트', cartProduct);
    console.log('장바구니 상품', cartProduct[i]);

    $.ajax({
        type: 'POST',
        url: '/cart/removeProduct',
        headers: {
            "content-type": "application/json"
        },
        dataType: 'text',
        data: JSON.stringify(cartProduct[i]),
        success: function () {
            cartList[i].style.display = 'none';
            cartProductCheck[i].checked = false;
            cartProductCheck[i].disabled = true;
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
            cartProduct[i].total_price = result.total_price;
            cartProduct[i].total_disc_price = result.total_disc_price;
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














    // 전체체크박스 클릭 시 전체선택o + 전체선택x
    // 여기에 ajax함수 넣어서 가격 보여줘야함
    for (let i = 0; i < allCartCheck.length; i++) {
        allCartCheck[i].addEventListener('change', function () {

            productCartCheck.forEach(function (checkbox) {
                checkbox.checked = allCartCheck[i].checked;
            })
            allCheck(allCartCheck[i].checked);
        })
    }
    
    // 장바구니 상품 체크박스
    // 여기에 ajax함수 넣어서 가격 보여줘야함
    for (let i = 0; i < productCartCheck.length; i++) {
        productCartCheck[i].addEventListener('change', function () {
            cartCheckbox();
        })
    }
    
    // 장바구니 x버튼으로 상품 삭제
    // 여러개 삭제할 시 기능 추가해야함
    for (let i = 0; i < removeButton.length; i++) {

        removeButton[i].addEventListener('click', function () {
            if (!confirm("정말로 삭제하시겠습니까?")) {
                return;
            }
            productRemoveAjax(i);
        })
    }

    // 장바구니 상품의 체크박스 누를 시 총 가격 계산 + 다시생각해봐야함
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





