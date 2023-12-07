<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <title>mypageOrder</title>
		<link rel="stylesheet" href="/resources/product/css/header-css.css">
		<link rel="stylesheet" href="/resources/product/css/footer.css">
		<link rel="stylesheet" href="/resources/order/css/mypageOrder.css">
        <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
        <script>
        $(function(){
            $('.content').html(
                '<div class="css-j0lifa ed9qr673"><div class="css-fhxb3m ed9qr672">'+
                    '<h2 class="css-1268zpe ed9qr671">주문 내역 상세</h2></div></div>'+
                    '<div class="css-12umaoq eci1ktw3"><span style="box-sizing: border-box; display: inline-block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: relative; max-width: 100%;">'+
                        '<span style="box-sizing: border-box; display: block; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; max-width: 100%;">'+
                            '<img alt="" aria-hidden="true" src="data:image/svg+xml,%3csvg%20xmlns=%27http://www.w3.org/2000/svg%27%20version=%271.1%27%20width=%2760%27%20height=%2760%27/%3e" style="display: block; max-width: 100%; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px;"></span>'+
                            '<img alt="completedDeliveryImage" srcset="https://dos-img.kurly.com/delivery-complete/2023-11-19/59313f5a-4bdd-4fa2-8e61-6a7df1ee8db8.jpg 1x, https://dos-img.kurly.com/delivery-complete/2023-11-19/59313f5a-4bdd-4fa2-8e61-6a7df1ee8db8.jpg 2x" src="https://dos-img.kurly.com/delivery-complete/2023-11-19/59313f5a-4bdd-4fa2-8e61-6a7df1ee8db8.jpg" decoding="async" data-nimg="intrinsic" class="css-0" style="border-radius: 4px; cursor: pointer; position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover; object-position: center center;"></span>'+
                            '<div class="css-cp6cch eci1ktw1" style="margin-left: 20px;"><span class="css-1pdt6og eci1ktw2"><span>11/19(일)</span> 배송 완료되었습니다.</span><p class="css-1l950qo eci1ktw0">배송완료 시간 03:50</p></div></div>'+
                            '<div class="css-1bsokvi e1jm6dy15"><h3 class="css-yi2ox5 e1jm6dy14">주문번호 <span class="css-1qei3w8 e96hsmj0">2324322320175</span></h3>'+
                                '<span class="css-1mlk737 e1jm6dy12">배송 또는 상품에 문제가 있나요?<a href="/mypage/inquiry/list" class="css-1s2o3jp e1jm6dy11"> 1:1 문의<img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iOSIgaGVpZ2h0PSIxOCIgdmlld0JveD0iMCAwIDkgMTgiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CiAgICA8cGF0aCBkPSJtMiA0IDUgNS01IDUiIHN0cm9rZT0iIzVGMDA4MCIgc3Ryb2tlLXdpZHRoPSIxLjMiIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+Cjwvc3ZnPgo=" alt="purpleArrowRight" class="e1jm6dy10 css-cb2xrd eflljbi0"></a></span></div>'+
                                '<div class="css-mrxscg ecmuszp10"><img src="https://img-cf.kurly.com/cdn-cgi/image/width=120,height=156,fit=crop,quality=85/shop/data/goods/1653040871523l0.jpg" alt="[킷캣] 미니 오리지널 405g (9g x 45개입)" class="css-1ixzt3f ecmuszp9">'+
                                    '<div class="css-1t5xcqm ecmuszp8"><a data-testid="deal-name" href="/goods/5110153" class="css-15vlnp ecmuszp7">[킷캣] 미니 오리지널 405g (9g x 45개입)</a><a data-testid="contents-name" href="/goods/5110153" class="css-2utun3 ecmuszp6">[킷캣] 미니 오리지널 웨이퍼 405g (9g x 45개입)</a>'+
                                    '<div class="css-s5xdrg ecmuszp5"><span data-testid="goods-price" class="css-1ngn8p4 ecmuszp4">11,980원</span><span data-testid="original-price" class="css-11ny283 ecmuszp3">13,980원</span><span class="css-1ekh7sh ecmuszp2">1개</span></div></div><span class="css-l71t3l ecmuszp1">배송완료</span>'+
                                    '<div class="css-ojh52s ecmuszp0"><button class="css-lwy3pd e4nu7ef3" type="button" width="96" height="36" radius="3"><span class="css-nytqmg e4nu7ef1">후기작성</span></button><button class="css-z4yl45 e4nu7ef3" type="button" width="96" height="36" radius="3"><span class="css-nytqmg e4nu7ef1">장바구니 담기</span></button></div></div>'+
                                    '<div class="css-mrxscg ecmuszp10"><img src="https://img-cf.kurly.com/cdn-cgi/image/width=120,height=156,fit=crop,quality=85/shop/data/goods/1614169006174l0.jpg" alt="[해태] 미니 자유시간 380g" class="css-1ixzt3f ecmuszp9">'+
                                        '<div class="css-1t5xcqm ecmuszp8"><a data-testid="deal-name" href="/goods/5062898" class="css-15vlnp ecmuszp7">[해태] 미니 자유시간 380g</a>'+
                                        '<div class="css-s5xdrg ecmuszp5"><span data-testid="goods-price" class="css-1ngn8p4 ecmuszp4">10,000원</span><span class="css-1ekh7sh ecmuszp2">1개</span></div></div><span class="css-l71t3l ecmuszp1">배송완료</span>'+
                                        '<div class="css-ojh52s ecmuszp0"><button class="css-lwy3pd e4nu7ef3" type="button" width="96" height="36" radius="3"><span class="css-nytqmg e4nu7ef1">후기작성</span></button><button class="css-z4yl45 e4nu7ef3" type="button" width="96" height="36" radius="3"><span class="css-nytqmg e4nu7ef1">장바구니 담기</span></button></div></div>'+
                                        '<div class="css-1m7irn0 e1egl70z1"><button class="css-h6dssh e4nu7ef3" type="button" width="200" height="56" radius="3"><span class="css-nytqmg e4nu7ef1">전체 상품 다시 담기</span></button><button class="css-kvnzdd e4nu7ef3" type="button" disabled="" width="200" height="56" radius="3"><span class="css-nytqmg e4nu7ef1">전체 상품 주문 취소</span></button></div><span class="css-15leche e1egl70z0">주문취소는 [주문완료] 상태일 경우에만 가능합니다.</span>'+
                                        '<div class="css-1bsokvi e1jm6dy15"><h3 class="css-yi2ox5 e1jm6dy14">배송조회</h3></div><ul class="css-hig5bx e1wlhoty1"><li class="css-6j27uj ec7o8km5">'+
                                            '<div class="css-82a6rk ec7o8km4"><span class="css-1e758l9 ec7o8km3">냉장</span></div><span class="css-v47f8e ec7o8km2">배송완료</span><span data-testid="company-name" class="css-14kcwq8 ec7o8km1">넥스트마일</span><a href="https://www.kurlynextmile.com/main/delivery_check.php?invoice_no=210-D0-2324322320175-0001" rel="noopener noreferrer" target="_blank" class="css-1o0rwe3 ec7o8km0">배송조회</a></li></ul>'+
                                        '<div class="css-1bsokvi e1jm6dy15"><h3 class="css-yi2ox5 e1jm6dy14">결제정보</h3></div><ul class="css-ny80ny e1sh1vdm3"><li class="css-1rwh8y3 e1ysbs754"><span class="css-11h8hn9 e1ysbs753">상품금액</span><span class="css-l5tyq9 e1ysbs751">23,980<span class="css-cvbrkf e1ysbs750">원</span></span></li><li class="css-1rwh8y3 e1ysbs754"><span class="css-11h8hn9 e1ysbs753">상품할인금액</span><span class="css-l5tyq9 e1ysbs751">-2,000<span class="css-cvbrkf e1ysbs750">원</span></span></li><li class="css-1rwh8y3 e1ysbs754"><span class="css-11h8hn9 e1ysbs753">배송비</span><span class="css-l5tyq9 e1ysbs751">0<span class="css-cvbrkf e1ysbs750">원</span></span></li><li class="css-1rwh8y3 e1ysbs754"><span class="css-11h8hn9 e1ysbs753">쿠폰할인</span><span class="css-l5tyq9 e1ysbs751">-10,000<span class="css-cvbrkf e1ysbs750">원</span></span></li><li class="css-1rwh8y3 e1ysbs754"><span class="css-11h8hn9 e1ysbs753">카드즉시할인</span><span class="css-l5tyq9 e1ysbs751">0<span class="css-cvbrkf e1ysbs750">원</span></span></li>'+
                                            '<div class="css-s39dhl e1sh1vdm0"><li class="css-1rwh8y3 e1ysbs754"><span class="css-11h8hn9 e1ysbs753">적립금 · 컬리캐시</span><span class="css-l5tyq9 e1ysbs751">0<span class="css-cvbrkf e1ysbs750">원</span></span></li><li class="css-145e4ut e1ysbs752">'+
                                            '<div><svg width="16" height="20" viewBox="0 0 16 20" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M1 5H0V10V11H1H6V10H1V5Z" fill="#ddd"></path></svg><span>적립금</span></div><span>0<span class="css-cvbrkf e1ysbs750">원</span></span></li><li class="css-145e4ut e1ysbs752">'+
                                                '<div><svg width="16" height="20" viewBox="0 0 16 20" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M1 5H0V10V11H1H6V10H1V5Z" fill="#ddd"></path></svg><span>컬리캐시</span></div><span>0<span class="css-cvbrkf e1ysbs750">원</span></span></li></div><li class="css-1rwh8y3 e1ysbs754"><span class="css-11h8hn9 e1ysbs753">결제금액</span><span class="css-l5tyq9 e1ysbs751">11,980<span class="css-cvbrkf e1ysbs750">원</span></span></li><li class="css-1rwh8y3 e1ysbs754"><span class="css-11h8hn9 e1ysbs753">적립금액</span><span class="css-6779rn e1sh1vdm1">배송완료 7일후 적립</span><span class="css-l5tyq9 e1ysbs751">326<span class="css-cvbrkf e1ysbs750">원</span></span></li><li class="css-1rwh8y3 e1ysbs754"><span class="css-11h8hn9 e1ysbs753">결제방법</span>'+
                                                    '<div class="css-1r21krv e1sh1vdm2">카카오페이(카카오페이머니)</div></li></ul><div class="css-1bsokvi e1jm6dy15"><h3 class="css-yi2ox5 e1jm6dy14">주문정보</h3></div><ul class="css-17f5yp3 eu7fh4o3"><li class="css-16lrjcx eu7fh4o2"><span class="css-19msp73 eu7fh4o1">주문번호</span><span class="css-2wk6tm eu7fh4o0">2324322320175</span></li><li class="css-16lrjcx eu7fh4o2"><span class="css-19msp73 eu7fh4o1">보내는 분</span><span class="css-2wk6tm eu7fh4o0">김경훈</span></li><li class="css-16lrjcx eu7fh4o2"><span class="css-19msp73 eu7fh4o1">결제일시</span><span class="css-2wk6tm eu7fh4o0">2023-11-18 22:34:32</span></li></ul>'+
                                                    '<div class="css-1bsokvi e1jm6dy15"><h3 class="css-yi2ox5 e1jm6dy14">배송정보</h3></div><ul class="css-17f5yp3 eu7fh4o3"><li class="css-16lrjcx eu7fh4o2"><span class="css-19msp73 eu7fh4o1">받는분</span><span class="css-2wk6tm eu7fh4o0">김경훈</span></li><li class="css-16lrjcx eu7fh4o2"><span class="css-19msp73 eu7fh4o1">핸드폰</span><span class="css-2wk6tm eu7fh4o0">010-9919-****</span></li><li class="css-16lrjcx eu7fh4o2"><span class="css-19msp73 eu7fh4o1">주소</span><span class="css-2wk6tm eu7fh4o0">(03164) 서울 종로구 종로 69 (서울 YMCA) 5층 522호</span></li><li class="css-16lrjcx eu7fh4o2"><span class="css-19msp73 eu7fh4o1">받으실 장소</span><span class="css-2wk6tm eu7fh4o0">문 앞</span></li><li class="css-16lrjcx eu7fh4o2"><span class="css-19msp73 eu7fh4o1">공동현관 출입방법</span><span class="css-2wk6tm eu7fh4o0">자유 출입 가능</span></li><li class="css-16lrjcx eu7fh4o2"><span class="css-19msp73 eu7fh4o1">포장 방법</span><span class="css-2wk6tm eu7fh4o0">종이 포장재</span></li></ul>'+
                                                    '<div class="css-1bsokvi e1jm6dy15"><h3 class="css-yi2ox5 e1jm6dy14">추가정보</h3></div><ul class="css-17f5yp3 eu7fh4o3"><li class="css-16lrjcx eu7fh4o2"><span class="css-19msp73 eu7fh4o1">미배송 시 조치방법</span><span class="css-2wk6tm eu7fh4o0">결제수단으로 환불</span></li><li class="css-16lrjcx eu7fh4o2"><span class="css-19msp73 eu7fh4o1">메세지 전송시점</span><span class="css-2wk6tm eu7fh4o0">배송 직후</span></li></ul>'
            );
                
        });
        </script>
        <style>
        .css-171zbec {
            width: 820px;
        }
        .css-j0lifa {
            display: flex;
            flex-direction: row;
            width: 100%;
            padding-bottom: 27px;
            -webkit-box-pack: justify;
            justify-content: space-between;
        }
        .css-fhxb3m {
            display: flex;
            flex-direction: row;
            -webkit-box-align: center;
            align-items: center;
        }
        .css-1268zpe {
            font-weight: 500;
            font-size: 24px;
            color: rgb(51, 51, 51);
            letter-spacing: -0.5px;
            line-height: 48px;
        }
        .css-12umaoq {
            display: flex;
            padding: 14px 20px;
            height: 88px;
            border: 1px solid rgb(242, 242, 242);
            -webkit-box-align: center;
            align-items: center;
            margin-bottom: 60px;
        }
        .css-cp6cch {
            font-size: 16px;
            font-weight: 500;
        }
        .css-1pdt6og {
            line-height: 22px;
        }
        .css-1pdt6og > span {
            color: rgb(95, 0, 128);
        }
        .css-1l950qo {
            margin-top: 4px;
            font-size: 14px;
            line-height: 20px;
            font-weight: 400;
            color: rgb(153, 153, 153);
        }
        .css-1bsokvi {
            display: flex;
            flex-direction: row;
            width: 100%;
            -webkit-box-align: center;
            align-items: center;
            padding-bottom: 20px;
            border-bottom: 2px solid rgb(51, 51, 51);
        }
        .css-yi2ox5 {
            font-weight: 500;
            font-size: 20px;
            color: rgb(51, 51, 51);
            letter-spacing: -0.43px;
        }
        .css-1qei3w8 {
            user-select: all;
        }
        .css-1mlk737 {
            flex: 1 1 0%;
            text-align: right;
            margin: 0px 4px;
            font-size: 12px;
            line-height: 16px;
            color: rgb(102, 102, 102);
        }
        .css-1s2o3jp {
            font-weight: 500;
            color: #5f0080;
        }
        .css-cb2xrd {
            width: 16px;
            height: 16px;
        }
        .css-mrxscg {
            display: flex;
            -webkit-box-align: center;
            align-items: center;
            margin: 0px 20px;
            padding: 24px 0px;
            border-bottom: 1px solid rgb(244, 244, 244);
        }
        .css-1ixzt3f {
            width: 60px;
            height: 78px;
            margin-right: 20px;
            cursor: pointer;
            background-color: rgb(245, 245, 245);
        }
        .css-1t5xcqm {
            display: flex;
            flex-direction: column;
            flex: 1 1 0%;
            margin-right: 20px;
        }
        .css-15vlnp {
            margin-bottom: 8px;
            padding-bottom: 2px;
            font-size: 16px;
            font-weight: 500;
            color: rgb(51, 51, 51);
            display: -webkit-box;
            overflow: hidden;
            word-break: break-all;
            white-space: normal;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
        }
        .css-2utun3 {
            margin-bottom: 8px;
            line-height: 1.43;
            color: rgb(153, 153, 153);
            display: -webkit-box;
            overflow: hidden;
            word-break: break-all;
            white-space: normal;
            -webkit-line-clamp: 1;
            -webkit-box-orient: vertical;
        }
        .css-s5xdrg {
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            -webkit-align-items: center;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
        }
        .css-1ngn8p4 {
            margin-right: 6px;
            font-weight: bold;
            line-height: 1.5;
            letter-spacing: -0.22px;
            color: rgb(51, 51, 51);
        }
        .css-11ny283 {
            margin-right: 8px;
            color: rgb(153, 153, 153);
            text-decoration: line-through;
        }
        .css-1ekh7sh {
            letter-spacing: -0.22px;
            color: rgb(51, 51, 51);
        }
        .css-l71t3l {
            font-size: 16px;
            font-weight: 500;
            color: rgb(51, 51, 51);
        }
        .css-ojh52s {
            display: flex;
            flex-direction: column;
            -webkit-box-pack: justify;
            justify-content: space-between;
            margin-left: 40px;
            gap: 6px;
        }
        .css-lwy3pd {
            display: block;
            padding: 0px 10px;
            text-align: center;
            overflow: hidden;
            width: 96px;
            height: 36px;
            border-radius: 3px;
            color: rgb(255, 255, 255);
            background-color: rgb(95, 0, 128);
            border: 0px none;
        }
        .css-nytqmg {
            display: inline-block;
            font-size: 16px;
            font-weight: 500;
        }
        .css-ojh52s > button span {
            font-size: 11px;
            font-weight: 500;
            line-height: 17px;
        }
        .css-z4yl45 {
            display: block;
            padding: 0px 10px;
            text-align: center;
            overflow: hidden;
            width: 96px;
            height: 36px;
            border-radius: 3px;
            color: rgb(95, 0, 128);
            background-color: rgb(255, 255, 255);
            border: 1px solid rgb(95, 0, 128);
        }
        .css-1m7irn0 {
            display: flex;
            -webkit-box-pack: center;
            justify-content: center;
            margin: 30px 0px 20px;
        }
        .css-h6dssh {
            display: block;
            padding: 0px 10px;
            text-align: center;
            overflow: hidden;
            width: 200px;
            height: 56px;
            border-radius: 3px;
            color: rgb(95, 0, 128);
            background-color: rgb(255, 255, 255);
            border: 1px solid rgb(95, 0, 128);
        }
        .css-1m7irn0 button span {
            font-weight: 500;
        }
        .css-kvnzdd {
            display: block;
            padding: 0px 10px;
            text-align: center;
            overflow: hidden;
            width: 200px;
            height: 56px;
            border-radius: 3px;
            color: rgb(51, 51, 51);
            background-color: rgb(255, 255, 255);
            border: 1px solid rgb(221, 221, 221);
        }
        button[disabled], input[disabled] {
            cursor: default;
        }
        .css-1m7irn0 button + button {
            margin-left: 12px;
        }
        .css-kvnzdd:disabled {
            border-color: rgb(221, 221, 221);
            color: rgb(221, 221, 221);
        }
        .css-15leche {
            display: block;
            margin-bottom: 60px;
            line-height: 1.43;
            text-align: center;
            color: rgb(102, 102, 102);
        }
        .css-1bsokvi {
            display: flex;
            flex-direction: row;
            width: 100%;
            -webkit-box-align: center;
            align-items: center;
            padding-bottom: 20px;
            border-bottom: 2px solid rgb(51, 51, 51);
        }
        .css-yi2ox5 {
            font-weight: 500;
            font-size: 20px;
            color: rgb(51, 51, 51);
            letter-spacing: -0.43px;
        }
        .css-6j27uj {
            display: flex;
            padding: 12px 0px;
            font-size: 16px;
        }
        .css-hig5bx li:first-of-type {
            padding-top: 24px;
        }
        .css-hig5bx li:last-of-type {
            padding-bottom: 28px;
            margin-bottom: 60px;
            border-bottom: 1px solid rgb(244, 244, 244);
        }
        .css-82a6rk {
            flex: 1 1 0%;
        }
        .css-v47f8e {
            margin-right: 24px;
            font-weight: 500;
            color: rgb(51, 51, 51);
        }
        .css-14kcwq8 {
            color: rgb(153, 153, 153);
        }
        .css-1o0rwe3 {
            margin-left: 12px;
            color: rgb(95, 0, 128);
            text-decoration: underline;
        }
        .css-1bsokvi {
            display: flex;
            flex-direction: row;
            width: 100%;
            -webkit-box-align: center;
            align-items: center;
            padding-bottom: 20px;
            border-bottom: 2px solid rgb(51, 51, 51);
        }
        .css-yi2ox5 {
            font-weight: 500;
            font-size: 20px;
            color: rgb(51, 51, 51);
            letter-spacing: -0.43px;
        }
        .css-ny80ny {
            padding: 20px 0px 4px;
            margin-bottom: 60px;
            border-bottom: 1px solid rgb(244, 244, 244);
        }
        .css-1rwh8y3 {
            display: flex;
            -webkit-box-pack: justify;
            justify-content: space-between;
            padding-bottom: 24px;
            font-size: 16px;
            line-height: 21px;
        }
        .css-11h8hn9 {
            flex: 1 1 0%;
            color: rgb(102, 102, 102);
        }
        .css-6779rn {
            margin-right: 4px;
            color: rgb(153, 153, 153);
        }
        .css-l5tyq9 {
            font-weight: 500;
            color: rgb(51, 51, 51);
        }
        .css-cvbrkf {
            padding-left: 2px;
            vertical-align: bottom;
        }
        .css-s39dhl {
            padding-bottom: 24px;
        }
        .css-s39dhl li:first-of-type {
            padding-bottom: 14px;
        }
        .css-145e4ut {
            display: flex;
            -webkit-box-pack: justify;
            justify-content: space-between;
            color: rgb(153, 153, 153);
            padding-bottom: 8px;
            font-size: 14px;
            letter-spacing: -0.5px;
            line-height: 20px;
        }
        .css-s39dhl li ~ li {
            padding-top: 8px;
        }
        .css-145e4ut > div {
            display: flex;
        }
        svg:not(:root) {
            overflow: hidden;
        }
        .css-cvbrkf {
            padding-left: 2px;
            vertical-align: bottom;
        }
        .css-16lrjcx {
            display: flex;
            flex-direction: row;
            -webkit-box-pack: justify;
            justify-content: space-between;
            padding: 12px 0px;
            font-size: 16px;
            font-weight: 500;
            line-height: 21px;
        }
        .css-17f5yp3 li:first-of-type {
            padding-top: 20px;
        }
        .css-19msp73 {
            min-width: 160px;
            margin-right: 16px;
            flex-shrink: 1;
            color: rgb(102, 102, 102);
            font-weight: 400;
        }
        .css-2wk6tm {
            -webkit-box-flex: 1;
            flex-grow: 1;
            color: rgb(51, 51, 51);
            word-break: break-all;
        }
        .css-17f5yp3 li:last-of-type {
            padding-bottom: 20px;
            margin-bottom: 60px;
            border-bottom: 1px solid rgb(244, 244, 244);
        }
        </style>
    </head>
    <body class="sb-nav-fixed">
    	<%@include file="../include/header.jspf" %>
    	<%@include file="../include/mypageOrder_Incldue.jsp" %>
    	<%@include file="../include/footer.jspf" %>
    </body>
</html>