<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/resources/css/member/updateAddr_form.css">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>

<body>
<div id="__next" data-reactroot="">
    <div class="css-y8vf74 e1k348234">
        <h2 class="css-3ljxig e1k348233">배송지 수정</h2>
        <div class="css-1holwxw e1k348232">
            <div class="css-1n57dna e1uzxhvi6">
                <label for="addressDetail" class="css-c3g9of e1uzxhvi4" id="addr">${addressDto.addr}</label>
                <div height="44" class="css-t7kbxx e1uzxhvi3">
                    <input data-testid="input-box" id="addressDetail"
                           name="addressDetail" placeholder="나머지 주소를 입력해 주세요" type="text" height="44"
                           class="css-1quw3ub e1uzxhvi2" value="${addressDto.dtl_addr}">
                </div>
            </div>
            <div class="css-s480k4 e1uzxhvi6">
                <label for="name" class="css-c3g9of e1uzxhvi4">받으실 분</label>
                <div height="44" class="css-t7kbxx e1uzxhvi3">
                    <input data-testid="input-box" id="name" name="name"
                           placeholder="이름을 입력해 주세요" type="text" height="44"
                           class="css-1quw3ub e1uzxhvi2" value="${addressDto.name}">
                </div>
            </div>
            <div class="css-s480k4 e1uzxhvi6">
                <label for="mobile" class="css-c3g9of e1uzxhvi4">휴대폰</label>
                <div height="44" class="css-t7kbxx e1uzxhvi3">
                    <input data-testid="input-box" id="mobile"
                           name="mobile" placeholder="번호를 입력해 주세요" type="tel" height="44"
                           class="css-1quw3ub e1uzxhvi2" value="${addressDto.phone}">
                </div>
            </div>
        </div>
        <div type="recent" class="css-1y14kop e1k348230">
            <label class="css-1xkjo8k e1dcessg3">
                <input type="checkbox" class="css-agvwxo e1dcessg2">
                <div class="css-79hxr7 e1dcessg1">
                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path
                                d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                stroke="#ddd" fill="#fff"></path>
                        <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5"
                              stroke-linecap="round" stroke-linejoin="round"></path>
                    </svg>
                </div>
                <span>기본 배송지로 저장</span>
            </label>
            <button class="css-10voksq e4nu7ef3" type="button" height="44" radius="3" name="save_btn" id="${addressDto.addr_id}" onclick="sendData()">
                <span class="css-nytqmg e4nu7ef1">저장</span>
            </button>
            <button class="css-d85pyu e4nu7ef3" type="button" height="44" radius="3" onclick="deleteData()">
                <span class="css-nytqmg e4nu7ef1">삭제</span>
            </button>
        </div>
    </div>
</div>
<script>
    //주소 수정
    function sendData() {
        let addr_id = document.getElementsByName("save_btn")[0].id;
        let addr = document.getElementById("addr").innerText;
        let dtl_addr = document.getElementById("addressDetail").value;
        let name = document.getElementById("name").value;
        let phone = document.getElementById("mobile").value;

        let data = {
            addr_id: addr_id,
            addr: addr,
            dtl_addr: dtl_addr,
            name: name,
            phone: phone
        }
        $.ajax({
            type: "POST",
            url: "update",
            contentType: "application/json",
            data: JSON.stringify(data),
            dataType: "json",
            success: function(response) {
                console.log(response)
                alert("성공");
                window.close();
            },
            error: function(error){
                console.log(error);
            }
        })
    }
    //주소 삭제
    function deleteData(){

    }
</script>
</body>

</html>
