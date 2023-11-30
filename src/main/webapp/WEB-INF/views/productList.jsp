<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="./favicon.ico">
    <link rel="stylesheet" href="/resources/css/header-css.css">
    <link rel="stylesheet" href="/resources/css/productList-css.css">
    <title>ecoeats - best</title>
    <style>
        #best {
            padding-top: 50px;
        }

        .menu {
            width: 100%;
            background-color: white;
        }

        .css-1stur9s {
            display: flex;
            -webkit-box-align: center;
            align-items: center;
            -webkit-box-pack: justify;
            justify-content: space-between;
            padding-bottom: 20px;
            line-height: 20px;
        }

        .css-crqql1 {
            font-size: 14px;
            font-weight: 500;
            color: rgb(51, 51, 51);
        }

        .css-1vmfy7j {
            position: relative;
            display: flex;
            -webkit-box-align: center;
            align-items: center;
        }

        .css-5uzvtq {
            display: flex;
            -webkit-box-align: center;
            align-items: center;
            -webkit-box-pack: end;
            justify-content: flex-end;
            margin-left: 8px;
            font-size: 14px;
            color: rgb(153, 153, 153);
        }

        .css-5uzvtq::before {
            content: "";
            display: flex;
            width: 1px;
            height: 10px;
            margin-right: 8px;
            background-color: rgb(226, 226, 226);
        }
        .css-9o2zup {
            display: flex;
            flex-direction: column;
            height: 573px;
            color: rgb(51, 51, 51);
            cursor: pointer;
        }
        .css-tou8lf {
            overflow: hidden;
            position: relative;
            border-radius: 4px;
            background-color: rgb(245, 245, 245);
            width: 249px;
            height: 320px;
        }
        .css-9o2zup .button-wrapper {
            width: 100%;
            height: 36px;
            margin-top: 6px;
            border: 1px solid rgb(221, 221, 221);
            border-radius: 4px;
            display: flex;
            -webkit-box-pack: center;
            justify-content: center;
            -webkit-box-align: center;
            align-items: center;
        }
        .css-9o2zup .button-wrapper > button {
            height: 36px;
            font-size: 16px;
            line-height: 19px;
        }
        .css-13xu5fn {
            color: rgb(51, 51, 51);
            width: 100%;
            height: 32px;
            display: flex;
            -webkit-box-pack: center;
            justify-content: center;
            -webkit-box-align: center;
            align-items: center;
        }
        .css-1kpzrna {
            padding: 8px 10px 0px 0px;
        }
        .css-1qd61ut {
            display: block;
            padding-bottom: 2px;
        }
        .css-1vdqr5b {
            font-size: 14px;
            color: rgb(153, 153, 153);
            line-height: 19px;
            letter-spacing: -0.5px;
        }
        .css-1dry2r1 {
            max-height: 58px;
            font-size: 16px;
            line-height: 24px;
            letter-spacing: normal;
            display: -webkit-box;
            overflow: hidden;
            word-break: break-all;
            white-space: normal;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
        }
        .css-1wejlc3 {
            padding-top: 4px;
            font-size: 12px;
            color: rgb(153, 153, 153);
            line-height: 18px;
            letter-spacing: normal;
            display: -webkit-box;
            overflow: hidden;
            word-break: break-all;
            white-space: normal;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
        }
        .css-1tl7659 {
            display: flex;
            flex-direction: column;
            padding-top: 8px;
        }
        .css-1tl7659 .dimmed-price {
            font-size: 14px;
            color: rgb(181, 181, 181);
            text-decoration: line-through;
        }
        .css-1tl7659 .discount-rate {
            margin-right: 7px;
        }
        .css-1tl7659 .discount-rate, .css-1tl7659 .sales-price {
            font-weight: 800;
            font-size: 16px;
            line-height: 24px;
            white-space: nowrap;
            letter-spacing: -0.5px;
        }
        .css-19lkxd2 {
            color: rgb(250, 98, 47);
        }
        .css-xezqwk {
            display: flex;
            -webkit-box-align: center;
            align-items: center;
            padding-top: 8px;
            font-weight: 500;
            font-size: 13px;
            color: rgb(153, 153, 153);
            line-height: 17px;
        }
        .css-mz5g71 {
            width: 15px;
            height: 15px;
            margin: 1px -1px 0px 0px;
        }
        svg:not(:root) {
            overflow: hidden;
        }
        .css-l610kl {
            padding-left: 3px;
            font-weight: 400;
        }
        .css-11kh0cw {
            display: grid;
            grid-template-columns: repeat(auto-fill, 249px);
            gap: 31px 18px;
            width: 100%;
        }
    </style>
