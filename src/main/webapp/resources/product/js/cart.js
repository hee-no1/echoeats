const showHideButton = document.querySelector(".css-lvqq7y");

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


