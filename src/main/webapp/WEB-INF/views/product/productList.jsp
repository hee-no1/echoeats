<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/product/css/header-css.css">
    <link rel="stylesheet" href="/resources/product/css/productList-css.css">
    <link rel="stylesheet" href="/resources/product/css/footer.css">
    <title>ecoeats - best</title>
</head>

<body>

<%@ include file="../include/header.jspf" %>

<div id="wrap1">
    <div id="wrap1-center">
        <div id="header1"></div>
        <div id="search1"></div>
        <div id="navigation1"></div>
        <div id="main1">

            <%--베스트, 신상품 정렬 할 시 모델 이름 생각해야함 or if태그 써서 바꿔야 함--%>

            <%--            카테고리 상품 정렬 페이지--%>
            <c:if test="${pageType eq 'category'}">
                <h3 id="best">${bigCateName}</h3>
                <ul class="css-raoddi e1lg1uoa2">
                    <li class="css-1h52dri e1lg1uoa1">
                        <a href="/category/${midCategoryList.get(0).parent_code}" class="css-1b2to1r e1lg1uoa0">전체보기</a>
                    </li>
                    <c:forEach var="midCategoryList" items="${midCategoryList}">
                        <li class="css-1h52dri e1lg1uoa1">
                            <a href="/category/${midCategoryList.cat_code}"
                               class="css-1b2to1r e1lg1uoa0">${midCategoryList.cat_name}</a>
                        </li>
                    </c:forEach>
                </ul>
            </c:if>

            <%--            상품 검색 페이지    --%>
            <c:if test="${pageType eq 'searchProduct'}">
                <h3 id="best">'${searchContent}'에 대한 검색결과</h3>
            </c:if>
            <c:if test="${pageType eq 'best'}">
                <h3 id="best">베스트</h3>
            </c:if>
            <c:if test="${pageType eq 'newProduct'}">
                <h3 id="best">신상품</h3>
            </c:if>

            <c:choose>
                <c:when test="${pageType eq 'searchProduct' and totalCount eq 0}">
                    <div class="menu">
                        <div height="480" class="css-hayd9f e1oh2pka3">
                            <svg width="48" height="48" viewBox="0 0 48 48" fill="none"
                                 xmlns="http://www.w3.org/2000/svg">
                                <g clip-path="url(#clip0_368_6766)">
                                    <path d="M22.0732 43.1463C33.7116 43.1463 43.1463 33.7116 43.1463 22.0732C43.1463 10.4348 33.7116 1 22.0732 1C10.4348 1 1 10.4348 1 22.0732C1 33.7116 10.4348 43.1463 22.0732 43.1463Z"
                                          stroke="#e2e2e2" stroke-width="2" stroke-linecap="round"></path>
                                    <path d="M47.8293 47.8291L37.2927 37.2925" stroke="#e2e2e2" stroke-width="2"
                                          stroke-linecap="round"></path>
                                </g>
                                <defs>
                                    <clipPath id="clip0_368_6766">
                                        <rect width="48" height="48" fill="#fff"></rect>
                                    </clipPath>
                                </defs>
                            </svg>
                            <span class="css-h97wyk e1oh2pka2">검색된 상품이 없습니다.<br>다른 검색어를 입력해 주세요.</span></div>
                    </div>
                </c:when>
                <c:otherwise>
                    <div id="main1-menu">
                        <div id="filter">
                            <div id="filter-top">
                                <span id="filter-name">필터</span>
                                <button id="filter-reload">
                                    <svg width="12" height="12" viewBox="0 0 16 16" fill="none"
                                         xmlns="http://www.w3.org/2000/svg">
                                        <path
                                                d="M13.78 3.96303C12.504 2.16973 10.4086 1 8.04 1C4.15192 1 1 4.15192 1 8.04C1 11.9281 4.15192 15.08 8.04 15.08C11.9281 15.08 15.08 11.9281 15.08 8.04"
                                                stroke="#ddd" stroke-width="1.6" stroke-linecap="square"
                                                stroke-linejoin="round"></path>
                                        <path d="M14.4933 1L14.4933 4.52H10.9733" stroke="#ddd" stroke-width="1.6"
                                              stroke-linecap="square" stroke-linejoin="round"></path>
                                    </svg>
                                    <span id="reload">초기화</span>
                                </button>
                            </div>
                            <div id="filter-bottom">
                                <div class="side-bar">
                                    <button class="filtering-box">
                                        <div class="category">카테고리</div>
                                        <svg width="18" height="18" viewBox="0 0 18 18" fill="none" stroke="#999"
                                             xmlns="http://www.w3.org/2000/svg" class="css-innaj4 e1frj59j6"
                                             style="transform: rotate(0deg);">
                                            <path d="M5 11L9 7L13 11" stroke="#999" stroke-width="1.2"></path>
                                        </svg>
                                    </button>
                                    <nav class="select-options-box">
                                        <li class="select-options">
                                            <a href="/collections/market-best?page=1&amp;filters=category%3A717"
                                               class="select-options-area">
                                                <button class="check-button">
                                                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                                d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                                                stroke="#ddd" fill="none"></path>
                                                        <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
                                                              stroke-width="1.5" stroke-linecap="round"
                                                              stroke-linejoin="round"></path>
                                                    </svg>
                                                </button>
                                                <span class="kind">SUPER BIGSALE</span>
                                                <span class="number">105</span>
                                            </a>
                                        </li>
                                        <li class="select-options">
                                            <a href="/collections/market-best?page=1&amp;filters=category%3A912"
                                               class="select-options-area">
                                                <button class="check-button">
                                                    <svg width="18"
                                                         height="18" viewBox="0 0 24 24" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                                d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                                                stroke="#ddd" fill="none"></path>
                                                        <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
                                                              stroke-width="1.5" stroke-linecap="round"
                                                              stroke-linejoin="round"></path>
                                                    </svg>
                                                </button>
                                                <span class="kind">샐러드·간편식</span><span
                                                    class="number">53</span></a>
                                        </li>
                                        <li class="select-options">
                                            <a href="/collections/market-best?page=1&amp;filters=category%3A911"
                                               class="select-options-area">
                                                <button class="check-button">
                                                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                                d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                                                stroke="#ddd" fill="none"></path>
                                                        <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
                                                              stroke-width="1.5" stroke-linecap="round"
                                                              stroke-linejoin="round"></path>
                                                    </svg>
                                                </button>
                                                <span class="kind">국·반찬·메인요리</span>
                                                <span class="number">41</span>
                                            </a>
                                        </li>
                                        <li class="select-options">
                                            <a href="/collections/market-best?page=1&amp;filters=category%3A910"
                                               class="select-options-area">
                                                <button class="check-button">
                                                    <svg width="18"
                                                         height="18" viewBox="0 0 24 24" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                                d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                                                stroke="#ddd" fill="none"></path>
                                                        <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
                                                              stroke-width="1.5" stroke-linecap="round"
                                                              stroke-linejoin="round"></path>
                                                    </svg>
                                                </button>
                                                <span class="kind">정육·계란</span><span
                                                    class="number">28</span></a>
                                        </li>
                                        <li class="select-options">
                                            <a href="/collections/market-best?page=1&amp;filters=category%3A908"
                                               class="select-options-area">
                                                <button class="check-button">
                                                    <svg width="18"
                                                         height="18" viewBox="0 0 24 24" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                                d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                                                stroke="#ddd" fill="none"></path>
                                                        <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
                                                              stroke-width="1.5" stroke-linecap="round"
                                                              stroke-linejoin="round"></path>
                                                    </svg>
                                                </button>
                                                <span class="kind">과일·견과·쌀</span><span
                                                    class="number">23</span></a>
                                        </li>
                                        <li class="select-options">
                                            <a href="/collections/market-best?page=1&amp;filters=category%3A915"
                                               class="select-options-area">
                                                <button class="check-button">
                                                    <svg width="18"
                                                         height="18" viewBox="0 0 24 24" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                                d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                                                stroke="#ddd" fill="none"></path>
                                                        <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
                                                              stroke-width="1.5" stroke-linecap="round"
                                                              stroke-linejoin="round"></path>
                                                    </svg>
                                                </button>
                                                <span class="kind">베이커리·치즈·델리</span><span
                                                    class="number">17</span></a>
                                        </li>
                                        <li class="select-options">
                                            <a href="/collections/market-best?page=1&amp;filters=category%3A914"
                                               class="select-options-area">
                                                <button class="check-button">
                                                    <svg width="18"
                                                         height="18" viewBox="0 0 24 24" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                                d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                                                stroke="#ddd" fill="none"></path>
                                                        <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
                                                              stroke-width="1.5" stroke-linecap="round"
                                                              stroke-linejoin="round"></path>
                                                    </svg>
                                                </button>
                                                <span class="kind">생수·음료·우유·커피</span><span
                                                    class="number">17</span></a>
                                        </li>
                                        <li class="select-options">
                                            <a href="/collections/market-best?page=1&amp;filters=category%3A249"
                                               class="select-options-area">
                                                <button class="check-button">
                                                    <svg width="18"
                                                         height="18" viewBox="0 0 24 24" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                                d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                                                stroke="#ddd" fill="none"></path>
                                                        <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
                                                              stroke-width="1.5" stroke-linecap="round"
                                                              stroke-linejoin="round"></path>
                                                    </svg>
                                                </button>
                                                <span class="kind">간식·과자·떡</span><span
                                                    class="number">13</span></a>
                                        </li>
                                        <li class="select-options">
                                            <a href="/collections/market-best?page=1&amp;filters=category%3A909"
                                               class="select-options-area">
                                                <button class="check-button">
                                                    <svg width="18"
                                                         height="18" viewBox="0 0 24 24" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                                d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                                                stroke="#ddd" fill="none"></path>
                                                        <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
                                                              stroke-width="1.5" stroke-linecap="round"
                                                              stroke-linejoin="round"></path>
                                                    </svg>
                                                </button>
                                                <span class="kind">수산·해산·건어물</span><span
                                                    class="number">11</span></a>
                                        </li>
                                        <li class="select-options">
                                            <a href="/collections/market-best?page=1&amp;filters=category%3A032"
                                               class="select-options-area">
                                                <button class="check-button">
                                                    <svg width="18"
                                                         height="18" viewBox="0 0 24 24" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                                d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                                                stroke="#ddd" fill="none"></path>
                                                        <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
                                                              stroke-width="1.5" stroke-linecap="round"
                                                              stroke-linejoin="round"></path>
                                                    </svg>
                                                </button>
                                                <span class="kind">건강식품</span><span
                                                    class="number">10</span></a>
                                        </li>
                                        <button class="more-see">카테고리 더보기
                                            <svg width="18" height="18" viewBox="0 0 18 18" fill="none" stroke="#999"
                                                 xmlns="http://www.w3.org/2000/svg" class="more-view-category">
                                                <path d="M5 11L9 7L13 11" stroke="#999" stroke-width="1.2"></path>
                                            </svg>
                                        </button>
                                        </button>
                                    </nav>
                                </div>
                                <div class="side-bar">
                                    <button class="filtering-box">
                                        <div class="category">브랜드</div>
                                        <svg width="18" height="18" viewBox="0 0 18 18" fill="none" stroke="#999"
                                             xmlns="http://www.w3.org/2000/svg" class="css-innaj4 e1frj59j6"
                                             style="transform: rotate(0deg);">
                                            <path d="M5 11L9 7L13 11" stroke="#999" stroke-width="1.2"></path>
                                        </svg>
                                    </button>
                                    <nav class="select-options-box">
                                        <menu class="soon-group">
                                            <li class="soon">
                                                <button class="ganada-button">가나다순</button>
                                            </li>
                                            <li class="soon">
                                                <button class="many-product-button">상품 많은순</button>
                                            </li>
                                        </menu>
                                        <menu class="ganadara-group">
                                            <li class="brand-ganadara">
                                                <button class="entire-button" width="47">전체</button>
                                            </li>
                                            <li class="brand-ganadara">
                                                <button class="ganadara-button">ㄱ</button>
                                            </li>
                                            <li class="brand-ganadara">
                                                <button class="ganadara-button">ㄴ</button>
                                            </li>
                                            <li class="brand-ganadara">
                                                <button class="ganadara-button">ㄷ</button>
                                            </li>
                                            <li class="brand-ganadara">
                                                <button class="ganadara-button">ㄹ</button>
                                            </li>
                                            <li class="brand-ganadara">
                                                <button class="ganadara-button">ㅁ</button>
                                            </li>
                                            <li class="brand-ganadara">
                                                <button class="ganadara-button">ㅂ</button>
                                            </li>
                                            <li class="brand-ganadara">
                                                <button class="ganadara-button">ㅅ</button>
                                            </li>
                                            <li class="brand-ganadara">
                                                <button class="ganadara-button">ㅇ</button>
                                            </li>
                                            <li class="brand-ganadara">
                                                <button class="ganadara-button">ㅈ</button>
                                            </li>
                                            <li class="brand-ganadara">
                                                <button class="ganadara-button">ㅊ</button>
                                            </li>
                                            <li class="brand-ganadara">
                                                <button class="ganadara-button">ㅋ</button>
                                            </li>
                                            <li class="brand-ganadara">
                                                <button class="ganadara-button">ㅌ</button>
                                            </li>
                                            <li class="brand-ganadara">
                                                <button class="ganadara-button">ㅍ</button>
                                            </li>
                                            <li class="brand-ganadara">
                                                <button class="ganadara-button">ㅎ</button>
                                            </li>
                                            <li class="brand-ganadara">
                                                <button class="finally-button">A-Z</button>
                                            </li>
                                            <li class="brand-ganadara">
                                                <button class="finally-button">ETC</button>
                                            </li>
                                        </menu>
                                        <li class="select-options">
                                            <a href="/collections/market-best?page=1&amp;filters=brand%3Aitysrc"
                                               class="select-options-area">
                                                <button class="check-button">
                                                    <svg width="18"
                                                         height="18" viewBox="0 0 24 24" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                                d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                                                stroke="#ddd" fill="none"></path>
                                                        <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
                                                              stroke-width="1.5" stroke-linecap="round"
                                                              stroke-linejoin="round"></path>
                                                    </svg>
                                                </button>
                                                <span class="kind">강남면옥</span><span
                                                    class="number">1</span></a>
                                        </li>
                                        <li class="select-options">
                                            <a href="/collections/market-best?page=1&amp;filters=brand%3Akfydoc"
                                               class="select-options-area">
                                                <button class="check-button">
                                                    <svg width="18"
                                                         height="18" viewBox="0 0 24 24" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                                d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                                                stroke="#ddd" fill="none"></path>
                                                        <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
                                                              stroke-width="1.5" stroke-linecap="round"
                                                              stroke-linejoin="round"></path>
                                                    </svg>
                                                </button>
                                                <span class="kind">거대곰탕</span><span
                                                    class="number">1</span></a>
                                        </li>
                                        <li class="select-options">
                                            <a href="/collections/market-best?page=1&amp;filters=brand%3Atruuyd"
                                               class="select-options-area">
                                                <button class="check-button">
                                                    <svg width="18"
                                                         height="18" viewBox="0 0 24 24" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                                d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                                                stroke="#ddd" fill="none"></path>
                                                        <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
                                                              stroke-width="1.5" stroke-linecap="round"
                                                              stroke-linejoin="round"></path>
                                                    </svg>
                                                </button>
                                                <span class="kind">경주천년한우</span><span
                                                    class="number">1</span></a>
                                        </li>
                                        <li class="select-options">
                                            <a href="/collections/market-best?page=1&amp;filters=brand%3Axhd4rb"
                                               class="select-options-area">
                                                <button class="check-button">
                                                    <svg width="18"
                                                         height="18" viewBox="0 0 24 24" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                                d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                                                stroke="#ddd" fill="none"></path>
                                                        <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
                                                              stroke-width="1.5" stroke-linecap="round"
                                                              stroke-linejoin="round"></path>
                                                    </svg>
                                                </button>
                                                <span class="kind">고기반찬</span><span
                                                    class="number">1</span></a>
                                        </li>
                                        <li class="select-options">
                                            <a href="/collections/market-best?page=1&amp;filters=brand%3A0znxga"
                                               class="select-options-area">
                                                <button class="check-button">
                                                    <svg width="18"
                                                         height="18" viewBox="0 0 24 24" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                                d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                                                stroke="#ddd" fill="none"></path>
                                                        <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
                                                              stroke-width="1.5" stroke-linecap="round"
                                                              stroke-linejoin="round"></path>
                                                    </svg>
                                                </button>
                                                <span class="kind">고래사</span><span
                                                    class="number">2</span></a>
                                        </li>
                                        <li class="select-options">
                                            <a href="/collections/market-best?page=1&amp;filters=brand%3Avwi7nv"
                                               class="select-options-area">
                                                <button class="check-button">
                                                    <svg width="18"
                                                         height="18" viewBox="0 0 24 24" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                                d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                                                stroke="#ddd" fill="none"></path>
                                                        <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
                                                              stroke-width="1.5" stroke-linecap="round"
                                                              stroke-linejoin="round"></path>
                                                    </svg>
                                                </button>
                                                <span class="kind">교토마블</span><span
                                                    class="number">1</span></a>
                                        </li>
                                        <li class="select-options">
                                            <a href="/collections/market-best?page=1&amp;filters=brand%3Afy2shu"
                                               class="select-options-area">
                                                <button class="check-button">
                                                    <svg width="18"
                                                         height="18" viewBox="0 0 24 24" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                                d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                                                stroke="#ddd" fill="none"></path>
                                                        <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
                                                              stroke-width="1.5" stroke-linecap="round"
                                                              stroke-linejoin="round"></path>
                                                    </svg>
                                                </button>
                                                <span class="kind">귤로장생</span><span
                                                    class="number">1</span></a>
                                        </li>
                                        <li class="select-options">
                                            <a href="/collections/market-best?page=1&amp;filters=brand%3Axmz9j6"
                                               class="select-options-area">
                                                <button class="check-button">
                                                    <svg width="18"
                                                         height="18" viewBox="0 0 24 24" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                                d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                                                stroke="#ddd" fill="none"></path>
                                                        <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
                                                              stroke-width="1.5" stroke-linecap="round"
                                                              stroke-linejoin="round"></path>
                                                    </svg>
                                                </button>
                                                <span class="kind">귤림원</span><span
                                                    class="number">1</span></a>
                                        </li>
                                        <li class="select-options">
                                            <a href="/collections/market-best?page=1&amp;filters=brand%3Apvq3iq"
                                               class="select-options-area">
                                                <button class="check-button">
                                                    <svg width="18"
                                                         height="18" viewBox="0 0 24 24" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                                d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                                                stroke="#ddd" fill="none"></path>
                                                        <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
                                                              stroke-width="1.5" stroke-linecap="round"
                                                              stroke-linejoin="round"></path>
                                                    </svg>
                                                </button>
                                                <span class="kind">그래놀라 하우스</span><span
                                                    class="number">1</span></a>
                                        </li>
                                        <li class="select-options">
                                            <a href="/collections/market-best?page=1&amp;filters=brand%3Aa1aadm"
                                               class="select-options-area">
                                                <button class="check-button">
                                                    <svg width="18"
                                                         height="18" viewBox="0 0 24 24" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                                d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                                                stroke="#ddd" fill="none"></path>
                                                        <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
                                                              stroke-width="1.5" stroke-linecap="round"
                                                              stroke-linejoin="round"></path>
                                                    </svg>
                                                </button>
                                                <span class="kind">그릭데이</span><span
                                                    class="number">2</span></a>
                                        </li>
                                        <button class="more-see">브랜드 더보기
                                            <svg width="18" height="18" viewBox="0 0 18 18" fill="none" stroke="#999"
                                                 xmlns="http://www.w3.org/2000/svg" class="more-view-category">
                                                <path d="M5 11L9 7L13 11" stroke="#999" stroke-width="1.2"></path>
                                            </svg>
                                        </button>
                                        </button>
                                    </nav>
                                </div>
                                <div class="side-bar">
                                    <button class="filtering-box">
                                        <div class="category">가격</div>
                                        <svg width="18" height="18" viewBox="0 0 18 18" fill="none" stroke="#999"
                                             xmlns="http://www.w3.org/2000/svg" class="css-innaj4 e1frj59j6"
                                             style="transform: rotate(0deg);">
                                            <path d="M5 11L9 7L13 11" stroke="#999" stroke-width="1.2"></path>
                                        </svg>
                                    </button>
                                    <nav class="select-options-box">
                                        <li class="select-options">
                                            <a href="/collections/market-best?page=1&amp;filters=price%3A-6675"
                                               class="select-options-area">
                                                <button class="check-button">
                                                    <svg width="18"
                                                         height="18" viewBox="0 0 24 24" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                                d="M12 23.5C18.3513 23.5 23.5 18.3513 23.5 12C23.5 5.64873 18.3513 0.5 12 0.5C5.64873 0.5 0.5 5.64873 0.5 12C0.5 18.3513 5.64873 23.5 12 23.5Z"
                                                                fill="#fff" stroke="#ddd"></path>
                                                    </svg>
                                                </button>
                                                <span class="css-1buhy1h ee933652">6,675원 미만</span><span
                                                    class="number">56</span></a>
                                        </li>
                                        <li class="select-options">
                                            <a href="/collections/market-best?page=1&amp;filters=price%3A6675-9980"
                                               class="select-options-area">
                                                <button class="check-button">
                                                    <svg width="18"
                                                         height="18" viewBox="0 0 24 24" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                                d="M12 23.5C18.3513 23.5 23.5 18.3513 23.5 12C23.5 5.64873 18.3513 0.5 12 0.5C5.64873 0.5 0.5 5.64873 0.5 12C0.5 18.3513 5.64873 23.5 12 23.5Z"
                                                                fill="#fff" stroke="#ddd"></path>
                                                    </svg>
                                                </button>
                                                <span class="css-1buhy1h ee933652">6,675원 ~
                                                9,980원</span><span class="number">58</span></a>
                                        </li>
                                        <li class="select-options">
                                            <a href="/collections/market-best?page=1&amp;filters=price%3A9980-14990"
                                               class="select-options-area">
                                                <button class="check-button">
                                                    <svg width="18"
                                                         height="18" viewBox="0 0 24 24" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                                d="M12 23.5C18.3513 23.5 23.5 18.3513 23.5 12C23.5 5.64873 18.3513 0.5 12 0.5C5.64873 0.5 0.5 5.64873 0.5 12C0.5 18.3513 5.64873 23.5 12 23.5Z"
                                                                fill="#fff" stroke="#ddd"></path>
                                                    </svg>
                                                </button>
                                                <span class="css-1buhy1h ee933652">9,980원 ~
                                                14,990원</span><span class="number">57</span></a>
                                        </li>
                                        <li class="select-options">
                                            <a href="/collections/market-best?page=1&amp;filters=price%3A14990-"
                                               class="select-options-area">
                                                <button class="check-button">
                                                    <svg width="18"
                                                         height="18" viewBox="0 0 24 24" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                                d="M12 23.5C18.3513 23.5 23.5 18.3513 23.5 12C23.5 5.64873 18.3513 0.5 12 0.5C5.64873 0.5 0.5 5.64873 0.5 12C0.5 18.3513 5.64873 23.5 12 23.5Z"
                                                                fill="#fff" stroke="#ddd"></path>
                                                    </svg>
                                                </button>
                                                <span class="css-1buhy1h ee933652">14,990원 이상</span><span
                                                    class="number">59</span></a>
                                        </li>
                                    </nav>
                                </div>
                                <div class="side-bar">
                                    <button class="filtering-box">
                                        <div class="category">혜택</div>
                                        <svg width="18" height="18" viewBox="0 0 18 18" fill="none" stroke="#999"
                                             xmlns="http://www.w3.org/2000/svg" class="css-innaj4 e1frj59j6"
                                             style="transform: rotate(0deg);">
                                            <path d="M5 11L9 7L13 11" stroke="#999" stroke-width="1.2"></path>
                                        </svg>
                                    </button>
                                    <nav class="select-options-box">
                                        <li class="select-options">
                                            <a href="/collections/market-best?page=1&amp;filters=benefit%3Adiscount"
                                               class="select-options-area">
                                                <button class="check-button">
                                                    <svg width="18"
                                                         height="18" viewBox="0 0 24 24" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                                d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                                                stroke="#ddd" fill="none"></path>
                                                        <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
                                                              stroke-width="1.5" stroke-linecap="round"
                                                              stroke-linejoin="round"></path>
                                                    </svg>
                                                </button>
                                                <span class="css-1buhy1h ee933652">할인상품</span><span
                                                    class="number">162</span></a>
                                        </li>
                                        <li class="select-options">
                                            <a href="/collections/market-best?page=1&amp;filters=benefit%3Alimited"
                                               class="select-options-area">
                                                <button class="check-button">
                                                    <svg width="18"
                                                         height="18" viewBox="0 0 24 24" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                                d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                                                stroke="#ddd" fill="none"></path>
                                                        <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
                                                              stroke-width="1.5" stroke-linecap="round"
                                                              stroke-linejoin="round"></path>
                                                    </svg>
                                                </button>
                                                <span class="css-1buhy1h ee933652">한정수량</span><span
                                                    class="number">2</span></a>
                                        </li>
                                    </nav>
                                </div>
                                <div class="side-bar">
                                    <button class="filtering-box">
                                        <div class="category">유형</div>
                                        <svg width="18" height="18" viewBox="0 0 18 18" fill="none" stroke="#999"
                                             xmlns="http://www.w3.org/2000/svg" class="css-innaj4 e1frj59j6"
                                             style="transform: rotate(0deg);">
                                            <path d="M5 11L9 7L13 11" stroke="#999" stroke-width="1.2"></path>
                                        </svg>
                                    </button>
                                    <nav class="select-options-box">
                                        <li class="select-options">
                                            <a href="/collections/market-best?page=1&amp;filters=type%3Akurly_only"
                                               class="select-options-area">
                                                <button class="check-button">
                                                    <svg width="18"
                                                         height="18" viewBox="0 0 24 24" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                                d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                                                stroke="#ddd" fill="none"></path>
                                                        <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
                                                              stroke-width="1.5" stroke-linecap="round"
                                                              stroke-linejoin="round"></path>
                                                    </svg>
                                                </button>
                                                <span class="css-1buhy1h ee933652">Kurly Only</span><span
                                                    class="number">97</span></a>
                                        </li>
                                        <li class="select-options">
                                            <a href="/collections/market-best?page=1&amp;filters=type%3Ascarcity_value"
                                               class="select-options-area">
                                                <button class="check-button">
                                                    <svg width="18"
                                                         height="18" viewBox="0 0 24 24" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                                d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                                                stroke="#ddd" fill="none"></path>
                                                        <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
                                                              stroke-width="1.5" stroke-linecap="round"
                                                              stroke-linejoin="round"></path>
                                                    </svg>
                                                </button>
                                                <span class="css-1buhy1h ee933652">희소가치 프로젝트</span><span
                                                    class="number">4</span></a>
                                        </li>
                                    </nav>
                                </div>
                                <div class="side-bar">
                                    <button class="filtering-box">
                                        <div class="category">특정상품 제외</div>
                                        <svg width="18" height="18" viewBox="0 0 18 18" fill="none" stroke="#999"
                                             xmlns="http://www.w3.org/2000/svg" class="css-innaj4 e1frj59j6"
                                             style="transform: rotate(0deg);">
                                            <path d="M5 11L9 7L13 11" stroke="#999" stroke-width="1.2"></path>
                                        </svg>
                                    </button>
                                    <nav class="select-options-box">
                                        <li class="select-options">
                                            <a href="/collections/market-best?page=1&amp;filters=exclusion%3Aexclude_pet"
                                               class="select-options-area">
                                                <button class="check-button">
                                                    <svg width="18"
                                                         height="18" viewBox="0 0 24 24" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                                d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                                                stroke="#ddd" fill="none"></path>
                                                        <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
                                                              stroke-width="1.5" stroke-linecap="round"
                                                              stroke-linejoin="round"></path>
                                                    </svg>
                                                </button>
                                                <span class="css-1buhy1h ee933652">반려동물 상품</span><span
                                                    class="number">2</span></a>
                                        </li>
                                    </nav>
                                </div>
                            </div>
                        </div>
                            <%--필터 끝--%>


                        <div class="menu">
                            <div class="css-1stur9s eudxpx34">
                                <div class="css-crqql1 eudxpx33">총 ${totalCount}건</div>
                                <ul class="css-1vmfy7j eudxpx32">
                                    <li class="css-5uzvtq eudxpx31">
                                        <a href="${pageHandler.sc.goSelectPage(1)}&type=1"
                                           class="css-19ce13b eudxpx30">신상품순</a></li>
                                    <li class="css-5uzvtq eudxpx31">
                                        <a href="${pageHandler.sc.goSelectPage(1)}&type=2"
                                           class="css-19ce13b eudxpx30">혜택순</a></li>
                                    <li class="css-5uzvtq eudxpx31">
                                        <a href="${pageHandler.sc.goSelectPage(1)}&type=3"
                                           class="css-19ce13b eudxpx30">낮은 가격순</a></li>
                                    <li class="css-5uzvtq eudxpx31">
                                        <a href="${pageHandler.sc.goSelectPage(1)}&type=4"
                                           class="css-19ce13b eudxpx30">높은 가격순</a></li>
                                </ul>
                            </div>

                                <%--------------------------------------------------------------------------------------------------------------%>


                            <div class="css-11kh0cw ef36txc5">

                                <c:forEach var="productList" items="${productList}">
                                    <a href="/product/${productList.prod_id}" class="css-9o2zup e1c07x4813">
                                        <div class="css-0 e1c07x4811">
                                            <div class="e1c07x4812 css-tou8lf e3um3060">
                                    <span style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;">
                                        <img alt="상품 이미지" sizes="100vw"
                                            <%--srcset="https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3df368c8-e124-4d06-a9e9-af4c10d01b53.jpeg 640w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3df368c8-e124-4d06-a9e9-af4c10d01b53.jpeg 750w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3df368c8-e124-4d06-a9e9-af4c10d01b53.jpeg 828w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3df368c8-e124-4d06-a9e9-af4c10d01b53.jpeg 1080w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3df368c8-e124-4d06-a9e9-af4c10d01b53.jpeg 1200w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3df368c8-e124-4d06-a9e9-af4c10d01b53.jpeg 1920w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3df368c8-e124-4d06-a9e9-af4c10d01b53.jpeg 2048w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3df368c8-e124-4d06-a9e9-af4c10d01b53.jpeg 3840w"--%>
                                             src="${productList.prod_img_id}"
                                             decoding="async" data-nimg="fill" class="css-0"
                                             style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
                                    </span>
                                            </div>
                                        </div>
                                        <div class="button-wrapper">
                                            <button type="button" class="css-13xu5fn e17x72af0">
                                                <svg width="18" height="18" viewBox="0 0 18 18" fill="none"
                                                     xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
                                                          stroke="#333333" stroke-linecap="square"
                                                          stroke-linejoin="round"></path>
                                                </svg>
                                                담기
                                            </button>
                                        </div>
                                        <div class="css-1kpzrna e1c07x489">
                                            <span class="css-1qd61ut e1ms5t9c1">
                                                <span class="css-1vdqr5b e1ms5t9c0">에코배송</span>
                                            </span>
                                            <span class="css-1dry2r1 e1c07x488">${productList.prod_name}</span>
                                            <p class="css-1wejlc3 e1c07x486">${productList.short_desc}</p>
                                            <div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
                                                <div>
                                                    <span class="dimmed-price css-18tpqqq ei5rudb1">
                                                        <fmt:formatNumber value="${productList.prod_price}" pattern="#,###"/><span class="won">원</span>
                                                    </span>
                                                </div>
                                                <div class="discount">
                                                    <span class="discount-rate css-19lkxd2 ei5rudb0">${productList.disc_rate}%</span>
                                                    <span class="sales-price css-18tpqqq ei5rudb1">
                                                        <fmt:formatNumber value="${productList.disc_price}" pattern="#,###"/><span class="won">원</span>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="review-count css-xezqwk e1c07x482"><span
                                                    class="css-mz5g71 e1c07x481">
                                    <svg width="100%" height="100%" viewBox="0 0 14 14" fill="none"
                                         xmlns="http://www.w3.org/2000/svg">
                                        <mask id="path-1-inside-1_1513_17755" fill="white">
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                  d="M3 2C1.89543 2 1 2.89543 1 4V8.67201C1 9.77658 1.89543 10.672 3 10.672H5.11212L6.33682 12.7653C6.5299 13.0954 7.00688 13.0954 7.19995 12.7653L8.42465 10.672H10.5C11.6046 10.672 12.5 9.77658 12.5 8.67201V4C12.5 2.89543 11.6046 2 10.5 2H3Z"></path></mask><path
                                            fill="#999"
                                            d="M5.11212 10.672L5.97526 10.167L5.68564 9.67201H5.11212V10.672ZM6.33682 12.7653L5.47369 13.2703L5.47369 13.2703L6.33682 12.7653ZM7.19995 12.7653L6.33682 12.2604L6.33682 12.2604L7.19995 12.7653ZM8.42465 10.672V9.67201H7.85113L7.56152 10.167L8.42465 10.672ZM2 4C2 3.44772 2.44772 3 3 3V1C1.34315 1 0 2.34315 0 4H2ZM2 8.67201V4H0V8.67201H2ZM3 9.67201C2.44772 9.67201 2 9.22429 2 8.67201H0C0 10.3289 1.34315 11.672 3 11.672V9.67201ZM5.11212 9.67201H3V11.672H5.11212V9.67201ZM7.19995 12.2604L5.97526 10.167L4.24899 11.177L5.47369 13.2703L7.19995 12.2604ZM6.33682 12.2604C6.5299 11.9304 7.00688 11.9304 7.19995 12.2604L5.47369 13.2703C6.05291 14.2604 7.48386 14.2604 8.06309 13.2703L6.33682 12.2604ZM7.56152 10.167L6.33682 12.2604L8.06309 13.2703L9.28779 11.177L7.56152 10.167ZM10.5 9.67201H8.42465V11.672H10.5V9.67201ZM11.5 8.67201C11.5 9.22429 11.0523 9.67201 10.5 9.67201V11.672C12.1569 11.672 13.5 10.3289 13.5 8.67201H11.5ZM11.5 4V8.67201H13.5V4H11.5ZM10.5 3C11.0523 3 11.5 3.44772 11.5 4H13.5C13.5 2.34315 12.1569 1 10.5 1V3ZM3 3H10.5V1H3V3Z"
                                            mask="url(#path-1-inside-1_1513_17755)"></path>
                                    <circle fill="#999" cx="4.34998" cy="6.17871" r="0.75"></circle>
                                    <circle fill="#999" cx="6.75" cy="6.17871" r="0.75"></circle>
                                    <circle fill="#999" cx="9.15002" cy="6.17871" r="0.75"></circle>
                                </svg>
                                </span>

                                                <c:if test="${productList.rev_num gt 9999}">
                                                    <span class="review-number css-l610kl e1c07x480">9999+</span>
                                                </c:if>
                                                <c:if test="${productList.rev_num le 9999}">
                                                    <span class="review-number css-l610kl e1c07x480">${productList.rev_num}</span>
                                                </c:if>

                                            </div>
                                            <div class="css-1hrnl0u e1cvv2hm1"><span
                                                    class="css-1e5t2sz e1cvv2hm0">Ecoeats Only</span>
                                            </div>
                                        </div>
                                    </a>
                                </c:forEach>
                            </div>
                                <%-- 여기까지가 상품 리스트 --%>

                            <div> <%-- 여기부터는 페이징 관련 --%>
                                <div class="css-rdz8z7 e82lnfz1">
                                    <c:choose>
                                        <c:when test="${pageHandler.prev}">
                                            <a href="/${pageType}<c:if test="${pageType eq 'category'}">/${cat_code}</c:if>${pageHandler.sc.goSelectPage(1)}<c:if test="${type ne null}">&type=${type}</c:if>"
                                               class="css-1d20dg7 e82lnfz0">
                                                <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAkAAAAHCAQAAABwkq/rAAAAHUlEQVR42mNgAIPi/8X/kWkwA8SE0UQIMJAsCKMBBzk27fqtkcYAAAAASUVORK5CYII=">
                                            </a>
                                            <a href="/${pageType}<c:if test="${pageType eq 'category'}">/${cat_code}</c:if>${pageHandler.sc.goSelectPage(pageHandler.sc.page - 1)}<c:if test="${type ne null}">&type=${type}</c:if>"
                                               class="css-1d20dg7 e82lnfz0">
                                                <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAHCAQAAABqrk9lAAAAGElEQVR42mNgAIPi/8X/4QwwE5PBQJADAAKSG3cyVhtXAAAAAElFTkSuQmCC">
                                            </a>
                                        </c:when>
                                        <c:otherwise>
                                    <span class="css-1d20dg7 e82lnfz0">
                                        <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAkAAAAHCAQAAABwkq/rAAAAHUlEQVR42mNgAIPi/8X/kWkwA8SE0UQIMJAsCKMBBzk27fqtkcYAAAAASUVORK5CYII=">
                                    </span>
                                            <span class="css-1d20dg7 e82lnfz0">
                                        <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAHCAQAAABqrk9lAAAAGElEQVR42mNgAIPi/8X/4QwwE5PBQJADAAKSG3cyVhtXAAAAAElFTkSuQmCC">
                                    </span>
                                        </c:otherwise>
                                    </c:choose>

                                    <c:forEach var="pageNumber" begin="${pageHandler.beginPage}"
                                               end="${pageHandler.endPage}">
                                        <a href="/${pageType}<c:if test="${pageType eq 'category'}">/${cat_code}</c:if>${pageHandler.sc.goSelectPage(pageNumber)}<c:if test="${type ne null}">&type=${type}</c:if>"
                                           class="css-1d20dg7 e82lnfz0">${pageNumber}</a>
                                    </c:forEach>
                                    
                                    <c:choose>
                                        <c:when test="${pageHandler.next}">
                                            <a href="/${pageType}<c:if test="${pageType eq 'category'}">/${cat_code}</c:if>${pageHandler.sc.goSelectPage(pageHandler.sc.page + 1)}<c:if test="${type ne null}">&type=${type}</c:if>"
                                               class="css-1d20dg7 e82lnfz0">
                                                <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAHCAQAAABqrk9lAAAAGUlEQVR42mMo/l/8nwECQEwCHEwGhAlRBgA2mht3SwgzrwAAAABJRU5ErkJggg==">
                                            </a>
                                            <a href="/${pageType}<c:if test="${pageType eq 'category'}">/${cat_code}</c:if>${pageHandler.sc.goSelectPage(pageHandler.totalPage)}<c:if test="${type ne null}">&type=${type}</c:if>"
                                               class="css-1d20dg7 e82lnfz0">
                                                <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAkAAAAHCAQAAABwkq/rAAAAIElEQVR42mMo/l/8n4GBgQFGQ5kgDowmQZCwAMImhDkAb0k27Zcisn8AAAAASUVORK5CYII=">
                                            </a>
                                        </c:when>
                                        <c:otherwise>
                                    <span class="css-1d20dg7 e82lnfz0">
                                        <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAHCAQAAABqrk9lAAAAGUlEQVR42mMo/l/8nwECQEwCHEwGhAlRBgA2mht3SwgzrwAAAABJRU5ErkJggg==">
                                    </span>
                                            <span class="css-1d20dg7 e82lnfz0">
                                        <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAkAAAAHCAQAAABwkq/rAAAAIElEQVR42mMo/l/8n4GBgQFGQ5kgDowmQZCwAMImhDkAb0k27Zcisn8AAAAASUVORK5CYII=">
                                    </span>
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:otherwise>
            </c:choose>
            <%@ include file="../include/footer.jspf" %>
        </div>
    </div>
</div>
</body>
</html>