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