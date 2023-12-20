<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="">
    <script
            src="https://code.jquery.com/jquery-3.4.1.js"
            integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
            crossorigin="anonymous"></script>
</head>
<body>
<div class="admin_content_wrap">
    <div class="admin_content_subject"><span>상품 관리</span></div>
</div>
<script>
    $(document).ready(function(){
        let eResult = '<c:out value="${productEnroll_result}"/>';
        console.log(eResult)
        checkResult(eResult);
        function checkResult(result){
            if(result === ''){
                return;
            }
            alert(eResult);
        }
    });
</script>
</body>
</html>
