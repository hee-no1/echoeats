if(entryway === '자유 출입 가능') {
    document.getElementById("front-door-free").checked = true;
}
else if(entryway === '경비실 호출'){
    document.getElementById("front-door-call-security-office-field").checked = true;
    document.getElementById("front-door-call-security-office-field").value = entryway_detail;
    $(".CALL_SECURITY_OFFICE").show();
}
else if(entryway === '기타'){
    document.getElementById("front-door-etc").checked = true;
    document.getElementById("front-door-etc-field").value = entryway_detail;
    $(".ETC").show();
} else {
    document.getElementById("front-door-password").checked = true;
    document.getElementById("front-door-password-field").value = entryway_detail;
    $(".PASSWORD").show();
}


//주문자 정보와 동일
let sameBuyerBtn = document.getElementById("sameBuyer");

if(name === mem_name && number === mem_phone){ //로드될때 주문자 정보와 동일하면 check되어있게
    sameBuyerBtn.checked = true;
}else{
    sameBuyerBtn.checked = false;
}
sameBuyerBtn.addEventListener('click',function(){
    if(sameBuyerBtn.checked){ //체크하면 주문자 정보와 동일하게 만들기
        document.getElementById("receiver-name").value = mem_name;
        document.getElementById("receiver-phone").value = mem_phone;
    }
});

let nameInputValue;
let phoneInputValue;

//받으실분 입력란
function nameValue(input){
    const inputValue = input.value;
    let result = inputValue.slice(0,20)
    input.value = result;

    //주문자 동일 버튼
    nameInputValue = (result === mem_name);
    if(nameInputValue && phoneInputValue){
        sameBuyerBtn.checked = true;
    }else{
        sameBuyerBtn.checked = false;
    }
}

//휴대폰 입력란
function phoneNumberValue(input){
    const inputValue = input.value;
    let result = inputValue.replace(/[^-0-9]/g,'').slice(0, 11);
    input.value = result;

    //주문자 동일 버튼
    phoneInputValue = (result === mem_phone);
    if(nameInputValue && phoneInputValue){
        sameBuyerBtn.checked = true;
    }else {
        sameBuyerBtn.checked = false;
    }
}


document.addEventListener("DOMContentLoaded", function() {

    let delNotes = {};

    //공동현관 출입방법 라디오 버튼
    $("input[name='frontDoorMethod']").change(function(){

        let value = $("input[name='frontDoorMethod']:checked").val();
        console.log(value)

        if(value === 'PASSWORD'){
            $(".PASSWORD").show();
            $(".CALL_SECURITY_OFFICE").hide();
            $(".ETC").hide();
        } else if(value === 'FREE'){
            $(".PASSWORD").hide();
            $(".CALL_SECURITY_OFFICE").hide();
            $(".ETC").hide();
        } else if(value === 'CALL_SECURITY_OFFICE'){
            $(".PASSWORD").hide();
            $(".CALL_SECURITY_OFFICE").show();
            $(".ETC").hide();
        } else{
            $(".PASSWORD").hide();
            $(".CALL_SECURITY_OFFICE").hide();
            $(".ETC").show();
        }
    });


    //취소 버튼 클릭했을 때
    document.getElementById("closeBtn").addEventListener('click', function(){
        window.close();
    });


    //저장 버튼을 클릭했을 때
    document.getElementById("submitBtn").addEventListener('click', function(){

        delNotes.name = document.getElementById("receiver-name").value; //받으실분
        delNotes.number = document.getElementById("receiver-phone").value; //휴대폰
        delNotes.place = document.getElementById("receive-place").value; //받으실 곳
        delNotes.entryway = document.querySelector("input[name='frontDoorMethod']:checked").value; //공동현관 출입 방법

        //공동현관 출입방법 detail
        if(delNotes.entryway === 'PASSWORD'){
            delNotes.entryway_detail = document.getElementById('front-door-password-field').value;
        }else if(delNotes.entryway === 'FREE'){
            delNotes.entryway_detail = '';
        }else if(delNotes.entryway === 'CALL_SECURITY_OFFICE'){
            delNotes.entryway_detail = document.getElementById('front-door-call-security-office-field').value;
        }else{
            delNotes.entryway_detail = document.getElementById('front-door-etc-field').value;
        }


        //유효성 검사
        if(delNotes.name === ''){
            alert("이름을 입력해주세요.");
        }
        else if(delNotes.number === ''){
            alert("휴대폰 번호를 입력해주세요.");
        }
        else if(!(/^010/.test(delNotes.number))){
            alert("휴대폰 번호를 정확히 입력해주세요.")
        }
        else if(delNotes.place === ''){
            alert("받으실 장소를 입력해주세요.")
        }
        else if(delNotes.entryway === ''){
            alert("공동현관 출입방법을 선택해주세요")
        }
        else{
            //클릭했을 때 데이터를 서버에 저장 및 ajax로 주문서 페이지로 전송
            ajax();
        }
    });


    let ajax = function(){
        $.ajax({
            type: 'POST',
            url: '/order/checkout/delNotes',
            headers:{"content-type":"application/json"},
            dataType:'json',
            data: JSON.stringify(delNotes),
            success: function(result){
                alert("success" + result);
                // 창 닫기
                window.close();
            },
            error: function() {
                alert("error")
            }
        })
    }
});


