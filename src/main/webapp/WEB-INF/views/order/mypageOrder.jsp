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
                '<div class="css-j0lifa ed9qr673"><div class="css-fhxb3m ed9qr672"><h2 class="css-1268zpe ed9qr671">주문 내역</h2>'+
                        '<span class="css-a3vgo2 ed9qr670">최대 지난 3년간의 주문 내역까지 확인할 수 있어요</span></div>'+
                    '<div class="css-fhxb3m ed9qr672"><div class="css-wkgeho e1ykq6gv2"><div><div class="MuiFormControl-root css-tzsjye">'+
                                    '<div variant="outlined" class="MuiOutlinedInput-root MuiInputBase-root MuiInputBase-colorPrimary MuiInputBase-formControl jss1 css-eg1co4">'+
                                        '<div tabindex="0" role="button" aria-expanded="false" aria-haspopup="listbox" aria-label="Without label" class="MuiSelect-select MuiSelect-outlined MuiOutlinedInput-input MuiInputBase-input css-qiwgdb"> 3개월</div>'+
                                        '<input aria-hidden="true" tabindex="-1" class="MuiSelect-nativeInput css-1k3x8v3" value="3">'+
                                        '<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeMedium MuiSelect-icon MuiSelect-iconOutlined css-1636szt" focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="ArrowDropDownIcon"><path d="M7 10l5 5 5-5z"></path></svg>'+
                                        '<fieldset aria-hidden="true" class="MuiOutlinedInput-notchedOutline css-igs3ac">'+
                                            '<legend class="css-nnbavb"><span class="notranslate"></span></legend></fieldset>'+
                                    '</div></div></div></div></div></div>'+
                '<div class="css-1dmsa3j e1jm6dy15"></div>'+
                '<div class="css-1c8nox e1ykq6gv1">'+
                '<div class="css-4wlxei e1437c6414">'+
                        '<div class="css-1hbtwy0 e1437c6413">'+
                            '<span class="css-asma03 e1437c6412">2023.11.18 (22시 32분)</span><a class="css-l9y4tx e1437c6411">주문내역 상세보기</a>'+
                        '</div>'+
                        '<div class="css-7apail e1437c6410">'+
                            '<div class="css-fhxb3m e1437c649"><img src="https://img-cf.kurly.com/cdn-cgi/image/width=120,height=156,fit=crop,quality=85/shop/data/goods/1653040871523l0.jpg" alt="[킷캣] 미니 오리지널 웨이퍼 405g (9g x 45개입) 상품 이미지" class="css-1oc1pau e1437c648">'+
                                '<div class="css-1fttcpj e1437c647"><dl class="css-1ccl3pq e1437c646"><dt class="css-dzjp62 e1437c645">상품명</dt><dd class="css-1o8e829 e1437c643">[킷캣] 미니 오리지널 웨이퍼 405g (9g x 45개입) 외 1건</dd></dl><dl class="css-1ccl3pq e1437c646"><dt class="css-dzjp62 e1437c645">주문번호</dt><dd class="css-1i58pf4 e1437c644">2324322320175</dd></dl><dl class="css-1ccl3pq e1437c646"><dt class="css-dzjp62 e1437c645">결제방법</dt><dd class="css-1i58pf4 e1437c644">카카오페이</dd></dl><dl class="css-1ccl3pq e1437c646"><dt class="css-dzjp62 e1437c645">결제금액</dt><dd class="css-1i58pf4 e1437c644">11,980원</dd></dl>'+
                                '</div>'+
                            '</div>'+
                            '<div class="css-s5xdrg e1437c642"><span class="css-1fdt947 e1437c641">배송완료</span>'+
                                '<div class="css-1bbz142 e1437c640"><button class="css-oyz24n e4nu7ef3" type="button" height="36" radius="3"><span class="css-nytqmg e4nu7ef1">1:1 문의</span></button>'+
                                '</div>'+
                            '</div>'+
                        '</div>'+
                    '</div></div>'
            );
        	
        });
        </script>
        <style>
        </style>
    </head>
    <body class="sb-nav-fixed">
    	<%@include file="../include/header.jspf" %>
    	<%@include file="../include/mypageOrder_Incldue.jsp" %>
    	<%@include file="../include/footer.jspf" %>
    </body>
</html>