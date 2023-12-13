<%--
  Created by IntelliJ IDEA.
  User: wooHj
  Date: 2023-12-01
  Time: 오전 11:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>aa</h1>
<a href="/logout" onclick="setRefererCookie()">로그아웃</a>
<a href="/member/login_form">로그인</a>
<a href="/member/admin">admin</a>
${result}
<c:if test="${result eq '성공에서 옴'}">
    <p>성공에서 옴</p>
</c:if>
<c:if test="${result eq '거긴 안돼요'}">
    <p>거긴 안돼요</p>
</c:if>
<sec:authorize access="isAuthenticated()">
    <!-- 현재 사용자가 인증되어 있을 때 보이는 내용 -->
    <p>Welcome, <sec:authentication property="principal.mem_name" />!</p>
</sec:authorize>
<script>
    $(document).ready(function () {
        // 현재 사용자의 mem_name 값을 가져옴
        //var memName = "<sec:authentication property='principal.mem_name' />";
        var encodedString = "<sec:authentication property='principal.mem_name' />";
        var div = document.createElement('div');
        div.innerHTML = encodedString;
        var decodedString = div.textContent || div.innerText;

        console.log(decodedString);
    });
</script>
</body>
</html>
