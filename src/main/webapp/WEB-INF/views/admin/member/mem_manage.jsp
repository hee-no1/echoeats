<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="<c:url value='/resources/common/css/styles.css' />" rel="stylesheet" />
    <link href="<c:url value='/resources/admin/order/css/orderList.css' />" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <script type="module" src="https://cdn.jsdelivr.net/npm/@duetds/date-picker@1.4.0/dist/duet/duet.esm.js"></script>
    <script nomodule src="https://cdn.jsdelivr.net/npm/@duetds/date-picker@1.4.0/dist/duet/duet.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@duetds/date-picker@1.4.0/dist/duet/themes/default.css" />
</head>
<body class="sb-nav-fixed">
<%@ include file="../include/top_side_nav.jspf" %>
<div class="container mt-5">
    <h2 class="mb-4">회원 관리 페이지</h2>


    <form id="add-member-form">
        <h3 class="mt-4">회원 찾기</h3>
        <div class="mb-3">
            <label for="name" class="form-label">이름</label>
            <input type="text" class="form-control" id="name" required>
        </div>
        <button type="submit" class="btn btn-primary">검색</button>
    </form>

    <!-- 회원 목록 테이블 -->
    <table class="table">
        <thead>
        <tr>
            <th>ID</th>
            <th>이름</th>
            <th>성별</th>
            <th>Email</th>
            <th>번호</th>
            <th>생년월일</th>
            <th>가입일</th>
            <th>등급</th>
        </tr>
        </thead>
        <tbody id="member-list">
        <!-- 여기에 회원 목록이 들어갈 것입니다. -->
        </tbody>
    </table>



</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="app.js"></script>
</body>

</html>