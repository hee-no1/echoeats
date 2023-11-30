$(document).ready(function(){
    //장바구니 임의로 구현
    let selectedItems
        = [{prod_id: 1, opt_prod_id: '1a', qty:2},
        {prod_id: 1, opt_prod_id: '1b', qty: 1},
        {prod_id: 2, qty: 3}];

    $("#orderBtn").click(function(){
        $.ajax({
            type:'POST',
            url: '/order/checkout',
            headers:{'content-type':'application/json'},
            dataType:'text',
            data: JSON.stringify(selectedItems),
        })
    })
})