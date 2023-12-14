<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:scriptlet> pageContext.setAttribute("newline", "\n"); </jsp:scriptlet>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 공지사항 관리자 상세조회 페이지 -->
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
    <style>
        h4 {
            font-weight: bolder;
            font-size: 28px;
        }
        p {
            vertical-align: middle;
            font-size: 14px;
        }
        .table {
            width: 100%;
            text-align: center;
            border: black;
        }
        tbody {
            border-bottom: 1px solid rgb(244, 244, 244);
        }
        tbody td {
            height: 50px;
            font-size: 14px;
            font-weight: bolder;
        }
        tfoot td {
            font-size: 14px;
            text-align: left;
            letter-spacing: -0.8px;
            word-spacing: 2px;
            font-weight: 500;
        }
        .date {
            color: gray;
        }
        .main {
            padding-bottom: 24px;
            padding-top: 10px;
            text-align: center;
        }
        .list_btn {
            padding: 0px 10px;
            text-align: center;
            overflow: hidden;
            width: 120px;
            height: 44px;
            border-radius: 3px;
            color: rgb(255, 255, 255);
            background-color: #4CAF50;
            border: 0px none;
            font-size: 13px;
            float: right;
        }
        .list_btn:hover {
            background-color: #7F208D;
        }
    </style>
</head>
<body class="sb-nav-fixed">
<%@ include file="../../common/top_side_nav.jsp" %>
<div class="container-fluid">
    <div class="row" style="padding-top:50px; padding-bottom: 50px">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
            <div class="main" style="border-bottom:2px solid black">
                <h4>공지사항 </h4>
                <p style="color: darkgrey; font-weight: bolder;"> 에코잇츠의 새로운 소식들과 유용한 정보들을 한곳에서 확인하세요</p>
            </div>
            <div>
                <table class="table">
                    <tbody>
                    <tr>
                        <td class="tbody_td" style="width: 10%; background-color: #4CAF50; vertical-align: middle; text-align: left; padding-left: 20px;">
                            제목</td>
                        <td style="text-align: left; vertical-align: middle; letter-spacing: -1px; padding-left: 20px;">
                            ${notice.notice_title }</td>
                    </tr>
                    <tr>
                        <td class="tbody_td" style="width: 10%; background-color: #4CAF50; vertical-align: middle; text-align: left; padding-left: 20px;">
                            작성자</td>
                        <td style="text-align: left; vertical-align: middle; letter-spacing: -1px; padding-left: 20px;">
                            에코잇츠</td>
                    </tr>
                    <tr>
                        <td class="tbody_td" style="width: 10%; background-color: #4CAF50; vertical-align: middle; text-align: left; padding-left: 20px;">
                            작성일</td>
                        <td class="date"style="text-align: left; vertical-align: middle; letter-spacing: -1px; padding-left: 20px;">
                            ${notice.notice_date }</td>
                    </tr>
                    </tbody>
                    <tfoot>
                    <tr style="border-top: 2px solid #FEF7FF;">
                        <td colspan="2" style="padding-top: 25px; padding-bottom: 50px;">
                            <c:out value="${fn:replace(notice.notice_con, newline, '<br>')}" escapeXml="false"/>
                        </td>
                    </tr>
                    </tfoot>
                </table>
            </div>
            <button class="list_btn" type="button" onclick="location.href='/admin1/notice?page=${page}&pageSize=${pageSize}'">목록</button>
        </div>
    </div>
    <div class="col-sm-2"></div>
</div>
</body>
</html>