</head>

<body>
<div id="wrap">
    <div id="wrap-center">
        <div id="top">
            <div id="header">
                <div id="homeInfo">
                    <a>회원가입</a>
                    <div class="stick"></div>
                    <a>로그인</a>
                    <div class="stick"></div>
                    <div>
                        <a>고객센터<span></span></a>
                    </div>
                    <div class="menu">
                        <div>공지사항</div>
                        <div>자주하는 질문</div>
                        <div>1:1 문의</div>
                        <div>대량주문 문의</div>
                    </div>
                </div>
                <div id="search">
                    <div id="search-bar">
                        <img src="/resources/icons/kurly_logo.svg" alt="마켓컬리 로고">
                        <a>마켓컬리</a>
                        <div class="stick"></div>
                        <a>뷰티컬리</a>
                        <div id="search-center">
                            <input id="search-input" type="text" placeholder="검색어를 입력하세요.">
                            <button id="search-button">
                                <div><span class="blind">검색</span></div>
                            </button>
                        </div>
                        <div id="search-right">
                            <button href="#">
                                <span class="blind">배송지등록</span>
                            </button>
                            <button href="#">
                                <span class="blind">찜하기</span>
                            </button>
                            <button href="#">
                                <span class="blind">장바구니</span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div id="nev">
                <div id="category">
                    <span></span>
                    <span>카테고리</span>
                </div>
                <div id="meun">
                    <ul>
                        <li>
                            <span href="#">신상품</span>
                        </li>
                        <li>
                            <span href="#">베스트</span>
                        </li>
                        <li>
                            <span href="#">알뜰쇼핑</span>
                        </li>
                        <li>
                            <span href="#">특가/혜택</span>
                        </li>
                    </ul>
                </div>
                <div id="nev-right">
                    <div>
                        <span>샛별・택배</span>
                        <span>배송안내</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="wrap1">
    <div id="wrap1-center">
        <div id="header1"></div>
        <div id="search1"></div>
        <div id="navigation1"></div>
        <div id="main1">
            <h3 id="best">베스트</h3>
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


                <div class="menu">
                    <div class="css-1stur9s eudxpx34">
                        <div class="css-crqql1 eudxpx33">총 284건(count)</div>
                        <ul class="css-1vmfy7j eudxpx32">
                            <li class="css-5uzvtq eudxpx31">
                                <a href="#"
                                   class="css-19ce13b eudxpx30">신상품순</a></li>
                            <li class="css-5uzvtq eudxpx31">
                                <a href="#"
                                   class="css-19ce13b eudxpx30">혜택순</a></li>
                            <li class="css-5uzvtq eudxpx31">
                                <a href="#"
                                   class="css-19ce13b eudxpx30">낮은 가격순</a></li>
                            <li class="css-5uzvtq eudxpx31">
                                <a href="#"
                                   class="css-19ce13b eudxpx30">높은 가격순</a></li>
                        </ul>
                    </div>


                    <div class="css-11kh0cw ef36txc5">
                        <a href="#" class="css-9o2zup e1c07x4813">
                            <div class="css-0 e1c07x4811">
                                <div class="e1c07x4812 css-tou8lf e3um3060"><span
                                        style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
                                        alt="상품 이미지" sizes="100vw"
                                        srcset="https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3df368c8-e124-4d06-a9e9-af4c10d01b53.jpeg 640w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3df368c8-e124-4d06-a9e9-af4c10d01b53.jpeg 750w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3df368c8-e124-4d06-a9e9-af4c10d01b53.jpeg 828w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3df368c8-e124-4d06-a9e9-af4c10d01b53.jpeg 1080w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3df368c8-e124-4d06-a9e9-af4c10d01b53.jpeg 1200w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3df368c8-e124-4d06-a9e9-af4c10d01b53.jpeg 1920w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3df368c8-e124-4d06-a9e9-af4c10d01b53.jpeg 2048w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3df368c8-e124-4d06-a9e9-af4c10d01b53.jpeg 3840w"
                                        src="https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3df368c8-e124-4d06-a9e9-af4c10d01b53.jpeg"
                                        decoding="async" data-nimg="fill" class="css-0"
                                        style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;"></span>
                                </div>
                            </div>
                            <div class="button-wrapper">
                                <button type="button" class="css-13xu5fn e17x72af0">
                                    <svg width="18" height="18" viewBox="0 0 18 18" fill="none"
                                         xmlns="http://www.w3.org/2000/svg">
                                        <path d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
                                              stroke="#333333" stroke-linecap="square" stroke-linejoin="round"></path>
                                    </svg>
                                    담기
                                </button>
                            </div>
                            <div class="css-1kpzrna e1c07x489"><span class="css-1qd61ut e1ms5t9c1"><span
                                    class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span class="css-1dry2r1 e1c07x488">[압구정주꾸미] 주꾸미 볶음 2종 (택1)</span>
                                <p class="css-1wejlc3 e1c07x486">마늘의 감칠맛이 듬뿍</p>
                                <div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
                                    <div><span class="dimmed-price css-18tpqqq ei5rudb1">8,900<span class="won">원</span></span>
                                    </div>
                                    <div class="discount"><span
                                            class="discount-rate css-19lkxd2 ei5rudb0">26%</span><span
                                            class="sales-price css-18tpqqq ei5rudb1">6,565<span
                                            class="won">원</span>~</span></div>
                                </div>
                                <div class="review-count css-xezqwk e1c07x482"><span class="css-mz5g71 e1c07x481"><svg
                                        width="100%" height="100%" viewBox="0 0 14 14" fill="none"
                                        xmlns="http://www.w3.org/2000/svg"><mask id="path-1-inside-1_1513_17755"
                                                                                 fill="white"><path fill-rule="evenodd"
                                                                                                    clip-rule="evenodd"
                                                                                                    d="M3 2C1.89543 2 1 2.89543 1 4V8.67201C1 9.77658 1.89543 10.672 3 10.672H5.11212L6.33682 12.7653C6.5299 13.0954 7.00688 13.0954 7.19995 12.7653L8.42465 10.672H10.5C11.6046 10.672 12.5 9.77658 12.5 8.67201V4C12.5 2.89543 11.6046 2 10.5 2H3Z"></path></mask><path
                                        fill="#999"
                                        d="M5.11212 10.672L5.97526 10.167L5.68564 9.67201H5.11212V10.672ZM6.33682 12.7653L5.47369 13.2703L5.47369 13.2703L6.33682 12.7653ZM7.19995 12.7653L6.33682 12.2604L6.33682 12.2604L7.19995 12.7653ZM8.42465 10.672V9.67201H7.85113L7.56152 10.167L8.42465 10.672ZM2 4C2 3.44772 2.44772 3 3 3V1C1.34315 1 0 2.34315 0 4H2ZM2 8.67201V4H0V8.67201H2ZM3 9.67201C2.44772 9.67201 2 9.22429 2 8.67201H0C0 10.3289 1.34315 11.672 3 11.672V9.67201ZM5.11212 9.67201H3V11.672H5.11212V9.67201ZM7.19995 12.2604L5.97526 10.167L4.24899 11.177L5.47369 13.2703L7.19995 12.2604ZM6.33682 12.2604C6.5299 11.9304 7.00688 11.9304 7.19995 12.2604L5.47369 13.2703C6.05291 14.2604 7.48386 14.2604 8.06309 13.2703L6.33682 12.2604ZM7.56152 10.167L6.33682 12.2604L8.06309 13.2703L9.28779 11.177L7.56152 10.167ZM10.5 9.67201H8.42465V11.672H10.5V9.67201ZM11.5 8.67201C11.5 9.22429 11.0523 9.67201 10.5 9.67201V11.672C12.1569 11.672 13.5 10.3289 13.5 8.67201H11.5ZM11.5 4V8.67201H13.5V4H11.5ZM10.5 3C11.0523 3 11.5 3.44772 11.5 4H13.5C13.5 2.34315 12.1569 1 10.5 1V3ZM3 3H10.5V1H3V3Z"
                                        mask="url(#path-1-inside-1_1513_17755)"></path><circle fill="#999" cx="4.34998"
                                                                                               cy="6.17871"
                                                                                               r="0.75"></circle><circle
                                        fill="#999" cx="6.75" cy="6.17871" r="0.75"></circle><circle fill="#999"
                                                                                                     cx="9.15002"
                                                                                                     cy="6.17871"
                                                                                                     r="0.75"></circle></svg></span><span
                                        class="review-number css-l610kl e1c07x480">9,999+</span></div>
                                <div class="css-1hrnl0u e1cvv2hm1"><span class="css-1e5t2sz e1cvv2hm0">Kurly Only</span>
                                </div>
                            </div>
                        </a>
                        <a href="#" class="css-9o2zup e1c07x4813">
                            <div class="css-0 e1c07x4811">
                                <div class="e1c07x4812 css-tou8lf e3um3060"><span
                                        style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
                                        alt="상품 이미지" sizes="100vw"
                                        srcset="https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3df368c8-e124-4d06-a9e9-af4c10d01b53.jpeg 640w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3df368c8-e124-4d06-a9e9-af4c10d01b53.jpeg 750w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3df368c8-e124-4d06-a9e9-af4c10d01b53.jpeg 828w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3df368c8-e124-4d06-a9e9-af4c10d01b53.jpeg 1080w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3df368c8-e124-4d06-a9e9-af4c10d01b53.jpeg 1200w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3df368c8-e124-4d06-a9e9-af4c10d01b53.jpeg 1920w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3df368c8-e124-4d06-a9e9-af4c10d01b53.jpeg 2048w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3df368c8-e124-4d06-a9e9-af4c10d01b53.jpeg 3840w"
                                        src="https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3df368c8-e124-4d06-a9e9-af4c10d01b53.jpeg"
                                        decoding="async" data-nimg="fill" class="css-0"
                                        style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;"></span>
                                </div>
                            </div>
                            <div class="button-wrapper">
                                <button type="button" class="css-13xu5fn e17x72af0">
                                    <svg width="18" height="18" viewBox="0 0 18 18" fill="none"
                                         xmlns="http://www.w3.org/2000/svg">
                                        <path d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
                                              stroke="#333333" stroke-linecap="square" stroke-linejoin="round"></path>
                                    </svg>
                                    담기
                                </button>
                            </div>
                            <div class="css-1kpzrna e1c07x489"><span class="css-1qd61ut e1ms5t9c1"><span
                                    class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span class="css-1dry2r1 e1c07x488">[압구정주꾸미] 주꾸미 볶음 2종 (택1)</span>
                                <p class="css-1wejlc3 e1c07x486">마늘의 감칠맛이 듬뿍</p>
                                <div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
                                    <div><span class="dimmed-price css-18tpqqq ei5rudb1">8,900<span class="won">원</span></span>
                                    </div>
                                    <div class="discount"><span
                                            class="discount-rate css-19lkxd2 ei5rudb0">26%</span><span
                                            class="sales-price css-18tpqqq ei5rudb1">6,565<span
                                            class="won">원</span>~</span></div>
                                </div>
                                <div class="review-count css-xezqwk e1c07x482"><span class="css-mz5g71 e1c07x481"><svg
                                        width="100%" height="100%" viewBox="0 0 14 14" fill="none"
                                        xmlns="http://www.w3.org/2000/svg"><mask id="path-1-inside-1_1513_17755"
                                                                                 fill="white"><path fill-rule="evenodd"
                                                                                                    clip-rule="evenodd"
                                                                                                    d="M3 2C1.89543 2 1 2.89543 1 4V8.67201C1 9.77658 1.89543 10.672 3 10.672H5.11212L6.33682 12.7653C6.5299 13.0954 7.00688 13.0954 7.19995 12.7653L8.42465 10.672H10.5C11.6046 10.672 12.5 9.77658 12.5 8.67201V4C12.5 2.89543 11.6046 2 10.5 2H3Z"></path></mask><path
                                        fill="#999"
                                        d="M5.11212 10.672L5.97526 10.167L5.68564 9.67201H5.11212V10.672ZM6.33682 12.7653L5.47369 13.2703L5.47369 13.2703L6.33682 12.7653ZM7.19995 12.7653L6.33682 12.2604L6.33682 12.2604L7.19995 12.7653ZM8.42465 10.672V9.67201H7.85113L7.56152 10.167L8.42465 10.672ZM2 4C2 3.44772 2.44772 3 3 3V1C1.34315 1 0 2.34315 0 4H2ZM2 8.67201V4H0V8.67201H2ZM3 9.67201C2.44772 9.67201 2 9.22429 2 8.67201H0C0 10.3289 1.34315 11.672 3 11.672V9.67201ZM5.11212 9.67201H3V11.672H5.11212V9.67201ZM7.19995 12.2604L5.97526 10.167L4.24899 11.177L5.47369 13.2703L7.19995 12.2604ZM6.33682 12.2604C6.5299 11.9304 7.00688 11.9304 7.19995 12.2604L5.47369 13.2703C6.05291 14.2604 7.48386 14.2604 8.06309 13.2703L6.33682 12.2604ZM7.56152 10.167L6.33682 12.2604L8.06309 13.2703L9.28779 11.177L7.56152 10.167ZM10.5 9.67201H8.42465V11.672H10.5V9.67201ZM11.5 8.67201C11.5 9.22429 11.0523 9.67201 10.5 9.67201V11.672C12.1569 11.672 13.5 10.3289 13.5 8.67201H11.5ZM11.5 4V8.67201H13.5V4H11.5ZM10.5 3C11.0523 3 11.5 3.44772 11.5 4H13.5C13.5 2.34315 12.1569 1 10.5 1V3ZM3 3H10.5V1H3V3Z"
                                        mask="url(#path-1-inside-1_1513_17755)"></path><circle fill="#999" cx="4.34998"
                                                                                               cy="6.17871"
                                                                                               r="0.75"></circle><circle
                                        fill="#999" cx="6.75" cy="6.17871" r="0.75"></circle><circle fill="#999"
                                                                                                     cx="9.15002"
                                                                                                     cy="6.17871"
                                                                                                     r="0.75"></circle></svg></span><span
                                        class="review-number css-l610kl e1c07x480">9,999+</span></div>
                                <div class="css-1hrnl0u e1cvv2hm1"><span class="css-1e5t2sz e1cvv2hm0">Kurly Only</span>
                                </div>
                            </div>
                        </a>
                        <a href="#" class="css-9o2zup e1c07x4813">
                            <div class="css-0 e1c07x4811">
                                <div class="e1c07x4812 css-tou8lf e3um3060"><span
                                        style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
                                        alt="상품 이미지" sizes="100vw"
                                        srcset="https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3df368c8-e124-4d06-a9e9-af4c10d01b53.jpeg 640w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3df368c8-e124-4d06-a9e9-af4c10d01b53.jpeg 750w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3df368c8-e124-4d06-a9e9-af4c10d01b53.jpeg 828w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3df368c8-e124-4d06-a9e9-af4c10d01b53.jpeg 1080w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3df368c8-e124-4d06-a9e9-af4c10d01b53.jpeg 1200w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3df368c8-e124-4d06-a9e9-af4c10d01b53.jpeg 1920w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3df368c8-e124-4d06-a9e9-af4c10d01b53.jpeg 2048w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3df368c8-e124-4d06-a9e9-af4c10d01b53.jpeg 3840w"
                                        src="https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3df368c8-e124-4d06-a9e9-af4c10d01b53.jpeg"
                                        decoding="async" data-nimg="fill" class="css-0"
                                        style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;"></span>
                                </div>
                            </div>
                            <div class="button-wrapper">
                                <button type="button" class="css-13xu5fn e17x72af0">
                                    <svg width="18" height="18" viewBox="0 0 18 18" fill="none"
                                         xmlns="http://www.w3.org/2000/svg">
                                        <path d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
                                              stroke="#333333" stroke-linecap="square" stroke-linejoin="round"></path>
                                    </svg>
                                    담기
                                </button>
                            </div>
                            <div class="css-1kpzrna e1c07x489"><span class="css-1qd61ut e1ms5t9c1"><span
                                    class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span class="css-1dry2r1 e1c07x488">[압구정주꾸미] 주꾸미 볶음 2종 (택1)</span>
                                <p class="css-1wejlc3 e1c07x486">마늘의 감칠맛이 듬뿍</p>
                                <div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
                                    <div><span class="dimmed-price css-18tpqqq ei5rudb1">8,900<span class="won">원</span></span>
                                    </div>
                                    <div class="discount"><span
                                            class="discount-rate css-19lkxd2 ei5rudb0">26%</span><span
                                            class="sales-price css-18tpqqq ei5rudb1">6,565<span
                                            class="won">원</span>~</span></div>
                                </div>
                                <div class="review-count css-xezqwk e1c07x482"><span class="css-mz5g71 e1c07x481"><svg
                                        width="100%" height="100%" viewBox="0 0 14 14" fill="none"
                                        xmlns="http://www.w3.org/2000/svg"><mask id="path-1-inside-1_1513_17755"
                                                                                 fill="white"><path fill-rule="evenodd"
                                                                                                    clip-rule="evenodd"
                                                                                                    d="M3 2C1.89543 2 1 2.89543 1 4V8.67201C1 9.77658 1.89543 10.672 3 10.672H5.11212L6.33682 12.7653C6.5299 13.0954 7.00688 13.0954 7.19995 12.7653L8.42465 10.672H10.5C11.6046 10.672 12.5 9.77658 12.5 8.67201V4C12.5 2.89543 11.6046 2 10.5 2H3Z"></path></mask><path
                                        fill="#999"
                                        d="M5.11212 10.672L5.97526 10.167L5.68564 9.67201H5.11212V10.672ZM6.33682 12.7653L5.47369 13.2703L5.47369 13.2703L6.33682 12.7653ZM7.19995 12.7653L6.33682 12.2604L6.33682 12.2604L7.19995 12.7653ZM8.42465 10.672V9.67201H7.85113L7.56152 10.167L8.42465 10.672ZM2 4C2 3.44772 2.44772 3 3 3V1C1.34315 1 0 2.34315 0 4H2ZM2 8.67201V4H0V8.67201H2ZM3 9.67201C2.44772 9.67201 2 9.22429 2 8.67201H0C0 10.3289 1.34315 11.672 3 11.672V9.67201ZM5.11212 9.67201H3V11.672H5.11212V9.67201ZM7.19995 12.2604L5.97526 10.167L4.24899 11.177L5.47369 13.2703L7.19995 12.2604ZM6.33682 12.2604C6.5299 11.9304 7.00688 11.9304 7.19995 12.2604L5.47369 13.2703C6.05291 14.2604 7.48386 14.2604 8.06309 13.2703L6.33682 12.2604ZM7.56152 10.167L6.33682 12.2604L8.06309 13.2703L9.28779 11.177L7.56152 10.167ZM10.5 9.67201H8.42465V11.672H10.5V9.67201ZM11.5 8.67201C11.5 9.22429 11.0523 9.67201 10.5 9.67201V11.672C12.1569 11.672 13.5 10.3289 13.5 8.67201H11.5ZM11.5 4V8.67201H13.5V4H11.5ZM10.5 3C11.0523 3 11.5 3.44772 11.5 4H13.5C13.5 2.34315 12.1569 1 10.5 1V3ZM3 3H10.5V1H3V3Z"
                                        mask="url(#path-1-inside-1_1513_17755)"></path><circle fill="#999" cx="4.34998"
                                                                                               cy="6.17871"
                                                                                               r="0.75"></circle><circle
                                        fill="#999" cx="6.75" cy="6.17871" r="0.75"></circle><circle fill="#999"
                                                                                                     cx="9.15002"
                                                                                                     cy="6.17871"
                                                                                                     r="0.75"></circle></svg></span><span
                                        class="review-number css-l610kl e1c07x480">9,999+</span></div>
                                <div class="css-1hrnl0u e1cvv2hm1"><span class="css-1e5t2sz e1cvv2hm0">Kurly Only</span>
                                </div>
                            </div>
                        </a>
                    </div>


                    <div>

                    </div>


                </div>
            </div>
        </div>
    </div>
</div>
</body>

</html>