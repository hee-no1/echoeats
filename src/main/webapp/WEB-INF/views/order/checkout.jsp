<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<spring:eval expression="@prop['api.impId']" var="impId" />
<%@ page session="false"%>
<html>
<head>
<meta charset="UTF-8">
<title>checkout</title>
<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
<script src="https://cdn.iamport.kr/v1/iamport.js"></script>
<script type="text/javascript" charset="utf-8">
	sessionStorage.setItem("contextpath", "${pageContext.request.contextPath}");
</script>
<script>
	  $(function(){
		  let msg = "${msg}";
		  if (msg.trim() !== "") { console.log(msg); }
		  
		  $(".btnPay").on("click",payProc);
		  $(".btnRfd").on("click",payCancel);
	  });
	  // context_path 가져오기
	  var ctx = getContextPath();
	  function getContextPath() {
		  console.log("contextpath = "+sessionStorage.getItem("contextpath"));
		  return sessionStorage.getItem("contextpath");
	  }
	  let payDto;
	  // 장바구니에서 주문서정보를 가져온다
	  let checkout = {
		  prdList: [
		        { id: 1, name: "Product1", price: 20, quantity: 2 },
		        { id: 2, name: "Product2", price: 30, quantity: 1 },
		        { id: 3, name: 'Product3', price: 50, quantity: 3 },
		    ],
		  member: { id: "123", name: "정석 코딩", ph: "000-0000-0000", 
			  email: "test@test.com", dlvyAddr: "서울 YMCA", dlvyRep:"문앞에 놓고가주세요" },
		  pay_way: "kakao"
      };
	  // 결제 과정 
	  const payProc = () => {
		  prevVerify()
		  .then(function(result) {
			  if(result){
				  payment();
			  }else
				  alert("비정상적인 결제가 확인되었습니다1");
		  }).catch(function(err) {
		    console.log(err);
		  })
	  };
	  // 총 상품구매금액과 DB Table의 해당상품의 금액을 비교
	  const prevVerify = () => {
		  return new Promise(function(resolve, reject) {
		  console.log("prevVerify");
		  $.ajax({
	            url: ctx + '/payment/verify/prev',
	            type: 'POST',
	            headers : { "content-type": "application/json"},
	            data : JSON.stringify(checkout.prdList),
	            success: function (result) {
	                console.log('/verify/prev OK', result);
	                resolve(result);
	            },
	            error: function () {
	            	console.log('/verify/prev ERR');
	            	reject(false);
	            }
	        });
		  })
	  };
	  // 결제(주문테이블생성, 결제api호출, 결제실패성공에따른 테이블 insert,update )
	  const payment = () => {
		  console.log("payment");
		  //1. 주문 주문상세 주문이력 테이블 insert
		  orderInsert()
		  .then(function(result) {
			//2. 결제 API 호출
			openPayAPI();
		  }).catch(function(err) {
		    console.log(err);
		  })
		  
		  //3. 결제 API 성공 실패에 따른 주문 주문상세 주문이력 테이블 update + 결제 결제이력 테이블 insert
	  };
		// 주문(주문,주문상세,주문이력 insert)
	  const orderInsert = () => {
		  return new Promise(function(resolve, reject) {
			  console.log("orderInsert");
			  $.ajax({
		            url: ctx + '/order/order',
		            type: 'POST',
		            headers : { "content-type": "application/json"},
		            data : JSON.stringify(checkout),
		            success: function (result) {
		                console.log('/order/order OK', result);
		                checkout = result;
		                resolve(result);
		            },
		            error: function () {
		            	console.log('/order/order ERR');
		            	reject(false);
		            }
		        });
			  })
	};
		 // 결제 api 호출
	const openPayAPI = () => {
		var impId = '${impId}';
		IMP.init(impId);
		IMP.request_pay({
			//pg: "kakaopay",
			pg: "tosspayments",
			pay_method: "card",
			amount: checkout.totPayPrice,
			name: checkout.totPrdName,
			merchant_uid: checkout.ord_id,
		}, function (rsp) {
			//alert("imp_uid: " + rsp.imp_uid); //ex) imp_592100262367 imp_480634238960
			const payCheck = new Promise(function(resolve, reject) {
			    $.ajax({
			        type: 'POST',
			        url: ctx + '/verify/' + rsp.imp_uid,
			        headers: { "content-type": "application/json" },
			        //dataType: 'text',
			        data: JSON.stringify({imp_uid: rsp.imp_uid }),
			        success: function(result) {
			            console.log(result);
			            resolve(result);
			        },
			        error: function() {
			            console.error("payCheck Erorr");
			            reject("Payment failed");
			        }
			    });
			});
			payCheck.then(function(result) {
			    if (rsp.success) {
			    	// 결제api후 성공 실패
			        payFinish(result,'CPD'); // completed
			    } else {
			        alert("Payment failed. Error details: " + rsp.error_msg);
			        payFinish(result,'DCL'); // Declined 
			    }
			}).catch(function(error) {
			    alert(error);
			});
		});
	};
	//결제테이블 작성
	const payFinish = (payCheck,sts) => {
		console.log("payFinish");
		
 		payDto = {
			pay_id: payCheck.response.imp_uid,
            ord_id: payCheck.response.merchant_uid,
            pay_way_id: payCheck.response.paid_at,// 임시로넣음
            tot_prod_name: payCheck.response.name,
            tot_prod_price: payCheck.response.amount,
            tot_pay_price: payCheck.response.amount,
            pay_sts: sts, 
        };
 		const payWrite = new Promise(function(resolve, reject) {
 		$.ajax({
	            type:'POST',       // 요청 메서드
	            url: ctx+'/payment/payWrite',  // 요청 URI
	            headers : { "content-type": "application/json"}, // 요청 헤더
	            //dataType : 'text', // 전송받을 데이터의 타입
	            data : JSON.stringify(payDto),  // 서버로 전송할 데이터. stringify()로 직렬화 필요.
	            success : function(result){
	            	console.log(result);//PaymentWrite OK
	            	resolve(payDto);
	            },
	            error : function(){ alert("payFinish error"); reject("payWrite failed"); } // 에러가 발생했을 때, 호출될 함수
	        }); // $.ajax()
 		});
 		//결제테이블 insert
 		payWrite
 		.then(function(result) {
 			// 결제 후 검증
 			return nextVerify(result);
 		})
 		.then(function(result) {
 			if(!result){
 				payDto.pay_sts = 'CNC';
 				$.ajax({
 		            type:'POST',       // 요청 메서드
 		            url: ctx+'/payment/payModify',  // 요청 URI
 		            headers : { "content-type": "application/json"}, // 요청 헤더
 		            //dataType : 'text', // 전송받을 데이터의 타입
 		            data : JSON.stringify(payDto),  // 서버로 전송할 데이터. stringify()로 직렬화 필요.
 		            success : function(result){
 		            	console.log(result);//Payment CNC Write OK
 		            },
 		            error : function(){ alert("Payment CNC error"); } // 에러가 발생했을 때, 호출될 함수
 		        }); // $.ajax()
 				payCancel('비정상적인 결제가 확인되었습니다2');
 			}
		}).catch(function(error) {
		    alert(error);
		});
	};
	// 결제API 실결제금액 + 할인금액 과 DB Table의 해당상품의 금액을 비교
	const nextVerify = (payDto) => {
		return new Promise(function(resolve, reject) {
		  console.log("nextVerify");
		  $.ajax({
	            url: ctx + '/payment/verify/next',
	            type: 'POST',
	            headers : { "content-type": "application/json"},
	            data : JSON.stringify(payDto),
	            success: function (result) {
	                console.log('/verify/next OK', result);
	                resolve(result);
	            },
	            error: function () {
	            	console.log('/verify/next ERR');
	            	reject("nextVerify failed");
	            }
	        });// $.ajax()
		});
	  };
	// 결제취소 api
	const payCancel = (reanson) => {
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
			        data : JSON.stringify({
			            reason: reanson, // 가맹점 클라이언트로부터 받은 환불사유
			            access_token: accesstoken, // imp_uid를 환불 `unique key`로 입력
			            amount: payDto.tot_prod_price, // 가맹점 클라이언트로부터 받은 환불금액
			            checksum: payDto.tot_prod_price, // [권장] 환불 가능 금액 입력
			            merchant_uid: payDto.ord_id,
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
</script>
</head>
<body>
	<table>
		<tr>
			<c:forEach var="product" items="${checkout.prdList}">
				<tr>
					<td class="id">${product.id}</td>
					<td class="name">${product.name}</td>
					<td class="price">${product.price}</td>
					<td class="quantity">${product.quantity}</td>
				</tr>
			</c:forEach>
		<tr>
			<td>${checkout.member.name}</td>
			<td>${checkout.member.ph}</td>
			<td>${checkout.member.email}</td>
			<td>${checkout.member.dlvyAddr}</td>
			<td>${checkout.member.dlvyRep}</td>
		</tr>
	</table>
	<button class="btnPay">결제하기</button>
	<button class="btnRfd">환불하기</button>

	<script>
		
	</script>
	<%-- <script src="<c:url value='/resources/order/js/payment.js'/>"></script> --%>
=======
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="/resources/order/css/checkoutStyle.css" rel="stylesheet" type="text/css" />
</head>
<c:set var="member" value="${checkout.sampleMemberDto}" />
<c:set var="items" value="${checkout.selectedItems}" />


<body>
<div class="css-1ykiyus e146m4rf2">
    <div class="css-1uom1od e146m4rf0">
        <h2 class="css-10owlr e146m4rf1">주문서</h2>

<%--        주문상품--%>
        <div class="css-ixlb9s epvroj94">
        <div class="css-zo1i6f edbbr7c2"><h3 class="css-1ddzp0m edbbr7c1">주문 상품</h3>
            <button data-testid="fold-button" class="css-lvqq7y e17cst860">
                <svg width="30" height="30" viewBox="0 0 30 30" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><defs><path id="7a02qqg3ja" d="M11 12h9v9"></path></defs><g fill="none" fill-rule="evenodd"><path d="M0 0h30v30H0z"></path><use stroke="#333" stroke-width="2" stroke-linecap="square" transform="rotate(-45 15.5 16.5)" href="#7a02qqg3ja"></use></g></svg>
            </button></div>

            <div class="css-r6muhy e1fjdxoo1">${checkout.tot_prod_name}</div>

<%--         주문자 정보--%>
        <div class="css-12aowi2 edbbr7c2"><h3 class="css-1ddzp0m edbbr7c1">주문자 정보</h3></div>
            <div id="kurly-orderer-info" class="css-shoa2s e1vfdada3"><div class="css-yazyg9 e150alo82"><span class="css-ln1csn e150alo81">보내는 분</span><div class="css-82a6rk e150alo80">
            <div class="css-t6o2y8 e1vfdada2">${member.mem_name}</div></div></div>

            <div class="css-yazyg9 e150alo82"><span class="css-ln1csn e150alo81">휴대폰</span>
            <div class="css-82a6rk e150alo80">
            <div class="css-t6o2y8 e1vfdada2">${member.mem_phone}</div></div></div>

            <div class="css-yazyg9 e150alo82"><span class="css-ln1csn e150alo81">이메일</span>
            <div class="css-82a6rk e150alo80">${member.mem_email}
            <div class="css-1r0yqr6 e1vfdada1"><p class="css-i7dt79 e1vfdada0">이메일을 통해 주문처리과정을 보내드립니다.</p><p class="css-i7dt79 e1vfdada0">정보 변경은 마이컬리 &gt; 개인정보 수정 메뉴에서 가능합니다.</p></div></div></div></div>

<%--          배송정보--%>
        <div id="shipping-container">
            <div class="css-12aowi2 edbbr7c2"><h3 class="css-1ddzp0m edbbr7c1">배송 정보</h3>
                <div class="css-bjn8wh er4y7r83"><a class="css-orhu8r er4y7r82">배송지 변경 안내<span class="css-gwort8 er4y7r81"></span></a>
                    <div width="188" height="60" class="css-1k2fiq3 ev65imb2">
                        <div class="css-82a6rk ev65imb1"><span class="css-2s3epn er4y7r80">장바구니, 홈에서</span><span class="css-4zleql er4y7r80">배송지를 변경할 수 있어요</span></div><button class="css-157xhr7 ev65imb0"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16" fill="none"><path d="M12.6154 12.8154L3 3" stroke="#fff" stroke-linecap="round"></path><path d="M3 12.8154L12.6242 3" stroke="#fff" stroke-linecap="round"></path></svg></button></div></div></div>
            <div class="css-5d6nlw e17yjk9v4">
                <div class="css-1gshg9u e150alo82"><span class="css-ln1csn e150alo81">배송지</span>
                    <div class="css-82a6rk e150alo80"><span class="css-3uygi7 e17yjk9v3">기본배송지</span><p class="css-36j4vu e17yjk9v2">서울 종로구 종로 69 (서울 YMCA) 5층 522호</p><div class="css-iqoq9n e17yjk9v0"><button class="css-1xky6jf e4nu7ef3" type="button" width="60" height="30" radius="3"><span class="css-nytqmg e4nu7ef1">변경</span></button></div></div></div></div>
            <div id="checkout-shipping-details" class="css-1y0xj4c e1pxan881">
                <div class="css-kc45zq e150alo82"><span class="css-ln1csn e150alo81">배송 요청사항</span><div class="css-82a6rk e150alo80"><span class="css-11y0tcn efthce41">문 앞</span><span class="css-bhczxb efthce40"></span><span class="css-11y0tcn efthce41">자유 출입 가능<span></span><span></span></span>
                    <div class="css-rqc9f e14u1xpe0">${member.mem_name}, ${member.mem_email}</div>
                    <div class="css-iqoq9n e1pxan880"><button class="css-117jo2j e4nu7ef3" type="button" width="60" height="30" radius="3"><span class="css-nytqmg e4nu7ef1">수정</span></button></div></div></div></div></div>
<div></div>
            <div class="css-4c6dm7 epvroj93">
                <div class="css-134fy6p epvroj92">
                    <div class="css-12aowi2 edbbr7c2">
                        <h3 class="css-1ddzp0m edbbr7c1">쿠폰</h3></div>
                    <div class="css-1gshg9u e150alo82"><span class="css-ln1csn e150alo81">쿠폰 적용</span>
                        <div class="css-82a6rk e150alo80">
                            <div class="css-1uj3loi e1brt3tk0"><button class="css-1hjvafa e1wlhyxd1">사용가능 쿠폰 1장 / 전체 1장<span class="css-1e56lav e1wlhyxd0"><span rotate="0" class="css-13gazkp ebkt7i80"></span></span></button></div><button type="button" class="css-y9957 e1rx731f1"><span class="css-s5xdrg e1rx731f0">쿠폰 사용 문의 (카카오톡) <span class="css-1q6xk2g e1563em20"></span></span></button>
                            <div class="css-17pnhmt eggaj260"><button class="css-18yu7bm ehhfrwe0"><span style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img alt="PC 주문서 컬리멤버스 쿠폰하단" src="https://product-image.kurly.com/banner/da-banner/dc654fb0-dc6e-4197-920d-651af43dcf84.png" decoding="async" data-nimg="fill" class="css-0" sizes="100vw" srcset="https://product-image.kurly.com/banner/da-banner/dc654fb0-dc6e-4197-920d-651af43dcf84.png 640w, https://product-image.kurly.com/banner/da-banner/dc654fb0-dc6e-4197-920d-651af43dcf84.png 750w, https://product-image.kurly.com/banner/da-banner/dc654fb0-dc6e-4197-920d-651af43dcf84.png 828w, https://product-image.kurly.com/banner/da-banner/dc654fb0-dc6e-4197-920d-651af43dcf84.png 1080w, https://product-image.kurly.com/banner/da-banner/dc654fb0-dc6e-4197-920d-651af43dcf84.png 1200w, https://product-image.kurly.com/banner/da-banner/dc654fb0-dc6e-4197-920d-651af43dcf84.png 1920w, https://product-image.kurly.com/banner/da-banner/dc654fb0-dc6e-4197-920d-651af43dcf84.png 2048w, https://product-image.kurly.com/banner/da-banner/dc654fb0-dc6e-4197-920d-651af43dcf84.png 3840w" style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%;"></span></button></div></div></div>

                    <div class="css-17t7y0p edbbr7c2"><h3 class="css-1ddzp0m edbbr7c1">적립금</h3><svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M6.9932 0.700195C8.73506 0.700195 10.3116 1.40557 11.4528 2.54565C12.5943 3.68594 13.3002 5.26111 13.3002 7.0002C13.3002 8.73928 12.5943 10.3145 11.4528 11.4547C10.3116 12.5948 8.73506 13.3002 6.9932 13.3002C5.25512 13.3002 3.68233 12.595 2.54387 11.4554C1.40457 10.315 0.700195 8.73952 0.700195 7.0002C0.700195 5.26087 1.40457 3.68541 2.54387 2.54497C3.68233 1.40537 5.25512 0.700195 6.9932 0.700195Z" stroke="#999" stroke-width="1.4"></path><path d="M4.5 5.21081H5.77027C5.81351 4.55135 6.26216 4.12973 6.95946 4.12973C7.64054 4.12973 8.09459 4.53514 8.09459 5.0973C8.09459 5.58784 7.90383 5.86944 7.35576 6.22524L7.1973 6.32432C6.45135 6.76216 6.13784 7.24865 6.18649 8.05946L6.19189 8.42703H7.44595V8.11892C7.44595 7.58378 7.64595 7.30811 8.35405 6.89189C9.08919 6.45405 9.5 5.87568 9.5 5.04865C9.5 3.85405 8.51081 3 7.02973 3C5.42432 3 4.54324 3.92973 4.5 5.21081ZM6.87838 11.0054C6.33784 11.0054 5.98108 10.6649 5.98108 10.1459C5.98108 9.62162 6.33784 9.28108 6.87838 9.28108C7.42973 9.28108 7.77568 9.62162 7.77568 10.1459C7.77568 10.6649 7.42973 11.0054 6.87838 11.0054Z" fill="#999"></path></svg></div><div class="css-pkhh3q e150alo82"><span class="css-ln1csn e150alo81">적립금∙컬리캐시</span><div class="css-82a6rk e150alo80"><div class="css-iptwzv e1gm2j0y9"><div class="css-1az0nid e1gm2j0y8"><span class="css-o5boot e1gm2j0y5">사용가능 잔액</span><span class="css-cp6cch e1gm2j0y4">326 <span class="css-o5boot e1gm2j0y5">원</span></span></div><div class="css-o65dj0 e1gm2j0y7"><div class="css-12a5ry9 e1gm2j0y6"><span class="css-5uvmcx e1gm2j0y3"><svg width="16" height="20" viewBox="0 0 16 20" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M1 5H0V10V11H1H6V10H1V5Z" fill="#ddd"></path></svg>적립금</span>326 원</div>
                    <div class="css-1s0y7rc e1gm2j0y2"><div class="css-16axygr e1uzxhvi6"><div height="44" class="css-t7kbxx e1uzxhvi3"><input data-testid="input-box" name="point-usage" placeholder="0" type="text" height="44" class="css-1quw3ub e1uzxhvi2" value="0"></div></div><button class="css-197i5eo e4nu7ef3" type="button" width="100" height="44" radius="3"><span class="css-nytqmg e4nu7ef1">모두사용</span></button></div><div class="css-54a39b e1gm2j0y1">사용 시 적립금이 먼저 소진됩니다</div><div class="css-1waf5ak ezr038b1"></div></div></div><div class="css-12aowi2 edbbr7c2"><h3 class="css-1ddzp0m edbbr7c1">결제 수단</h3></div><div class="css-1gshg9u e150alo82"><span class="css-ln1csn e150alo81">결제수단 선택</span><div class="css-82a6rk e150alo80"><div class="css-gd125q e4nb37r1">
                    <div><div class="css-18dvwsu ef0cmoa0"><button type="button" class="css-1fecctx ehlmjxl0" data-testid="kakao-pay-button" color="#f6e500"><img class="css-1wbfblw e1ewacwr0" src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNTAiIGhlaWdodD0iMjAiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CiAgICA8ZyBmaWxsPSIjMDAwIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPgogICAgICAgIDxwYXRoIGQ9Ik03LjUxNSAyLjhDMy4zNjUgMi44IDAgNS40NDUgMCA4LjcwN2MwIDEuOTM4IDEuMTg3IDMuNjU3IDMuMDIxIDQuNzM0LS4xOTEuNzY4LS42ODQgMi43NDItLjc1IDIuOTU3LS4wODMuMjY2LS4xMDMgMS4wNDYuNzAyLjUxMi42MzQtLjQyIDIuNDc5LTEuNyAzLjU3LTIuMzQ4LjMxOC4wMzMuNjQyLjA1MS45NzIuMDUxIDQuMTUgMCA3LjUxNS0yLjY0NCA3LjUxNS01LjkwNiAwLTMuMjYyLTMuMzY1LTUuOTA3LTcuNTE1LTUuOTA3TTIxLjA0OCA0LjExM2MxLjUxNy0xLjMxMyAzLjQ2OC0xLjUwOCA0Ljg5My0uNTg1IDEuNzA3IDEuMTA2IDIuMTY4IDIuNzU0IDIuMTY4IDQuODkyIDAgMi40LTEuMTE1IDMuOTY4LTEuNjQyIDQuNDYtLjUyNi40OTMtMS42NzMgMS4yOTItMi44OCAxLjI5MkgyMS40MnYzLjc4NGgtMi45MTFWMy4yODJoMi4xMDZzLjI2LjU0OC40MzMuODN6bTEuOTUxIDEuMTUzYy0uNjk3IDAtMS4xNTMuMTc3LTEuNTMzLjQ3N3Y2LjMwNmgxLjEzOGMuNTU4IDAgMi41NDctLjUwNyAyLjU0Ny0zLjM4MyAwLS42NzctLjA5LTEuMzg1LS4yNzgtMS45LS4zNTctLjk3Ny0xLjI0Ny0xLjUtMS44NzQtMS41ek0zMy44MTcgMy4wNDZjMi4wODUgMCAyLjk0Mi43MTggMy40NDggMS4zNTQuNDgxLjYwNC44NjIgMS40OTcuODYyIDIuOHY2LjY4aC0yLjI2di0uOTU0cy0uNDQyLjQyLTEuMzc5LjgzMWMtLjk4LjQzLTIuNjUzLjg3Ny00LjA0MS0uMTg0LTEuMzk3LTEuMDY4LTEuMi0zLjQ3MS0uODUyLTQuMTU0LjQ4LS45MzggMS4zNjMtMS45NjggMy43MTYtMS45NjhoMi4wMjl2LS45MDhjMC0uNTU0LS41ODMtMS4xMDctMS43My0xLjEwNy0xLjI4IDAtMS44MzMuMTkyLTIuODE3LjYzNWwtLjk5Ni0xLjk0M3MxLjQ5Ni0xLjA4MiA0LjAyLTEuMDgyem0xLjQ3NyA2LjI1aC0xLjQxNWMtLjU5OSAwLTEuOTYxLjIxNi0xLjk2MSAxLjQ3NyAwIDEuMjgzIDEuMDkgMS4yNiAxLjQ0OCAxLjIzIDEuMDg5LS4wOTEgMS45MzgtLjc5NCAxLjkzOC0uNzk0bC0uMDEtMS45MTN6TTQ3LjA2MSAzLjA0NmwtMi4yOTEgOC4xMTEtMi41NC04LjExLTIuODQ5LjgyczMuNSA5LjM4MyAzLjYyNCA5Ljc4M2MuMTIzLjQtLjAwNS44NTgtLjI4IDEuMzIyLS4zNzEuNjMtMS44MjYgMi4wMy0xLjgyNiAyLjAzbDEuODc4IDEuNjYzcy44NTctLjY4OCAxLjc0NS0xLjc1NWMuNzQzLS44OTIgMS42MzYtMi44MyAxLjkzOC0zLjU3Ny44NTktMi4xMTkgMy40Mi05LjQ2NiAzLjQyLTkuNDY2bC0yLjgxOS0uODJ6Ii8+CiAgICA8L2c+Cjwvc3ZnPgo=" alt="카카오페이"></button></div>
                        <div class="css-18dvwsu ef0cmoa0"><button type="button" class="css-1wlyg0y ehlmjxl0" data-testid="creditcard-button">신용카드</button><button type="button" class="css-1wlyg0y ehlmjxl0" data-testid="simplepay-button"><span class="css-1oanxtx e106vb1p0">혜택</span>간편 결제</button><button type="button" class="css-1wlyg0y ehlmjxl0" data-testid="mobilians">휴대폰</button></div></div>
                    <ul class="css-wx42bm e4nb37r0"><li>※ 카카오페이, 토스, 네이버페이, 페이코 결제 시, 결제하신 수단으로만 환불되는 점 양해부탁드립니다.</li><li>※ 고객님은 안전거래를 위해 현금 등으로 결제시 저희 쇼핑몰에서 가입한 토스 페이먼츠의 구매안전(에스크로) 서비스를 이용하실 수 있습니다.</li></ul><div class="css-12aowi2 edbbr7c2"><h3 class="css-1ddzp0m edbbr7c1">개인정보 수집/제공</h3></div><div class="css-37px7p eh5sxvr5"><div class="css-vtybye eh5sxvr2"><span class="css-0 eh5sxvr1">개인정보 수집∙이용 및 처리 동의</span><button class="css-1q6jmiw eh5sxvr0">보기</button></div><div class="css-vtybye eh5sxvr2"><span class="css-0 eh5sxvr1">전자지급 결제대행 서비스 이용약관 동의</span><button class="css-1q6jmiw eh5sxvr0">보기</button></div><strong class="css-87vide eh5sxvr4">위 내용을 확인 하였으며 결제에 동의합니다.</strong></div><p class="css-1tak4sl eh5sxvr3">주문완료 상태일 경우에만 주문 취소가 가능하며, 상품 미배송 시 결제하신 수단으로 환불됩니다.</p><p class="css-1tak4sl eh5sxvr3">컬리 내 개별 판매자가 등록한 오픈마켓 상품의 경우 컬리는 통신판매중개자로서 주문, 품질, 교환/환불 등 의무와 책임을 부담하지 않습니다.</p><div class="css-1azakc el0c5j40"><button class="css-1lha8en e4nu7ef3" type="button" width="240" height="56" radius="3"><span class="css-nytqmg e4nu7ef1">69,900원 결제하기</span></button></div></div><div class="css-1rz7w0y epvroj91">
                <div class="css-9i9om4 epvroj90"><div class="css-6hge48 edbbr7c2"><h3 class="css-1ddzp0m edbbr7c1">결제 금액</h3></div>
                    <div class="css-hdnk73 e12lli9y0"><div class="css-1hvttuk eahaaoi12"><div class="css-1rmc3ba eahaaoi11">주문금액</div><div><span class="css-2pg1ps eahaaoi10"><span class="css-rfpchb eahaaoi3"></span>${checkout.tot_prod_price}</span><span class="css-158icaa eahaaoi8">원</span></div></div>
                        <div class="css-sk644d eahaaoi9"><div class="css-zjik7 eahaaoi0"><svg width="16" height="20" viewBox="0 0 16 20" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M1 5H0V10V11H1H6V10H1V5Z" fill="#ddd"></path></svg><div class="css-1rmc3ba eahaaoi11">상품금액</div></div><div><span class="css-2pg1ps eahaaoi10"><span class="css-rfpchb eahaaoi3"></span>${checkout.origin_prod_price}</span><span class="css-158icaa eahaaoi8">원</span></div></div>
                        <div class="css-sk644d eahaaoi9"><div class="css-zjik7 eahaaoi0"><svg width="16" height="20" viewBox="0 0 16 20" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M1 5H0V10V11H1H6V10H1V5Z" fill="#ddd"></path></svg><div class="css-1rmc3ba eahaaoi11">상품할인금액</div></div><div><span class="css-2pg1ps eahaaoi10"><span class="css-rfpchb eahaaoi3"></span>${checkout.tot_prod_price - checkout.origin_prod_price}</span><span class="css-158icaa eahaaoi8">원</span></div></div><div class="css-1bj5qaf eahaaoi12"><div class="css-1rmc3ba eahaaoi11">배송비</div><div><span class="css-2pg1ps eahaaoi10"><span class="css-rfpchb eahaaoi3"></span>${orderDto.dlvy_fee}</span><span class="css-158icaa eahaaoi8">원</span></div></div><div class="css-1bj5qaf eahaaoi12"><div class="css-1rmc3ba eahaaoi11">쿠폰할인</div><div class="css-0"><span class="css-2pg1ps eahaaoi10"><span class="css-rfpchb eahaaoi3"></span>0</span><span class="css-158icaa eahaaoi8">원</span></div></div><div class="css-1bj5qaf eahaaoi12"><div class="css-1rmc3ba eahaaoi11">카드즉시할인</div><div class="css-37wf0k"><span class="css-2pg1ps eahaaoi10"><span class="css-rfpchb eahaaoi3"></span>0</span><span class="css-158icaa eahaaoi8">원</span></div></div><div class="css-1hvttuk eahaaoi12"><div class="css-1rmc3ba eahaaoi11">적립금 ∙ 컬리캐시</div><div><span class="css-2pg1ps eahaaoi10"><span class="css-rfpchb eahaaoi3"></span>0</span><span class="css-158icaa eahaaoi8">원</span></div></div><div class="css-sk644d eahaaoi9"><div class="css-zjik7 eahaaoi0"><svg width="16" height="20" viewBox="0 0 16 20" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M1 5H0V10V11H1H6V10H1V5Z" fill="#ddd"></path></svg><div class="css-1rmc3ba eahaaoi11">적립금</div></div><div><span class="css-2pg1ps eahaaoi10"><span class="css-rfpchb eahaaoi3"></span>0</span><span class="css-158icaa eahaaoi8">원</span></div></div><div class="css-sk644d eahaaoi9"><div class="css-zjik7 eahaaoi0"><svg width="16" height="20" viewBox="0 0 16 20" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M1 5H0V10V11H1H6V10H1V5Z" fill="#ddd"></path></svg><div class="css-1rmc3ba eahaaoi11">컬리캐시</div></div><div><span class="css-2pg1ps eahaaoi10"><span class="css-rfpchb eahaaoi3"></span>0</span><span class="css-158icaa eahaaoi8">원</span></div></div><div class="css-1hgn7mh eahaaoi7"><div class="css-1rmc3ba eahaaoi11">최종결제금액</div><div><span class="css-2pg1ps eahaaoi10"><span class="css-rfpchb eahaaoi3"></span>69,900</span><span class="css-158icaa eahaaoi8">원</span></div></div>
                    <div class="css-i93a3v eahaaoi5"><span class="css-5lws00 eahaaoi4">적립</span>구매 시<div class="css-1xkempz eahaaoi6">3,495원(5%)</div></div><div class="css-1ujngs9 eahaaoi1">컬리카드 결제 시 최대 3,495원 추가 적립</div></div><button class="css-18yu7bm ehhfrwe0"><span style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img alt="PC 주문서 컬리멤버스 결제정보 하단" src="https://product-image.kurly.com/banner/da-banner/91f7f182-22c2-45fc-b5a8-ebbf605520ad.png" decoding="async" data-nimg="fill" class="css-0" style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%;" sizes="100vw" srcset="https://product-image.kurly.com/banner/da-banner/91f7f182-22c2-45fc-b5a8-ebbf605520ad.png 640w, https://product-image.kurly.com/banner/da-banner/91f7f182-22c2-45fc-b5a8-ebbf605520ad.png 750w, https://product-image.kurly.com/banner/da-banner/91f7f182-22c2-45fc-b5a8-ebbf605520ad.png 828w, https://product-image.kurly.com/banner/da-banner/91f7f182-22c2-45fc-b5a8-ebbf605520ad.png 1080w, https://product-image.kurly.com/banner/da-banner/91f7f182-22c2-45fc-b5a8-ebbf605520ad.png 1200w, https://product-image.kurly.com/banner/da-banner/91f7f182-22c2-45fc-b5a8-ebbf605520ad.png 1920w, https://product-image.kurly.com/banner/da-banner/91f7f182-22c2-45fc-b5a8-ebbf605520ad.png 2048w, https://product-image.kurly.com/banner/da-banner/91f7f182-22c2-45fc-b5a8-ebbf605520ad.png 3840w"></span></button></div></div></div>

>>>>>>> 635abd32a002d313efa63da67f9db0c835b4077b
</body>
</html>
