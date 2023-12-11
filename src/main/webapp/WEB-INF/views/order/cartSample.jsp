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
	<form action="${pageContext.request.contextPath}/order/checkout" method= "post">
	<input type="hidden" name="items[0].prod_id" value="100198">
	<input type="hidden" name="items[0].opt_prod_id" value="100198A">
	<input type="hidden" name="items[0].qty" value="2">

	<input type="hidden" name="items[1].prod_id" value="100198">
	<input type="hidden" name="items[1].opt_prod_id" value="100198C">
	<input type="hidden" name="items[1].qty" value="3">

	<input type="hidden" name="items[2].prod_id" value="100199">
	<input type="hidden" name="items[2].qty" value="1">

	<input id="orderBtn" type="submit" value="주문하기">
</form>
</div>
</body>
</html>
