<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
    <title>Home</title>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <style>
        #payBtn{
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
    주문서📝
</h1><br>
<div>
    <button id="payBtn" type="button">결제하기</button>
</div>
<script src="/resources/order/js/requestOrder.js"></script>
</body>
</html>
