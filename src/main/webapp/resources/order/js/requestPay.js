IMP.init("imp68285163");

const button = document.querySelector("button");

/*
// 카카오페이
const onClickPay = () => {
	IMP.request_pay({
		pg: "kakaopay",
		pay_method: "card",
		amount: "60000",
		name: "매운 라면",
		merchant_uid: "ORD20231030-000001",
	});
};
*/

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

const onClickPay = () => {
	IMP.request_pay({
		pg: "tosspayments",
		pay_method: "card",
		amount: "60000",
		name: "매운 라면",
		merchant_uid: "ORD20231030-000002",
	}, function (rsp) {
	    if (rsp.success) {
	      // 결제 성공 시: 결제 승인 또는 가상계좌 발급에 성공한 경우
	      // jQuery로 HTTP 요청
	      jQuery.ajax({
	        url: "{서버의 결제 정보를 받는 가맹점 endpoint}", 
	        method: "POST",
	        headers: { "Content-Type": "application/json" },
	        data: {
	          imp_uid: rsp.imp_uid,            // 결제 고유번호
	          merchant_uid: rsp.merchant_uid   // 주문번호
	        }
	      }).done(function (data) {
	        // 가맹점 서버 결제 API 성공시 로직
	        alert("결제에 성공하였습니다.");
	      })
	    } else {
	      alert("결제에 실패하였습니다. 에러 내용: " + rsp.error_msg);
	    }
	});
};


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

button.addEventListener("click", onClickPay);