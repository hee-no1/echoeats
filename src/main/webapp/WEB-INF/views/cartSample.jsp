<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<style>
		#orderBtn{
			text-align: center;
			width: 240px;
			height: 56px;
			border: 0px none;
			background-color: #29ad29;
			color: white;
			font-size: 16px;
			font-weight: 500
		}
	</style>
</head>
<body>
<h1>
	🍏EcoEats🥕
</h1><br>
<div>
	<form action="${pageContext.request.contextPath}/order/checkout" method = "post">
	<input type="hidden" name="prod_id" value="1">
	<input type="hidden" name="opt_prod_id" value="1a">
	<input type="hidden" name="qty" value="2">
	<input id="orderBtn" type="submit" value="주문하기">
</form>
</div>
</body>
</html>
