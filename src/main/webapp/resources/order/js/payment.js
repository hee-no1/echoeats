
var merchant_uid = "ORD20231119-000006";
//const buttonPay = document.querySelector(".btnPay");

// 주문번호 만들기
function createOrderNum(){
	const date = new Date();
	const year = date.getFullYear();
	const month = String(date.getMonth() + 1).padStart(2, "0");
	const day = String(date.getDate()).padStart(2, "0");
	
	let orderNum = year + month + day;
	for(let i=0;i<10;i++) {
		orderNum += Math.floor(Math.random() * 8);	
	}
	//alert("orderNum = " + orderNum);
	return orderNum;
}


// 카카오페이
const onClickPay = () => {
	IMP.request_pay({
		pg: "kakaopay",
		pay_method: "card",
		amount: "60000",
		name: "매운 라면 외 3개",
		//merchant_uid: createOrderNum(),
		merchant_uid: merchant_uid,
	}, function (rsp) {
	    if (rsp.success) {
    	//alert("rsp.success");
    	let order = {
	          imp_uid: rsp.imp_uid,            // 결제 고유번호
	          merchant_uid: rsp.merchant_uid   // 주문번호
	        }
		  $.ajax({
	            type:'POST',       // 요청 메서드
	            url: ctx+'/verify/'+rsp.imp_uid,  // 요청 URI
	            headers : { "content-type": "application/json"}, // 요청 헤더
	            //dataType : 'text', // 전송받을 데이터의 타입
	            data : JSON.stringify(order),  // 서버로 전송할 데이터. stringify()로 직렬화 필요.
	            success : function(result){
	            	console.log(result);
	                //alert("result.response.amount="+result.response.amount);// result는 서버가 전송한 데이터
	            },
	            error : function(){ alert("error") } // 에러가 발생했을 때, 호출될 함수
	        }); // $.ajax()
	    } else {
	      	alert("결제에 실패하였습니다. 에러 내용: " + rsp.error_msg);
	      	alert("결제에 실패하였습니다. 에러 내용: " + rsp.imp_uid);
	    }
	});
};

/*
// 토스
const onClickPay = () => {
	IMP.request_pay({
		pg: "tosspayments",
		pay_method: "card",
		amount: "60000",
		name: "매운 라면",
		merchant_uid: "ORD20231030-000001",
	});
};
*/
/*
const onClickPay = () => {
	IMP.request_pay({
		pg: "tosspayments",
		pay_method: "card",
		amount: "60000",
		name: "매운 라면",
		merchant_uid: "ORD20231030-000001",
		
		buyer_email: "test@test.com",
		buyer_name: "구매자이름",
		buyer_tel: "010-1234-5678",
		buyer_addr: "정석코딩",
		buyer_postcode: "123-456",
	}, function(response){ // 콜백함수
		const {status, err_msg} = response;
		if(err_msg) {
		alert(err_msg);
		}
		if(status === "paid") {
		const {imp_uid}=response;
		verifyPayment(imp_uid);
		}
	});
};
*/

const getCancelData = () => {
	let accesstoken;
	$.ajax({
        type:'POST',       // 요청 메서드
        url: ctx+'/verify/token',  // 요청 URI
        headers : { "content-type": "application/json"}, // 요청 헤더
        success : function(result){
        	console.log("accesstoken = "+result);
            accesstoken = result;
            
            $.ajax({
		        type:'POST',       // 요청 메서드
		        url: ctx+'/refundRequest',  // 요청 URI
		        headers : { "content-type": "application/json"}, // 요청 헤더
		        //dataType : 'text', // 전송받을 데이터의 타입
		        //String access_token, String merchant_uid, String reason
		        data : JSON.stringify({
		            reason: 'test', // 가맹점 클라이언트로부터 받은 환불사유
		            access_token: accesstoken, // imp_uid를 환불 `unique key`로 입력
		            amount: '60000', // 가맹점 클라이언트로부터 받은 환불금액
		            checksum: '60000', // [권장] 환불 가능 금액 입력
		            merchant_uid: merchant_uid,
		          }),
		        success : function(result){
		        	console.log("cancel = "+result);
		        },
		        error : function(){ alert("refund error") } // 에러가 발생했을 때, 호출될 함수
		    }); // $.ajax()
        },
        error : function(){ alert("accesstoken error") } // 에러가 발생했을 때, 호출될 함수
    }); // $.ajax()
};


$(".btnPay").on("click",onClickPay);
$(".btnRfd").on("click",getCancelData);
//buttonPay.addEventListener("click", onClickPay);