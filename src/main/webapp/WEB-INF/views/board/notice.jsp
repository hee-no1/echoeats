<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 공지사항 사용자 페이지 -->
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항 - 에코잇츠</title>
    <%@ include file="../include/bootstrap.jspf" %>
    <link rel="stylesheet" href="/resources/product/css/main-css.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/board/projectPratice.css">
</head>
<style>
    .table {
        width: 100%;
        text-align: center;
    }
    .table th {
        padding: 10px;
        font-size: 11pt;
        vertical-align: middle;
    }
    .table td {
        font-size: 10.5pt;
        height: 55px;
        padding-top: 17px;
        border-bottom: 1px solid lightgray;
    }
    .date {
        color: gray;
    }
    .n_title,
    .n_title:hover {
        text-decoration: none;
        color: black;
    }

    .board-container {
        width: 100%;
        height: 120px;
        margin: 0 auto;
    }
    .search-container {
        background-color: white;
        width: 60%;
        height: 60px;
        border: 1px solid #4CAF50;
        margin-top: 10px;
        margin-bottom: 30px;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .search-form {
        height: 37px;
        display: flex;
    }

    .search-option {
        width: 100px;
        height: 100%;
        outline: none;
        margin-right: 5px;
        border: 1px solid #4CAF50;
        color: #4CAF50;
    }

    .search-option > option {
        text-align: center;
    }

    .search-input {
        color: gray;
        background-color: white;
        border: 1px solid #4CAF50;
        height: 100%;
        width: 300px;
        font-size: 15px;
        padding: 5px 7px;
    }

    .search-input::placeholder {
        color: #4CAF50;
    }

    .search-button {
        /* 메뉴바의 검색 버튼 아이콘  */
        width: 20%;
        height: 100%;
        background-color: #4CAF50;
        color: #fff;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 15px;
    }

    .search-button:hover {
        color: #45a049;
    }

    table {
        margin-top: -35px;
    }
    .paging {
        color: black;
        width: 100%;
        align-items: center;
    }

    .page {
        color: black;
        padding: 6px;
        margin-right: 10px;
    }

    .paging-active {
        background-color: #4CAF50;
        border-radius: 5px;
        color: rgb(24, 24, 24);
    }

    .paging-container {
        width: 100%;
        height: 70px;
        display: flex;
        margin-top: 50px;
        margin: auto;
    }
</style>
<body>
<header>
    <%@ include file="../include/header.jspf" %>
</header>
<div class="content-page">
    <div class="customer-service-center">
        <div class="center-left-menu"> <!--고객센터 메뉴(화면 왼쪽)-->
            <div class="center-left-header">고객센터</div> <!--메뉴 제목-->
            <ul class="left-menu-alllists">
                <li>
                    <a class="active left-menu-list" >
                        공지사항
                        <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
                            <defs>
                                <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
                            </defs>
                            <g fill="none" fill-rule="evenodd">
                                <g>
                                    <g>
                                        <g>
                                            <g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                                                <use stroke="#5f0080" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round"
                                                     transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use>
                                            </g>
                                        </g>
                                    </g>
                                </g>
                            </g>
                        </svg>
                    </a>
                </li>
                <li>
                    <a class="left-menu-list" href="/board/faq">
                        자주하는 질문
                        <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
                            <defs>
                                <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
                            </defs>
                            <g fill="none" fill-rule="evenodd">
                                <g>
                                    <g>
                                        <g>
                                            <g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                                                <use stroke="#5f0080" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round"
                                                     transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use>
                                            </g>
                                        </g>
                                    </g>
                                </g>
                            </g>
                        </svg>
                    </a>
                </li>
                <li>
                    <a class="left-menu-list">
                        1:1문의
                        <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
                            <defs>
                                <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
                            </defs>
                            <g fill="none" fill-rule="evenodd">
                                <g>
                                    <g>
                                        <g>
                                            <g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                                                <use stroke="#5f0080" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round"
                                                     transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use>
                                            </g>
                                        </g>
                                    </g>
                                </g>
                            </g>
                        </svg>
                    </a>
                </li>
                <li>
                    <a class="left-menu-list">
                        대량주문 문의
                        <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
                            <defs>
                                <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
                            </defs>
                            <g fill="none" fill-rule="evenodd">
                                <g>
                                    <g>
                                        <g>
                                            <g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                                                <use stroke="#5f0080" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round"
                                                     transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use>
                                            </g>
                                        </g>
                                    </g>
                                </g>
                            </g>
                        </svg>
                    </a>
                </li>
            </ul>
            <a href="" class="center-left-footer">
                <div clss="left-footer-list">
                    <span class="left-footer-list1">도움이 필요하신가요?</span>
                    <span class="left-footer-list2">1:1 문의하기</span>
                </div>
                <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
                    <defs>
                        <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
                    </defs>
                    <g fill="none" fill-rule="evenodd">
                        <g>
                            <g>
                                <g>
                                    <g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                                        <use stroke="#333" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round"
                                             transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use>
                                    </g>
                                </g>
                            </g>
                        </g>
                    </g>
                </svg>
            </a>
        </div>
        <div class="board"> <!--게시판 (화면 중앙)-->
            <div class="board-top"> <!--게시판 상단1-->
                <div class="board-top-content">
                    <h2 class="Notice1">공지사항</h2>
                    <span class="Notice2">에코의 새로운 소식들과 유용한 정보들을 한곳에서 확인하세요.</span>
                </div>
            </div>
            <div style="text-align:center">
                <div class="board-container">
                    <div class="search-container">
                        <form action="<c:url value="/board/notice"/>" class="search-form" method="get">
                            <select class="search-option" name="option">
                                <option value="A" ${ph.sc.option=='A' || ph.sc.option=='' ? "selected" : ""}>제목+내용</option>
                                <option value="T" ${ph.sc.option=='T' ? "selected" : ""}>제목만</option>
                            </select>

                            <input type="text" name="keyword" class="search-input" type="text" value="${ph.sc.keyword}"
                                   placeholder="검색어를 입력해주세요">
                            <input type="submit" class="search-button" value="검색">
                        </form>
                    </div>
                </div>
            <div>
                <table class="table">
                    <thead>
                    <tr style="height: 60px">
                        <th style="width: 10%; vertical-align: middle; border-top: 1px solid #4CAF50; border-bottom: 1px solid #4CAF50;">번호</th>
                        <th style="vertical-align: middle; border-top: 1px solid #4CAF50; border-bottom: 1px solid #4CAF50;">제목</th>
                        <th style="width: 15%; vertical-align: middle; border-top: 1px solid #4CAF50; border-bottom: 1px solid #4CAF50;">작성자</th>
                        <th style="width: 20%; vertical-align: middle; border-top: 1px solid #4CAF50; border-bottom: 1px solid #4CAF50;">작성일</th>
                    </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="notice" items="${list}">
                            <tr>
                                <td>${notice.notice_id }</td>
                                <td>
                                    <a class="n_title" href="notice_view?notice_id=${notice.notice_id}&page=${page}&pageSize=${pageSize}">${notice.notice_title }</a>
                                </td>
                                <td>에코잇츠</td>
                                <td class="date"><fmt:formatDate value="${notice.notice_date}" pattern="yyyy-MM-dd" type="date"/></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <br>
                <div class="paging-container">
                    <div class="paging">
                        <c:if test="${ph.totalCnt==null || ph.totalCnt==0}">
                            <div>게시물이 없습니다.</div>
                        </c:if>
                        <c:if test="${ph.totalCnt!=null && ph.totalCnt!=0}">
                            <c:if test="${ph.showPrev}">
                                <a class="page" href="<c:url value='/board/notice${ph.sc.getQueryString(ph.beginPage-1)}'/>">&lt;</a>
                            </c:if>
                            <c:forEach var="i" begin="${ph.beginPage}" end="${ph.endPage}">
                                <a class="page ${i==ph.sc.page? "paging-active" : ""}" href="<c:url value='/board/notice${ph.sc.getQueryString(i)}'/>">${i}</a>
                            </c:forEach>
                            <c:if test="${ph.showNext}">
                                <a class="page" href="<c:url value='/board/notice${ph.sc.getQueryString(ph.endPage+1)}'/>">&gt;</a>
                            </c:if>
                        </c:if>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="right-menu">
    <div class="right-menu-list">
        <div class="right-menu-list1">
            <a href="#">
          <span
                  style="box-sizing:border-box;display:inline-block;overflow:hidden;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0;position:relative;max-width:100%">
            <span>
              <img src="" alt="">
            </span>
            <img class="shipping-img" src="/resources/images/deliveryInfo.png" alt="샛별, 택배 배송 안내">
          </span>
            </a>
        </div>
        <div class="right-menu-list2">
            <a href="#">
                <div class="right-list2-11">등급별 혜택</div>
            </a>
            <a href="#">
                <div class="right-list2-11">레시피</div>
            </a>
        </div>
        <div class="right-menu-list3">
            <button type="button" class="top-button">
                <svg width="20" height="20" viewBox="0 0 18 18" fill="none" stroke="#ddd" xmlns="http://www.w3.org/2000/svg">
                    <path d="M5 11L9 7L13 11" stroke="#666" stroke-width="1.3"></path>
                </svg>
            </button>
            최근 본 상품
            <div>
                <ul>
                    <li>
              <span>

              </span>
                    </li>
                    <li>
              <span>

              </span>
                    </li>
                    <li>
              <span>

              </span>
                    </li>
                    <li>
              <span>

              </span>
                    </li>
                    <li>
              <span>

              </span>
                    </li>
                </ul>
            </div>
            <button type="button" class="bottom-button">
                <svg width="20" height="20" viewBox="0 0 18 18" fill="none" stroke="#ddd" xmlns="http://www.w3.org/2000/svg">
                    <path d="M13 7L9 11L5 7" stroke="#666" stroke-width="1.3"></path>
                </svg>
            </button>
        </div>
    </div>
</div>
</div>
<footer>
    <%@ include file="../include/footer.jspf" %>
</footer>
</body>
</html>