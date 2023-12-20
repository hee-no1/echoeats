
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<%--    <link rel="icon" href="./favicon.ico">--%>
    <title>컬리</title>
    <link rel="stylesheet" href="/resources/css/member/grade.css">
    <link rel="stylesheet" href="/resources/css/member/mypage.css">
    <link rel="stylesheet" href="/resources/css/member/coupon.css">
    <link rel="stylesheet" href="/resources/product/css/main-css.css">
    <link rel="stylesheet" href="/resources/product/css/footer.css">
    <link href="https://fonts.googleapis.com/css2?family=Dhurjati&family=Orbit&family=Rethink+Sans&family=Source+Sans+3:wght@300&display=swap" rel="stylesheet">
</head>

<body>
<%@ include file="../include/header.jspf" %>
<div class = "css-2b29tl">
    <div class = "css-1jgbowa epggjnz4">
        <div class = "css-1oynwoh epggjnz3">
            <div class = "css-1nmq3i1 epggjnz2">
                <div class = "css-zjik7">
                    <div class = "welcome">웰컴</div>
                    <div class = "css-38n0u7">
                        <strong class = "name">
                            <sec:authorize access="isAuthenticated()">
                                <p>Welcome, <sec:authentication property="principal.mem_name" />!</p>
                            </sec:authorize>
                        </strong>
                        <div class = "css-70qvj9">
                            <button class = "css-rlyyl8">다음 달 등급 확인</button>
                            <span class = "css-i9bkc4"></span>
                            <button class = css-rlyyl8>전체 등급 확인</button>
                        </div>
                    </div>
                </div>

                <div class = "css-1rqh7gg">
                    <p class = "css-1nwlk71">적립 5%</p>
                    <p class = "css-1nwlk71">최소 1회 무료배송</p>
                    <a href="/member/membership" class="css-1qcjshh">
                            <span class="css-1fid7vq">
                                <span class="css-3a5cil">NEW</span>
                                <span class="css-1kxzrwz">컬리멤버스</span>
                                <span class="css-10yg44e">월 1,900원으로 10배 쿠폰 받기</span>
                            </span>
                    </a>
                </div>
            </div>


            <div class="css-1jemrvf epggjnz1">
                <div class="css-1lomzjv epggjnz0">
                    <button class="css-1bm0yf4 e1ugk4rt6">
                        <div class="css-157zkrj e1ugk4rt5">적립금
                            <span class="css-14phxgn e1ugk4rt4"></span>
                        </div>
                        <div class="css-1omzzwx e1ugk4rt3">바로가기
                            <span class="css-mmvz9h e1ugk4rt0"></span>
                        </div>
                    </button>
                </div>
                <div class="css-1lomzjv epggjnz0">
                    <button class="css-1bm0yf4 e1ugk4rt6">
                        <div class="css-157zkrj e1ugk4rt5">쿠폰
                            <span class="css-14phxgn e1ugk4rt4"></span>
                        </div>
                        <div class="css-1omzzwx e1ugk4rt3">${mem_have_cp_qty}
                            <span class="css-mmvz9h e1ugk4rt0">개</span>
                        </div>
                    </button>
                </div>
                <div class="css-1lomzjv epggjnz0">
                    <button class="css-1bm0yf4 e1ugk4rt6">
                        <div class="css-157zkrj e1ugk4rt5">나의 에코 스타일
                            <span class="css-14phxgn e1ugk4rt4"></span>
                        </div>
                        <div class="css-1omzzwx e1ugk4rt3">등록하기
                        </div>
                    </button>
                </div>
            </div>


            <div class="css-1jemrvf epggjnz1">
                <div class="css-1lomzjv epggjnz0">
                    <button class="css-13d66fq e1ugk4rt6">
                        <div class="css-157zkrj e1ugk4rt5">에코 그린 박스
                            <span class="css-14phxgn e1ugk4rt4"></span>
                        </div>
                        <div class="css-17cmttl e1ugk4rt3">알아보기</div>
                    </button>
                </div>
                <div class="css-1lomzjv epggjnz0">
                    <button class="css-13d66fq e1ugk4rt6">
                        <div class="css-157zkrj e1ugk4rt5">에코멤버스
                            <span class="css-14phxgn e1ugk4rt4"></span>
                        </div>
                        <div class="css-17cmttl e1ugk4rt3">혜택받기</div>
                    </button>
                </div>
            </div>
        </div>
        <a href="https://www.kurly.com/m2/event/kurlyEventV2.php?lego=event/2023/0911/join/coupon" class="css-1khmcew eyulecr1">
            <img src="https://product-image.kurly.com/banner/da-banner/55b64dac-7373-4bb5-b44d-7a2eecde375a.jpg" alt="230713 신규1만원 쿠폰 웰컴 PC" class="css-1th0ley eyulecr0">
        </a>
    </div>


    <div class="css-luwwab eug5r8l1">
        <div class="css-833hqy ecbxmj3">
            <div class="css-1v4whg ecbxmj2">마이에코</div>
            <ul class="css-1x9bshx ecbxmj1">
                <li>
                    <a class="active css-g4g0eu ecbxmj0">주문내역
                        <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
                            <defs>
                                <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
                            </defs>
                            <g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                                <use stroke="#5f0080" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use>
                            </g></g></g></g></g>
                        </svg>
                    </a>
                </li>




                <li>
                    <a class=" css-g4g0eu ecbxmj0">배송지 관리
                        <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
                            <defs>
                                <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
                            </defs>
                            <g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                                <use stroke="#999" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use>
                            </g></g></g></g></g>
                        </svg>
                    </a>
                </li>

                <li>
                    <a class=" css-g4g0eu ecbxmj0">상품후기
                        <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
                            <defs>
                                <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
                            </defs>
                            <g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                                <use stroke="#999" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use>
                            </g></g></g></g></g>
                        </svg>
                    </a>
                </li>


                <li>
                    <a class=" css-g4g0eu ecbxmj0">상품 문의
                        <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
                            <defs>
                                <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
                            </defs>
                            <g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                                <use stroke="#999" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use>
                            </g></g></g></g></g>
                        </svg>
                    </a>
                </li>

                <li>
                    <a class=" css-g4g0eu ecbxmj0">적립금
                        <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
                            <defs>
                                <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
                            </defs>
                            <g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                                <use stroke="#999" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use>
                            </g></g></g></g></g>
                        </svg>
                    </a>
                </li>

                <li>
                    <a class=" css-g4g0eu ecbxmj0">쿠폰
                        <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
                            <defs>
                                <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
                            </defs>
                            <g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                                <use stroke="#999" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use>
                            </g></g></g></g></g>
                        </svg>
                    </a>
                </li>


                <li>
                    <a class=" css-g4g0eu ecbxmj0">개인 정보 수정
                        <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
                            <defs>
                                <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
                            </defs>
                            <g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                                <use stroke="#999" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use>
                            </g></g></g></g></g>
                        </svg>
                    </a>
                </li>
            </ul>

            <a href="/mypage/inquiry/list" class="css-196gwz9 e19l01ug3">
                <div class="css-rmee6s e19l01ug2">
                    <span class="css-1sdidca e19l01ug1">도움이 필요하신가요 ?</span>
                    <span class="css-rnnx2x e19l01ug0">1:1 문의하기</span>
                </div>
                <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
                    <defs>
                        <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
                    </defs>
                    <g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                        <use stroke="#333" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use>
                    </g></g></g></g></g>
                </svg>
            </a>
        </div>


        <div class="css-171zbec eug5r8l0">
<%--            여기부터--%>



    <c:choose>
        <c:when test="${mypage eq 'coupon'}">
            <%@ include file="coupon.jsp" %>
        </c:when>
        <c:when test="${mypage eq 'grade'}">
            <%@ include file="grade.jsp" %>
        </c:when>
        <c:otherwise>
            <!-- 다른 값에 대한 기본 처리나 예외 처리를 여기에 추가 -->
        </c:otherwise>
    </c:choose>


<%-- 여기까지 --%>
        </div>



    </div>

</div>
<%@ include file="../include/footer.jspf" %>

</body>
</html>
