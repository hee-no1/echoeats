const showHideButton = document.querySelector(".css-lvqq7y");
const goLoginButton = document.querySelector('.goLoginButton');
const allCartCheck = document.querySelectorAll('.allCartCheck');
const productCartCheck = document.querySelectorAll(".cartProductCheck");
const removeButton = document.querySelectorAll('.css-h5zdhc');
const cartOrderForm = document.querySelector('#cartOrderForm');
const orderButton = document.querySelector('.orderButton');
const goAddressPage = document.querySelectorAll('.addressButton');

// 전체선택 버튼 클릭시 모든 전체 버튼이 클릭되는 기능
const allCheck = function (value) {
    allCartCheck.forEach(function (checkbox) {
        checkbox.checked = value;
    })
}

// 전체 체크상태에서 상품 체크박스 해제시 전체선택 체크박스도 해제되는 기능
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

const addHiddenInput = function (i, index) {

    let newInput1 = document.createElement('input');
    let newInput2 = document.createElement('input');

    newInput1.type = 'hidden';
    newInput1.name = 'items[' + index +'].prod_id';
    newInput1.value = cartProduct[i].prod_id;
    newInput2.type = 'hidden';
    newInput2.name = 'items[' + index +'].qty';
    newInput2.value = cartProduct[i].qty;

    if (cartProduct[i].opt_prod_id !== null && cartProduct[i].opt_prod_id !== undefined) {
        let newInput3 = document.createElement('input');
        newInput3.type = 'hidden';
        newInput3.name = 'items[' + index +'].opt_prod_id';
        newInput3.value = cartProduct[i].opt_prod_id;

        return [newInput1, newInput2, newInput3];
    }
    return [newInput1, newInput2];
}

const makeInputHidden = function () {

    let hiddenInputs = cartOrderForm.querySelectorAll('input[type="hidden"]');
    if (hiddenInputs !== null) {
        hiddenInputs.forEach(function (input) {
            input.remove();
        })
    }

    let index = 0;
    for (let j = 0; j < productCartCheck.length; j++) {
        if (productCartCheck[j].checked) {
            const hiddenInput = addHiddenInput(j, index);
            for (let j = 0; j < hiddenInput.length; j++) {
                cartOrderForm.appendChild(hiddenInput[j])
            }
            index++;
        }
    }
}













// ajax 로 삭제하는 기능
// 장바구니 상품 삭제
// 체크박스 체크 된거 삭제기능 추가해야함
const productRemoveAjax = function (i) {

    let cartList = document.querySelectorAll('.css-1d6kgf6');
    let cartProductCheck = document.querySelectorAll('.cartProductCheck');

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
            cartProduct[i].qty = result.qty;
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

    // 배송지 변경 클릭 시 배송지 화면으로 이동
    if (goAddressPage !== null) {
        for (let i = 0; i < goAddressPage.length; i++) {
            goAddressPage[i].addEventListener('click', function () {
                window.location.href = '/address/'
            })
        }
    }












    // 전체체크박스 클릭 시 전체선택o + 전체선택x
    // 여기에 전체상품 가격 보여줘야함
    for (let i = 0; i < allCartCheck.length; i++) {
        allCartCheck[i].addEventListener('change', function () {

            productCartCheck.forEach(function (checkbox) {
                checkbox.checked = allCartCheck[i].checked;
            })
            allCheck(allCartCheck[i].checked);

            makeInputHidden();
        })
    }
    
    // 장바구니 상품 체크박스
    // 여기에 체크한 상품들 가격 보여줘야함
    for (let i = 0; i < productCartCheck.length; i++) {
        productCartCheck[i].addEventListener('change', function () {
            cartCheckbox();

            makeInputHidden();
        })
    }
    
    // 선택삭제 버튼
    // 체크한것들 전부 삭제해야함
    const selectRemoveButton = document.querySelectorAll('.css-0');

    for (let i = 0; i < selectRemoveButton.length; i++) {
        selectRemoveButton[i].addEventListener('click', function () {

        })
    }




















    // 장바구니 상품 주문하기 버튼
    if (orderButton !== null) {
        orderButton.addEventListener('click', function () {
            let hiddenInputs = cartOrderForm.querySelectorAll('input[type="hidden"]');
            if (hiddenInputs.length === null || hiddenInputs.length === 0) {
                alert('장바구니 상품을 선택해 주세요.')
                return;
            }
            orderButton.type = 'submit';
        })
    }

    // 상품 수량 올리기
    const upButton = document.querySelectorAll('.css-18y6jr4')

    for (let i = 0; i < upButton.length; i++) {
        upButton[i].addEventListener("click", function () {
            let productQuantity = document.querySelectorAll('.count')[i].textContent
            let productQuantityHtml = document.querySelectorAll('.count')[i];

            productCountAjax('increase', productQuantity, productQuantityHtml, i);

            makeInputHidden();
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

            makeInputHidden();
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
})





