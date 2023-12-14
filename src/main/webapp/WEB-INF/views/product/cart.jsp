<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>장바구니</title>
    <link rel="stylesheet" href="/resources/product/css/main-css.css">
    <link rel="stylesheet" href="/resources/product/css/cart.css">
    <link rel="stylesheet" href="/resources/product/css/footer.css">
    <style>
    /*드롭 다운 카테고리 (수정 필요)*/
    nav {
    overflow: hidden;
    }

    .dropdown {
    float: left;
    overflow: hidden;
    }

    .dropbtn {
    font-size: 16px;
    border: none;
    outline: none;
    padding: 14px 16px;
    background-color: inherit;
    font-family: inherit;
    margin: 0;
    cursor: pointer;
    }

    .dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
    z-index: 1;
    }

    .dropdown-content a {
    float: none;
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
    }

    .dropdown-content a:hover {
    background-color: #ddd;
    }

    .dropdown:hover .dropdown-content {
    display: block;
    }
    </style>
</head>
<body>

<%@ include file="../include/header.jspf" %>

<div class="css-1pz4b76 er0tf675">
    <h2 class="css-1n2hipb er0tf674">장바구니</h2>
    <div></div>
    <div class="css-a6t9xs er0tf673">
        <div class="css-8wfj4z er0tf672">
            <div class="css-20o6z0 e149z643">
                <div class="css-zbxehx e149z642"><label class="css-xi6i4x e1dcessg3"><input type="checkbox"
                                                                                            class="css-agvwxo e1dcessg2">
                    <div class="css-79hxr7 e1dcessg1"><svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                           xmlns="http://www.w3.org/2000/svg">
                        <path
                                d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                stroke="#ddd" fill="#fff"></path>
                        <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round"
                              stroke-linejoin="round"></path>
                    </svg></div><span>전체선택 (0/1)</span>
                </label><span class="css-454d5e e149z641"></span><button disabled=""
                                                                         class="css-0 e149z640">선택삭제</button></div>
            </div>
            <div class="css-2lvxh7 ej77nku0">
                <div>
                    <h4 class="css-td54hr e1w1cmkx0"><span class="css-1nzj0g2 e6yclqm1"><span
                            class="css-12dwhid e6yclqm0"><span class="css-qct1ee ev909jf0"></span></span>냉장 상품</span><button
                            data-testid="fold-button" class="css-lvqq7y e17cst860"><svg width="30" height="30"
                                                                                        viewBox="0 0 30 30" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                        <defs>
                            <path id="7a02qqg3ja" d="M11 12h9v9"></path>
                        </defs>
                        <g fill="none" fill-rule="evenodd">
                            <path d="M0 0h30v30H0z"></path>
                            <use stroke="#333" stroke-width="2" stroke-linecap="square" transform="rotate(-45 15.5 16.5)"
                                 href="#7a02qqg3ja"></use>
                        </g>
                    </svg></button></h4>
                    <ul>
                        <li class="css-1d6kgf6 esoayg811"><label class="css-14td1km e1dcessg3"><input type="checkbox"
                                                                                                      class="css-agvwxo e1dcessg2">
                            <div class="css-79hxr7 e1dcessg1"><svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                   xmlns="http://www.w3.org/2000/svg">
                                <path
                                        d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                        stroke="#ddd" fill="#fff"></path>
                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round"
                                      stroke-linejoin="round"></path>
                            </svg></div><span></span>
                        </label><a class="css-1u5t3pw esoayg810"><span class="css-1usz68g esoayg89"></span></a>
                            <div class="css-14sb0pe esoayg88"><a class="css-e0dnmk esoayg87">
                                <p class="css-efcx1u esoayg86">유명산지 설향딸기 500g</p>
                                <p data-testid="content-product-name" class="css-3izcs6 esoayg85">12월 제철과일 골라담기 (택1)</p>
                            </a>
                                <div class="css-ar9i78 esoayg82"></div>
                            </div>
                            <div class="css-1gueo66 e1cqr3m40"><button type="button" aria-label="수량내리기"
                                                                       class="css-8azp8 e1hx75jb0"></button>
                                <div class="count css-6m57y0 e1cqr3m41">6</div><button type="button" aria-label="수량올리기"
                                                                                       class="css-18y6jr4 e1hx75jb0"></button>
                            </div>
                            <div class="css-5w3ssu esoayg84"><span aria-label="할인 가격" data-testid="product-price"
                                                                   class="css-zq4evb e2qzex51">83,400원</span><span aria-label="판매 가격" data-testid="selling-price"
                                                                                                                   class="css-cwmxfz e2qzex50">89,400원</span></div><button class="css-h5zdhc eudrkjx0"
                                                                                                                                                                           type="button" data-testid="delete"><span class="css-6mgkir e5h3i930"></span></button>
                        </li>
                    </ul>
                    <ul>
                        <li class="css-1d6kgf6 esoayg811"><label class="css-14td1km e1dcessg3"><input type="checkbox"
                                                                                                      class="css-agvwxo e1dcessg2">
                            <div class="css-79hxr7 e1dcessg1"><svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                   xmlns="http://www.w3.org/2000/svg">
                                <path
                                        d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                        stroke="#ddd" fill="#fff"></path>
                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round"
                                      stroke-linejoin="round"></path>
                            </svg></div><span></span>
                        </label><a class="css-1u5t3pw esoayg810"><span class="css-1usz68g esoayg89"></span></a>
                            <div class="css-14sb0pe esoayg88"><a class="css-e0dnmk esoayg87">
                                <p class="css-efcx1u esoayg86">유명산지 설향딸기 500g</p>
                                <p data-testid="content-product-name" class="css-3izcs6 esoayg85">12월 제철과일 골라담기 (택1)</p>
                            </a>
                                <div class="css-ar9i78 esoayg82"></div>
                            </div>
                            <div class="css-1gueo66 e1cqr3m40"><button type="button" aria-label="수량내리기"
                                                                       class="css-8azp8 e1hx75jb0"></button>
                                <div class="count css-6m57y0 e1cqr3m41">6</div><button type="button" aria-label="수량올리기"
                                                                                       class="css-18y6jr4 e1hx75jb0"></button>
                            </div>
                            <div class="css-5w3ssu esoayg84"><span aria-label="할인 가격" data-testid="product-price"
                                                                   class="css-zq4evb e2qzex51">83,400원</span><span aria-label="판매 가격" data-testid="selling-price"
                                                                                                                   class="css-cwmxfz e2qzex50">89,400원</span></div><button class="css-h5zdhc eudrkjx0"
                                                                                                                                                                           type="button" data-testid="delete"><span class="css-6mgkir e5h3i930"></span></button>
                        </li>
                    </ul>
                    <ul>
                        <li class="css-1d6kgf6 esoayg811"><label class="css-14td1km e1dcessg3"><input type="checkbox"
                                                                                                      class="css-agvwxo e1dcessg2">
                            <div class="css-79hxr7 e1dcessg1"><svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                   xmlns="http://www.w3.org/2000/svg">
                                <path
                                        d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                        stroke="#ddd" fill="#fff"></path>
                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round"
                                      stroke-linejoin="round"></path>
                            </svg></div><span></span>
                        </label><a class="css-1u5t3pw esoayg810"><span class="css-1usz68g esoayg89"></span></a>
                            <div class="css-14sb0pe esoayg88"><a class="css-e0dnmk esoayg87">
                                <p class="css-efcx1u esoayg86">유명산지 설향딸기 500g</p>
                                <p data-testid="content-product-name" class="css-3izcs6 esoayg85">12월 제철과일 골라담기 (택1)</p>
                            </a>
                                <div class="css-ar9i78 esoayg82"></div>
                            </div>
                            <div class="css-1gueo66 e1cqr3m40"><button type="button" aria-label="수량내리기"
                                                                       class="css-8azp8 e1hx75jb0"></button>
                                <div class="count css-6m57y0 e1cqr3m41">6</div><button type="button" aria-label="수량올리기"
                                                                                       class="css-18y6jr4 e1hx75jb0"></button>
                            </div>
                            <div class="css-5w3ssu esoayg84"><span aria-label="할인 가격" data-testid="product-price"
                                                                   class="css-zq4evb e2qzex51">83,400원</span><span aria-label="판매 가격" data-testid="selling-price"
                                                                                                                   class="css-cwmxfz e2qzex50">89,400원</span></div><button class="css-h5zdhc eudrkjx0"
                                                                                                                                                                           type="button" data-testid="delete"><span class="css-6mgkir e5h3i930"></span></button>
                        </li>
                    </ul>
                    <ul>
                        <li class="css-1d6kgf6 esoayg811"><label class="css-14td1km e1dcessg3"><input type="checkbox"
                                                                                                      class="css-agvwxo e1dcessg2">
                            <div class="css-79hxr7 e1dcessg1"><svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                   xmlns="http://www.w3.org/2000/svg">
                                <path
                                        d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                        stroke="#ddd" fill="#fff"></path>
                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round"
                                      stroke-linejoin="round"></path>
                            </svg></div><span></span>
                        </label><a class="css-1u5t3pw esoayg810"><span class="css-1usz68g esoayg89"></span></a>
                            <div class="css-14sb0pe esoayg88"><a class="css-e0dnmk esoayg87">
                                <p class="css-efcx1u esoayg86">유명산지 설향딸기 500g</p>
                                <p data-testid="content-product-name" class="css-3izcs6 esoayg85">12월 제철과일 골라담기 (택1)</p>
                            </a>
                                <div class="css-ar9i78 esoayg82"></div>
                            </div>
                            <div class="css-1gueo66 e1cqr3m40"><button type="button" aria-label="수량내리기"
                                                                       class="css-8azp8 e1hx75jb0"></button>
                                <div class="count css-6m57y0 e1cqr3m41">6</div><button type="button" aria-label="수량올리기"
                                                                                       class="css-18y6jr4 e1hx75jb0"></button>
                            </div>
                            <div class="css-5w3ssu esoayg84"><span aria-label="할인 가격" data-testid="product-price"
                                                                   class="css-zq4evb e2qzex51">83,400원</span><span aria-label="판매 가격" data-testid="selling-price"
                                                                                                                   class="css-cwmxfz e2qzex50">89,400원</span></div><button class="css-h5zdhc eudrkjx0"
                                                                                                                                                                           type="button" data-testid="delete"><span class="css-6mgkir e5h3i930"></span></button>
                        </li>
                    </ul>
                    <ul>
                        <li class="css-1d6kgf6 esoayg811"><label class="css-14td1km e1dcessg3"><input type="checkbox"
                                                                                                      class="css-agvwxo e1dcessg2">
                            <div class="css-79hxr7 e1dcessg1"><svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                   xmlns="http://www.w3.org/2000/svg">
                                <path
                                        d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                        stroke="#ddd" fill="#fff"></path>
                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round"
                                      stroke-linejoin="round"></path>
                            </svg></div><span></span>
                        </label><a class="css-1u5t3pw esoayg810"><span class="css-1usz68g esoayg89"></span></a>
                            <div class="css-14sb0pe esoayg88"><a class="css-e0dnmk esoayg87">
                                <p class="css-efcx1u esoayg86">유명산지 설향딸기 500g</p>
                                <p data-testid="content-product-name" class="css-3izcs6 esoayg85">12월 제철과일 골라담기 (택1)</p>
                            </a>
                                <div class="css-ar9i78 esoayg82"></div>
                            </div>
                            <div class="css-1gueo66 e1cqr3m40"><button type="button" aria-label="수량내리기"
                                                                       class="css-8azp8 e1hx75jb0"></button>
                                <div class="count css-6m57y0 e1cqr3m41">6</div><button type="button" aria-label="수량올리기"
                                                                                       class="css-18y6jr4 e1hx75jb0"></button>
                            </div>
                            <div class="css-5w3ssu esoayg84"><span aria-label="할인 가격" data-testid="product-price"
                                                                   class="css-zq4evb e2qzex51">83,400원</span><span aria-label="판매 가격" data-testid="selling-price"
                                                                                                                   class="css-cwmxfz e2qzex50">89,400원</span></div><button class="css-h5zdhc eudrkjx0"
                                                                                                                                                                           type="button" data-testid="delete"><span class="css-6mgkir e5h3i930"></span></button>
                        </li>
                    </ul>
                    <ul>
                        <li class="css-1d6kgf6 esoayg811"><label class="css-14td1km e1dcessg3"><input type="checkbox"
                                                                                                      class="css-agvwxo e1dcessg2">
                            <div class="css-79hxr7 e1dcessg1"><svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                   xmlns="http://www.w3.org/2000/svg">
                                <path
                                        d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                        stroke="#ddd" fill="#fff"></path>
                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round"
                                      stroke-linejoin="round"></path>
                            </svg></div><span></span>
                        </label><a class="css-1u5t3pw esoayg810"><span class="css-1usz68g esoayg89"></span></a>
                            <div class="css-14sb0pe esoayg88"><a class="css-e0dnmk esoayg87">
                                <p class="css-efcx1u esoayg86">유명산지 설향딸기 500g</p>
                                <p data-testid="content-product-name" class="css-3izcs6 esoayg85">12월 제철과일 골라담기 (택1)</p>
                            </a>
                                <div class="css-ar9i78 esoayg82"></div>
                            </div>
                            <div class="css-1gueo66 e1cqr3m40"><button type="button" aria-label="수량내리기"
                                                                       class="css-8azp8 e1hx75jb0"></button>
                                <div class="count css-6m57y0 e1cqr3m41">6</div><button type="button" aria-label="수량올리기"
                                                                                       class="css-18y6jr4 e1hx75jb0"></button>
                            </div>
                            <div class="css-5w3ssu esoayg84"><span aria-label="할인 가격" data-testid="product-price"
                                                                   class="css-zq4evb e2qzex51">83,400원</span><span aria-label="판매 가격" data-testid="selling-price"
                                                                                                                   class="css-cwmxfz e2qzex50">89,400원</span></div><button class="css-h5zdhc eudrkjx0"
                                                                                                                                                                           type="button" data-testid="delete"><span class="css-6mgkir e5h3i930"></span></button>
                        </li>
                    </ul>
                    <ul>
                        <li class="css-1d6kgf6 esoayg811"><label class="css-14td1km e1dcessg3"><input type="checkbox"
                                                                                                      class="css-agvwxo e1dcessg2">
                            <div class="css-79hxr7 e1dcessg1"><svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                   xmlns="http://www.w3.org/2000/svg">
                                <path
                                        d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                        stroke="#ddd" fill="#fff"></path>
                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round"
                                      stroke-linejoin="round"></path>
                            </svg></div><span></span>
                        </label><a class="css-1u5t3pw esoayg810"><span class="css-1usz68g esoayg89"></span></a>
                            <div class="css-14sb0pe esoayg88"><a class="css-e0dnmk esoayg87">
                                <p class="css-efcx1u esoayg86">유명산지 설향딸기 500g</p>
                                <p data-testid="content-product-name" class="css-3izcs6 esoayg85">12월 제철과일 골라담기 (택1)</p>
                            </a>
                                <div class="css-ar9i78 esoayg82"></div>
                            </div>
                            <div class="css-1gueo66 e1cqr3m40"><button type="button" aria-label="수량내리기"
                                                                       class="css-8azp8 e1hx75jb0"></button>
                                <div class="count css-6m57y0 e1cqr3m41">6</div><button type="button" aria-label="수량올리기"
                                                                                       class="css-18y6jr4 e1hx75jb0"></button>
                            </div>
                            <div class="css-5w3ssu esoayg84"><span aria-label="할인 가격" data-testid="product-price"
                                                                   class="css-zq4evb e2qzex51">83,400원</span><span aria-label="판매 가격" data-testid="selling-price"
                                                                                                                   class="css-cwmxfz e2qzex50">89,400원</span></div><button class="css-h5zdhc eudrkjx0"
                                                                                                                                                                           type="button" data-testid="delete"><span class="css-6mgkir e5h3i930"></span></button>
                        </li>
                    </ul>
                    <ul>
                        <li class="css-1d6kgf6 esoayg811"><label class="css-14td1km e1dcessg3"><input type="checkbox"
                                                                                                      class="css-agvwxo e1dcessg2">
                            <div class="css-79hxr7 e1dcessg1"><svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                   xmlns="http://www.w3.org/2000/svg">
                                <path
                                        d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                        stroke="#ddd" fill="#fff"></path>
                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round"
                                      stroke-linejoin="round"></path>
                            </svg></div><span></span>
                        </label><a class="css-1u5t3pw esoayg810"><span class="css-1usz68g esoayg89"></span></a>
                            <div class="css-14sb0pe esoayg88"><a class="css-e0dnmk esoayg87">
                                <p class="css-efcx1u esoayg86">유명산지 설향딸기 500g</p>
                                <p data-testid="content-product-name" class="css-3izcs6 esoayg85">12월 제철과일 골라담기 (택1)</p>
                            </a>
                                <div class="css-ar9i78 esoayg82"></div>
                            </div>
                            <div class="css-1gueo66 e1cqr3m40"><button type="button" aria-label="수량내리기"
                                                                       class="css-8azp8 e1hx75jb0"></button>
                                <div class="count css-6m57y0 e1cqr3m41">6</div><button type="button" aria-label="수량올리기"
                                                                                       class="css-18y6jr4 e1hx75jb0"></button>
                            </div>
                            <div class="css-5w3ssu esoayg84"><span aria-label="할인 가격" data-testid="product-price"
                                                                   class="css-zq4evb e2qzex51">83,400원</span><span aria-label="판매 가격" data-testid="selling-price"
                                                                                                                   class="css-cwmxfz e2qzex50">89,400원</span></div><button class="css-h5zdhc eudrkjx0"
                                                                                                                                                                           type="button" data-testid="delete"><span class="css-6mgkir e5h3i930"></span></button>
                        </li>
                    </ul>
                    <ul>
                        <li class="css-1d6kgf6 esoayg811"><label class="css-14td1km e1dcessg3"><input type="checkbox"
                                                                                                      class="css-agvwxo e1dcessg2">
                            <div class="css-79hxr7 e1dcessg1"><svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                   xmlns="http://www.w3.org/2000/svg">
                                <path
                                        d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                        stroke="#ddd" fill="#fff"></path>
                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round"
                                      stroke-linejoin="round"></path>
                            </svg></div><span></span>
                        </label><a class="css-1u5t3pw esoayg810"><span class="css-1usz68g esoayg89"></span></a>
                            <div class="css-14sb0pe esoayg88"><a class="css-e0dnmk esoayg87">
                                <p class="css-efcx1u esoayg86">유명산지 설향딸기 500g</p>
                                <p data-testid="content-product-name" class="css-3izcs6 esoayg85">12월 제철과일 골라담기 (택1)</p>
                            </a>
                                <div class="css-ar9i78 esoayg82"></div>
                            </div>
                            <div class="css-1gueo66 e1cqr3m40"><button type="button" aria-label="수량내리기"
                                                                       class="css-8azp8 e1hx75jb0"></button>
                                <div class="count css-6m57y0 e1cqr3m41">6</div><button type="button" aria-label="수량올리기"
                                                                                       class="css-18y6jr4 e1hx75jb0"></button>
                            </div>
                            <div class="css-5w3ssu esoayg84"><span aria-label="할인 가격" data-testid="product-price"
                                                                   class="css-zq4evb e2qzex51">83,400원</span><span aria-label="판매 가격" data-testid="selling-price"
                                                                                                                   class="css-cwmxfz e2qzex50">89,400원</span></div><button class="css-h5zdhc eudrkjx0"
                                                                                                                                                                           type="button" data-testid="delete"><span class="css-6mgkir e5h3i930"></span></button>
                        </li>
                    </ul>
                    <ul>
                        <li class="css-1d6kgf6 esoayg811"><label class="css-14td1km e1dcessg3"><input type="checkbox"
                                                                                                      class="css-agvwxo e1dcessg2">
                            <div class="css-79hxr7 e1dcessg1"><svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                   xmlns="http://www.w3.org/2000/svg">
                                <path
                                        d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                        stroke="#ddd" fill="#fff"></path>
                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round"
                                      stroke-linejoin="round"></path>
                            </svg></div><span></span>
                        </label><a class="css-1u5t3pw esoayg810"><span class="css-1usz68g esoayg89"></span></a>
                            <div class="css-14sb0pe esoayg88"><a class="css-e0dnmk esoayg87">
                                <p class="css-efcx1u esoayg86">유명산지 설향딸기 500g</p>
                                <p data-testid="content-product-name" class="css-3izcs6 esoayg85">12월 제철과일 골라담기 (택1)</p>
                            </a>
                                <div class="css-ar9i78 esoayg82"></div>
                            </div>
                            <div class="css-1gueo66 e1cqr3m40"><button type="button" aria-label="수량내리기"
                                                                       class="css-8azp8 e1hx75jb0"></button>
                                <div class="count css-6m57y0 e1cqr3m41">6</div><button type="button" aria-label="수량올리기"
                                                                                       class="css-18y6jr4 e1hx75jb0"></button>
                            </div>
                            <div class="css-5w3ssu esoayg84"><span aria-label="할인 가격" data-testid="product-price"
                                                                   class="css-zq4evb e2qzex51">83,400원</span><span aria-label="판매 가격" data-testid="selling-price"
                                                                                                                   class="css-cwmxfz e2qzex50">89,400원</span></div><button class="css-h5zdhc eudrkjx0"
                                                                                                                                                                           type="button" data-testid="delete"><span class="css-6mgkir e5h3i930"></span></button>
                        </li>
                    </ul>
                    <ul>
                        <li class="css-1d6kgf6 esoayg811"><label class="css-14td1km e1dcessg3"><input type="checkbox"
                                                                                                      class="css-agvwxo e1dcessg2">
                            <div class="css-79hxr7 e1dcessg1"><svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                   xmlns="http://www.w3.org/2000/svg">
                                <path
                                        d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                        stroke="#ddd" fill="#fff"></path>
                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round"
                                      stroke-linejoin="round"></path>
                            </svg></div><span></span>
                        </label><a class="css-1u5t3pw esoayg810"><span class="css-1usz68g esoayg89"></span></a>
                            <div class="css-14sb0pe esoayg88"><a class="css-e0dnmk esoayg87">
                                <p class="css-efcx1u esoayg86">유명산지 설향딸기 500g</p>
                                <p data-testid="content-product-name" class="css-3izcs6 esoayg85">12월 제철과일 골라담기 (택1)</p>
                            </a>
                                <div class="css-ar9i78 esoayg82"></div>
                            </div>
                            <div class="css-1gueo66 e1cqr3m40"><button type="button" aria-label="수량내리기"
                                                                       class="css-8azp8 e1hx75jb0"></button>
                                <div class="count css-6m57y0 e1cqr3m41">6</div><button type="button" aria-label="수량올리기"
                                                                                       class="css-18y6jr4 e1hx75jb0"></button>
                            </div>
                            <div class="css-5w3ssu esoayg84"><span aria-label="할인 가격" data-testid="product-price"
                                                                   class="css-zq4evb e2qzex51">83,400원</span><span aria-label="판매 가격" data-testid="selling-price"
                                                                                                                   class="css-cwmxfz e2qzex50">89,400원</span></div><button class="css-h5zdhc eudrkjx0"
                                                                                                                                                                           type="button" data-testid="delete"><span class="css-6mgkir e5h3i930"></span></button>
                        </li>
                    </ul>
                    <ul>
                        <li class="css-1d6kgf6 esoayg811"><label class="css-14td1km e1dcessg3"><input type="checkbox"
                                                                                                      class="css-agvwxo e1dcessg2">
                            <div class="css-79hxr7 e1dcessg1"><svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                   xmlns="http://www.w3.org/2000/svg">
                                <path
                                        d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                        stroke="#ddd" fill="#fff"></path>
                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round"
                                      stroke-linejoin="round"></path>
                            </svg></div><span></span>
                        </label><a class="css-1u5t3pw esoayg810"><span class="css-1usz68g esoayg89"></span></a>
                            <div class="css-14sb0pe esoayg88"><a class="css-e0dnmk esoayg87">
                                <p class="css-efcx1u esoayg86">유명산지 설향딸기 500g</p>
                                <p data-testid="content-product-name" class="css-3izcs6 esoayg85">12월 제철과일 골라담기 (택1)</p>
                            </a>
                                <div class="css-ar9i78 esoayg82"></div>
                            </div>
                            <div class="css-1gueo66 e1cqr3m40"><button type="button" aria-label="수량내리기"
                                                                       class="css-8azp8 e1hx75jb0"></button>
                                <div class="count css-6m57y0 e1cqr3m41">6</div><button type="button" aria-label="수량올리기"
                                                                                       class="css-18y6jr4 e1hx75jb0"></button>
                            </div>
                            <div class="css-5w3ssu esoayg84"><span aria-label="할인 가격" data-testid="product-price"
                                                                   class="css-zq4evb e2qzex51">83,400원</span><span aria-label="판매 가격" data-testid="selling-price"
                                                                                                                   class="css-cwmxfz e2qzex50">89,400원</span></div><button class="css-h5zdhc eudrkjx0"
                                                                                                                                                                           type="button" data-testid="delete"><span class="css-6mgkir e5h3i930"></span></button>
                        </li>
                    </ul>
                    <ul>
                        <li class="css-1d6kgf6 esoayg811"><label class="css-14td1km e1dcessg3"><input type="checkbox"
                                                                                                      class="css-agvwxo e1dcessg2">
                            <div class="css-79hxr7 e1dcessg1"><svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                   xmlns="http://www.w3.org/2000/svg">
                                <path
                                        d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                        stroke="#ddd" fill="#fff"></path>
                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round"
                                      stroke-linejoin="round"></path>
                            </svg></div><span></span>
                        </label><a class="css-1u5t3pw esoayg810"><span class="css-1usz68g esoayg89"></span></a>
                            <div class="css-14sb0pe esoayg88"><a class="css-e0dnmk esoayg87">
                                <p class="css-efcx1u esoayg86">유명산지 설향딸기 500g</p>
                                <p data-testid="content-product-name" class="css-3izcs6 esoayg85">12월 제철과일 골라담기 (택1)</p>
                            </a>
                                <div class="css-ar9i78 esoayg82"></div>
                            </div>
                            <div class="css-1gueo66 e1cqr3m40"><button type="button" aria-label="수량내리기"
                                                                       class="css-8azp8 e1hx75jb0"></button>
                                <div class="count css-6m57y0 e1cqr3m41">6</div><button type="button" aria-label="수량올리기"
                                                                                       class="css-18y6jr4 e1hx75jb0"></button>
                            </div>
                            <div class="css-5w3ssu esoayg84"><span aria-label="할인 가격" data-testid="product-price"
                                                                   class="css-zq4evb e2qzex51">83,400원</span><span aria-label="판매 가격" data-testid="selling-price"
                                                                                                                   class="css-cwmxfz e2qzex50">89,400원</span></div><button class="css-h5zdhc eudrkjx0"
                                                                                                                                                                           type="button" data-testid="delete"><span class="css-6mgkir e5h3i930"></span></button>
                        </li>
                    </ul>
                    <ul>
                        <li class="css-1d6kgf6 esoayg811"><label class="css-14td1km e1dcessg3"><input type="checkbox"
                                                                                                      class="css-agvwxo e1dcessg2">
                            <div class="css-79hxr7 e1dcessg1"><svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                   xmlns="http://www.w3.org/2000/svg">
                                <path
                                        d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                        stroke="#ddd" fill="#fff"></path>
                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round"
                                      stroke-linejoin="round"></path>
                            </svg></div><span></span>
                        </label><a class="css-1u5t3pw esoayg810"><span class="css-1usz68g esoayg89"></span></a>
                            <div class="css-14sb0pe esoayg88"><a class="css-e0dnmk esoayg87">
                                <p class="css-efcx1u esoayg86">유명산지 설향딸기 500g</p>
                                <p data-testid="content-product-name" class="css-3izcs6 esoayg85">12월 제철과일 골라담기 (택1)</p>
                            </a>
                                <div class="css-ar9i78 esoayg82"></div>
                            </div>
                            <div class="css-1gueo66 e1cqr3m40"><button type="button" aria-label="수량내리기"
                                                                       class="css-8azp8 e1hx75jb0"></button>
                                <div class="count css-6m57y0 e1cqr3m41">6</div><button type="button" aria-label="수량올리기"
                                                                                       class="css-18y6jr4 e1hx75jb0"></button>
                            </div>
                            <div class="css-5w3ssu esoayg84"><span aria-label="할인 가격" data-testid="product-price"
                                                                   class="css-zq4evb e2qzex51">83,400원</span><span aria-label="판매 가격" data-testid="selling-price"
                                                                                                                   class="css-cwmxfz e2qzex50">89,400원</span></div><button class="css-h5zdhc eudrkjx0"
                                                                                                                                                                           type="button" data-testid="delete"><span class="css-6mgkir e5h3i930"></span></button>
                        </li>
                    </ul>
                    <ul>
                        <li class="css-1d6kgf6 esoayg811"><label class="css-14td1km e1dcessg3"><input type="checkbox"
                                                                                                      class="css-agvwxo e1dcessg2">
                            <div class="css-79hxr7 e1dcessg1"><svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                   xmlns="http://www.w3.org/2000/svg">
                                <path
                                        d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                        stroke="#ddd" fill="#fff"></path>
                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round"
                                      stroke-linejoin="round"></path>
                            </svg></div><span></span>
                        </label><a class="css-1u5t3pw esoayg810"><span class="css-1usz68g esoayg89"></span></a>
                            <div class="css-14sb0pe esoayg88"><a class="css-e0dnmk esoayg87">
                                <p class="css-efcx1u esoayg86">유명산지 설향딸기 500g</p>
                                <p data-testid="content-product-name" class="css-3izcs6 esoayg85">12월 제철과일 골라담기 (택1)</p>
                            </a>
                                <div class="css-ar9i78 esoayg82"></div>
                            </div>
                            <div class="css-1gueo66 e1cqr3m40"><button type="button" aria-label="수량내리기"
                                                                       class="css-8azp8 e1hx75jb0"></button>
                                <div class="count css-6m57y0 e1cqr3m41">6</div><button type="button" aria-label="수량올리기"
                                                                                       class="css-18y6jr4 e1hx75jb0"></button>
                            </div>
                            <div class="css-5w3ssu esoayg84"><span aria-label="할인 가격" data-testid="product-price"
                                                                   class="css-zq4evb e2qzex51">83,400원</span><span aria-label="판매 가격" data-testid="selling-price"
                                                                                                                   class="css-cwmxfz e2qzex50">89,400원</span></div><button class="css-h5zdhc eudrkjx0"
                                                                                                                                                                           type="button" data-testid="delete"><span class="css-6mgkir e5h3i930"></span></button>
                        </li>
                    </ul>
                    <ul>
                        <li class="css-1d6kgf6 esoayg811"><label class="css-14td1km e1dcessg3"><input type="checkbox"
                                                                                                      class="css-agvwxo e1dcessg2">
                            <div class="css-79hxr7 e1dcessg1"><svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                   xmlns="http://www.w3.org/2000/svg">
                                <path
                                        d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                        stroke="#ddd" fill="#fff"></path>
                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round"
                                      stroke-linejoin="round"></path>
                            </svg></div><span></span>
                        </label><a class="css-1u5t3pw esoayg810"><span class="css-1usz68g esoayg89"></span></a>
                            <div class="css-14sb0pe esoayg88"><a class="css-e0dnmk esoayg87">
                                <p class="css-efcx1u esoayg86">유명산지 설향딸기 500g</p>
                                <p data-testid="content-product-name" class="css-3izcs6 esoayg85">12월 제철과일 골라담기 (택1)</p>
                            </a>
                                <div class="css-ar9i78 esoayg82"></div>
                            </div>
                            <div class="css-1gueo66 e1cqr3m40"><button type="button" aria-label="수량내리기"
                                                                       class="css-8azp8 e1hx75jb0"></button>
                                <div class="count css-6m57y0 e1cqr3m41">6</div><button type="button" aria-label="수량올리기"
                                                                                       class="css-18y6jr4 e1hx75jb0"></button>
                            </div>
                            <div class="css-5w3ssu esoayg84"><span aria-label="할인 가격" data-testid="product-price"
                                                                   class="css-zq4evb e2qzex51">83,400원</span><span aria-label="판매 가격" data-testid="selling-price"
                                                                                                                   class="css-cwmxfz e2qzex50">89,400원</span></div><button class="css-h5zdhc eudrkjx0"
                                                                                                                                                                           type="button" data-testid="delete"><span class="css-6mgkir e5h3i930"></span></button>
                        </li>
                    </ul>
                    <ul>
                        <li class="css-1d6kgf6 esoayg811"><label class="css-14td1km e1dcessg3"><input type="checkbox"
                                                                                                      class="css-agvwxo e1dcessg2">
                            <div class="css-79hxr7 e1dcessg1"><svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                   xmlns="http://www.w3.org/2000/svg">
                                <path
                                        d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                        stroke="#ddd" fill="#fff"></path>
                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round"
                                      stroke-linejoin="round"></path>
                            </svg></div><span></span>
                        </label><a class="css-1u5t3pw esoayg810"><span class="css-1usz68g esoayg89"></span></a>
                            <div class="css-14sb0pe esoayg88"><a class="css-e0dnmk esoayg87">
                                <p class="css-efcx1u esoayg86">유명산지 설향딸기 500g</p>
                                <p data-testid="content-product-name" class="css-3izcs6 esoayg85">12월 제철과일 골라담기 (택1)</p>
                            </a>
                                <div class="css-ar9i78 esoayg82"></div>
                            </div>
                            <div class="css-1gueo66 e1cqr3m40"><button type="button" aria-label="수량내리기"
                                                                       class="css-8azp8 e1hx75jb0"></button>
                                <div class="count css-6m57y0 e1cqr3m41">6</div><button type="button" aria-label="수량올리기"
                                                                                       class="css-18y6jr4 e1hx75jb0"></button>
                            </div>
                            <div class="css-5w3ssu esoayg84"><span aria-label="할인 가격" data-testid="product-price"
                                                                   class="css-zq4evb e2qzex51">83,400원</span><span aria-label="판매 가격" data-testid="selling-price"
                                                                                                                   class="css-cwmxfz e2qzex50">89,400원</span></div><button class="css-h5zdhc eudrkjx0"
                                                                                                                                                                           type="button" data-testid="delete"><span class="css-6mgkir e5h3i930"></span></button>
                        </li>
                    </ul>
                    <ul>
                        <li class="css-1d6kgf6 esoayg811"><label class="css-14td1km e1dcessg3"><input type="checkbox"
                                                                                                      class="css-agvwxo e1dcessg2">
                            <div class="css-79hxr7 e1dcessg1"><svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                   xmlns="http://www.w3.org/2000/svg">
                                <path
                                        d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                        stroke="#ddd" fill="#fff"></path>
                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round"
                                      stroke-linejoin="round"></path>
                            </svg></div><span></span>
                        </label><a class="css-1u5t3pw esoayg810"><span class="css-1usz68g esoayg89"></span></a>
                            <div class="css-14sb0pe esoayg88"><a class="css-e0dnmk esoayg87">
                                <p class="css-efcx1u esoayg86">유명산지 설향딸기 500g</p>
                                <p data-testid="content-product-name" class="css-3izcs6 esoayg85">12월 제철과일 골라담기 (택1)</p>
                            </a>
                                <div class="css-ar9i78 esoayg82"></div>
                            </div>
                            <div class="css-1gueo66 e1cqr3m40"><button type="button" aria-label="수량내리기"
                                                                       class="css-8azp8 e1hx75jb0"></button>
                                <div class="count css-6m57y0 e1cqr3m41">6</div><button type="button" aria-label="수량올리기"
                                                                                       class="css-18y6jr4 e1hx75jb0"></button>
                            </div>
                            <div class="css-5w3ssu esoayg84"><span aria-label="할인 가격" data-testid="product-price"
                                                                   class="css-zq4evb e2qzex51">83,400원</span><span aria-label="판매 가격" data-testid="selling-price"
                                                                                                                   class="css-cwmxfz e2qzex50">89,400원</span></div><button class="css-h5zdhc eudrkjx0"
                                                                                                                                                                           type="button" data-testid="delete"><span class="css-6mgkir e5h3i930"></span></button>
                        </li>
                    </ul>
                    <ul>
                        <li class="css-1d6kgf6 esoayg811"><label class="css-14td1km e1dcessg3"><input type="checkbox"
                                                                                                      class="css-agvwxo e1dcessg2">
                            <div class="css-79hxr7 e1dcessg1"><svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                   xmlns="http://www.w3.org/2000/svg">
                                <path
                                        d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                        stroke="#ddd" fill="#fff"></path>
                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round"
                                      stroke-linejoin="round"></path>
                            </svg></div><span></span>
                        </label><a class="css-1u5t3pw esoayg810"><span class="css-1usz68g esoayg89"></span></a>
                            <div class="css-14sb0pe esoayg88"><a class="css-e0dnmk esoayg87">
                                <p class="css-efcx1u esoayg86">유명산지 설향딸기 500g</p>
                                <p data-testid="content-product-name" class="css-3izcs6 esoayg85">12월 제철과일 골라담기 (택1)</p>
                            </a>
                                <div class="css-ar9i78 esoayg82"></div>
                            </div>
                            <div class="css-1gueo66 e1cqr3m40"><button type="button" aria-label="수량내리기"
                                                                       class="css-8azp8 e1hx75jb0"></button>
                                <div class="count css-6m57y0 e1cqr3m41">6</div><button type="button" aria-label="수량올리기"
                                                                                       class="css-18y6jr4 e1hx75jb0"></button>
                            </div>
                            <div class="css-5w3ssu esoayg84"><span aria-label="할인 가격" data-testid="product-price"
                                                                   class="css-zq4evb e2qzex51">83,400원</span><span aria-label="판매 가격" data-testid="selling-price"
                                                                                                                   class="css-cwmxfz e2qzex50">89,400원</span></div><button class="css-h5zdhc eudrkjx0"
                                                                                                                                                                           type="button" data-testid="delete"><span class="css-6mgkir e5h3i930"></span></button>
                        </li>
                    </ul>
                    <ul>
                        <li class="css-1d6kgf6 esoayg811"><label class="css-14td1km e1dcessg3"><input type="checkbox"
                                                                                                      class="css-agvwxo e1dcessg2">
                            <div class="css-79hxr7 e1dcessg1"><svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                   xmlns="http://www.w3.org/2000/svg">
                                <path
                                        d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                        stroke="#ddd" fill="#fff"></path>
                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round"
                                      stroke-linejoin="round"></path>
                            </svg></div><span></span>
                        </label><a class="css-1u5t3pw esoayg810"><span class="css-1usz68g esoayg89"></span></a>
                            <div class="css-14sb0pe esoayg88"><a class="css-e0dnmk esoayg87">
                                <p class="css-efcx1u esoayg86">유명산지 설향딸기 500g</p>
                                <p data-testid="content-product-name" class="css-3izcs6 esoayg85">12월 제철과일 골라담기 (택1)</p>
                            </a>
                                <div class="css-ar9i78 esoayg82"></div>
                            </div>
                            <div class="css-1gueo66 e1cqr3m40"><button type="button" aria-label="수량내리기"
                                                                       class="css-8azp8 e1hx75jb0"></button>
                                <div class="count css-6m57y0 e1cqr3m41">6</div><button type="button" aria-label="수량올리기"
                                                                                       class="css-18y6jr4 e1hx75jb0"></button>
                            </div>
                            <div class="css-5w3ssu esoayg84"><span aria-label="할인 가격" data-testid="product-price"
                                                                   class="css-zq4evb e2qzex51">83,400원</span><span aria-label="판매 가격" data-testid="selling-price"
                                                                                                                   class="css-cwmxfz e2qzex50">89,400원</span></div><button class="css-h5zdhc eudrkjx0"
                                                                                                                                                                           type="button" data-testid="delete"><span class="css-6mgkir e5h3i930"></span></button>
                        </li>
                    </ul>
                    <ul>
                        <li class="css-1d6kgf6 esoayg811"><label class="css-14td1km e1dcessg3"><input type="checkbox"
                                                                                                      class="css-agvwxo e1dcessg2">
                            <div class="css-79hxr7 e1dcessg1"><svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                   xmlns="http://www.w3.org/2000/svg">
                                <path
                                        d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                        stroke="#ddd" fill="#fff"></path>
                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round"
                                      stroke-linejoin="round"></path>
                            </svg></div><span></span>
                        </label><a class="css-1u5t3pw esoayg810"><span class="css-1usz68g esoayg89"></span></a>
                            <div class="css-14sb0pe esoayg88"><a class="css-e0dnmk esoayg87">
                                <p class="css-efcx1u esoayg86">유명산지 설향딸기 500g</p>
                                <p data-testid="content-product-name" class="css-3izcs6 esoayg85">12월 제철과일 골라담기 (택1)</p>
                            </a>
                                <div class="css-ar9i78 esoayg82"></div>
                            </div>
                            <div class="css-1gueo66 e1cqr3m40"><button type="button" aria-label="수량내리기"
                                                                       class="css-8azp8 e1hx75jb0"></button>
                                <div class="count css-6m57y0 e1cqr3m41">6</div><button type="button" aria-label="수량올리기"
                                                                                       class="css-18y6jr4 e1hx75jb0"></button>
                            </div>
                            <div class="css-5w3ssu esoayg84"><span aria-label="할인 가격" data-testid="product-price"
                                                                   class="css-zq4evb e2qzex51">83,400원</span><span aria-label="판매 가격" data-testid="selling-price"
                                                                                                                   class="css-cwmxfz e2qzex50">89,400원</span></div><button class="css-h5zdhc eudrkjx0"
                                                                                                                                                                           type="button" data-testid="delete"><span class="css-6mgkir e5h3i930"></span></button>
                        </li>
                    </ul>
                    <ul>
                        <li class="css-1d6kgf6 esoayg811"><label class="css-14td1km e1dcessg3"><input type="checkbox"
                                                                                                      class="css-agvwxo e1dcessg2">
                            <div class="css-79hxr7 e1dcessg1"><svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                   xmlns="http://www.w3.org/2000/svg">
                                <path
                                        d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                        stroke="#ddd" fill="#fff"></path>
                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round"
                                      stroke-linejoin="round"></path>
                            </svg></div><span></span>
                        </label><a class="css-1u5t3pw esoayg810"><span class="css-1usz68g esoayg89"></span></a>
                            <div class="css-14sb0pe esoayg88"><a class="css-e0dnmk esoayg87">
                                <p class="css-efcx1u esoayg86">유명산지 설향딸기 500g</p>
                                <p data-testid="content-product-name" class="css-3izcs6 esoayg85">12월 제철과일 골라담기 (택1)</p>
                            </a>
                                <div class="css-ar9i78 esoayg82"></div>
                            </div>
                            <div class="css-1gueo66 e1cqr3m40"><button type="button" aria-label="수량내리기"
                                                                       class="css-8azp8 e1hx75jb0"></button>
                                <div class="count css-6m57y0 e1cqr3m41">6</div><button type="button" aria-label="수량올리기"
                                                                                       class="css-18y6jr4 e1hx75jb0"></button>
                            </div>
                            <div class="css-5w3ssu esoayg84"><span aria-label="할인 가격" data-testid="product-price"
                                                                   class="css-zq4evb e2qzex51">83,400원</span><span aria-label="판매 가격" data-testid="selling-price"
                                                                                                                   class="css-cwmxfz e2qzex50">89,400원</span></div><button class="css-h5zdhc eudrkjx0"
                                                                                                                                                                           type="button" data-testid="delete"><span class="css-6mgkir e5h3i930"></span></button>
                        </li>
                    </ul>
                    <ul>
                        <li class="css-1d6kgf6 esoayg811"><label class="css-14td1km e1dcessg3"><input type="checkbox"
                                                                                                      class="css-agvwxo e1dcessg2">
                            <div class="css-79hxr7 e1dcessg1"><svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                   xmlns="http://www.w3.org/2000/svg">
                                <path
                                        d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                        stroke="#ddd" fill="#fff"></path>
                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round"
                                      stroke-linejoin="round"></path>
                            </svg></div><span></span>
                        </label><a class="css-1u5t3pw esoayg810"><span class="css-1usz68g esoayg89"></span></a>
                            <div class="css-14sb0pe esoayg88"><a class="css-e0dnmk esoayg87">
                                <p class="css-efcx1u esoayg86">유명산지 설향딸기 500g</p>
                                <p data-testid="content-product-name" class="css-3izcs6 esoayg85">12월 제철과일 골라담기 (택1)</p>
                            </a>
                                <div class="css-ar9i78 esoayg82"></div>
                            </div>
                            <div class="css-1gueo66 e1cqr3m40"><button type="button" aria-label="수량내리기"
                                                                       class="css-8azp8 e1hx75jb0"></button>
                                <div class="count css-6m57y0 e1cqr3m41">6</div><button type="button" aria-label="수량올리기"
                                                                                       class="css-18y6jr4 e1hx75jb0"></button>
                            </div>
                            <div class="css-5w3ssu esoayg84"><span aria-label="할인 가격" data-testid="product-price"
                                                                   class="css-zq4evb e2qzex51">83,400원</span><span aria-label="판매 가격" data-testid="selling-price"
                                                                                                                   class="css-cwmxfz e2qzex50">89,400원</span></div><button class="css-h5zdhc eudrkjx0"
                                                                                                                                                                           type="button" data-testid="delete"><span class="css-6mgkir e5h3i930"></span></button>
                        </li>
                    </ul>
                    <ul>
                        <li class="css-1d6kgf6 esoayg811"><label class="css-14td1km e1dcessg3"><input type="checkbox"
                                                                                                      class="css-agvwxo e1dcessg2">
                            <div class="css-79hxr7 e1dcessg1"><svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                   xmlns="http://www.w3.org/2000/svg">
                                <path
                                        d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                        stroke="#ddd" fill="#fff"></path>
                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round"
                                      stroke-linejoin="round"></path>
                            </svg></div><span></span>
                        </label><a class="css-1u5t3pw esoayg810"><span class="css-1usz68g esoayg89"></span></a>
                            <div class="css-14sb0pe esoayg88"><a class="css-e0dnmk esoayg87">
                                <p class="css-efcx1u esoayg86">유명산지 설향딸기 500g</p>
                                <p data-testid="content-product-name" class="css-3izcs6 esoayg85">12월 제철과일 골라담기 (택1)</p>
                            </a>
                                <div class="css-ar9i78 esoayg82"></div>
                            </div>
                            <div class="css-1gueo66 e1cqr3m40"><button type="button" aria-label="수량내리기"
                                                                       class="css-8azp8 e1hx75jb0"></button>
                                <div class="count css-6m57y0 e1cqr3m41">6</div><button type="button" aria-label="수량올리기"
                                                                                       class="css-18y6jr4 e1hx75jb0"></button>
                            </div>
                            <div class="css-5w3ssu esoayg84"><span aria-label="할인 가격" data-testid="product-price"
                                                                   class="css-zq4evb e2qzex51">83,400원</span><span aria-label="판매 가격" data-testid="selling-price"
                                                                                                                   class="css-cwmxfz e2qzex50">89,400원</span></div><button class="css-h5zdhc eudrkjx0"
                                                                                                                                                                           type="button" data-testid="delete"><span class="css-6mgkir e5h3i930"></span></button>
                        </li>
                    </ul>
                    <ul>
                        <li class="css-1d6kgf6 esoayg811"><label class="css-14td1km e1dcessg3"><input type="checkbox"
                                                                                                      class="css-agvwxo e1dcessg2">
                            <div class="css-79hxr7 e1dcessg1"><svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                   xmlns="http://www.w3.org/2000/svg">
                                <path
                                        d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                        stroke="#ddd" fill="#fff"></path>
                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round"
                                      stroke-linejoin="round"></path>
                            </svg></div><span></span>
                        </label><a class="css-1u5t3pw esoayg810"><span class="css-1usz68g esoayg89"></span></a>
                            <div class="css-14sb0pe esoayg88"><a class="css-e0dnmk esoayg87">
                                <p class="css-efcx1u esoayg86">유명산지 설향딸기 500g</p>
                                <p data-testid="content-product-name" class="css-3izcs6 esoayg85">12월 제철과일 골라담기 (택1)</p>
                            </a>
                                <div class="css-ar9i78 esoayg82"></div>
                            </div>
                            <div class="css-1gueo66 e1cqr3m40"><button type="button" aria-label="수량내리기"
                                                                       class="css-8azp8 e1hx75jb0"></button>
                                <div class="count css-6m57y0 e1cqr3m41">6</div><button type="button" aria-label="수량올리기"
                                                                                       class="css-18y6jr4 e1hx75jb0"></button>
                            </div>
                            <div class="css-5w3ssu esoayg84"><span aria-label="할인 가격" data-testid="product-price"
                                                                   class="css-zq4evb e2qzex51">83,400원</span><span aria-label="판매 가격" data-testid="selling-price"
                                                                                                                   class="css-cwmxfz e2qzex50">89,400원</span></div><button class="css-h5zdhc eudrkjx0"
                                                                                                                                                                           type="button" data-testid="delete"><span class="css-6mgkir e5h3i930"></span></button>
                        </li>
                    </ul>
                    <ul>
                        <li class="css-1d6kgf6 esoayg811"><label class="css-14td1km e1dcessg3"><input type="checkbox"
                                                                                                      class="css-agvwxo e1dcessg2">
                            <div class="css-79hxr7 e1dcessg1"><svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                   xmlns="http://www.w3.org/2000/svg">
                                <path
                                        d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                        stroke="#ddd" fill="#fff"></path>
                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round"
                                      stroke-linejoin="round"></path>
                            </svg></div><span></span>
                        </label><a class="css-1u5t3pw esoayg810"><span class="css-1usz68g esoayg89"></span></a>
                            <div class="css-14sb0pe esoayg88"><a class="css-e0dnmk esoayg87">
                                <p class="css-efcx1u esoayg86">유명산지 설향딸기 500g</p>
                                <p data-testid="content-product-name" class="css-3izcs6 esoayg85">12월 제철과일 골라담기 (택1)</p>
                            </a>
                                <div class="css-ar9i78 esoayg82"></div>
                            </div>
                            <div class="css-1gueo66 e1cqr3m40"><button type="button" aria-label="수량내리기"
                                                                       class="css-8azp8 e1hx75jb0"></button>
                                <div class="count css-6m57y0 e1cqr3m41">6</div><button type="button" aria-label="수량올리기"
                                                                                       class="css-18y6jr4 e1hx75jb0"></button>
                            </div>
                            <div class="css-5w3ssu esoayg84"><span aria-label="할인 가격" data-testid="product-price"
                                                                   class="css-zq4evb e2qzex51">83,400원</span><span aria-label="판매 가격" data-testid="selling-price"
                                                                                                                   class="css-cwmxfz e2qzex50">89,400원</span></div><button class="css-h5zdhc eudrkjx0"
                                                                                                                                                                           type="button" data-testid="delete"><span class="css-6mgkir e5h3i930"></span></button>
                        </li>
                    </ul>
                    <ul>
                        <li class="css-1d6kgf6 esoayg811"><label class="css-14td1km e1dcessg3"><input type="checkbox"
                                                                                                      class="css-agvwxo e1dcessg2">
                            <div class="css-79hxr7 e1dcessg1"><svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                   xmlns="http://www.w3.org/2000/svg">
                                <path
                                        d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                        stroke="#ddd" fill="#fff"></path>
                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round"
                                      stroke-linejoin="round"></path>
                            </svg></div><span></span>
                        </label><a class="css-1u5t3pw esoayg810"><span class="css-1usz68g esoayg89"></span></a>
                            <div class="css-14sb0pe esoayg88"><a class="css-e0dnmk esoayg87">
                                <p class="css-efcx1u esoayg86">유명산지 설향딸기 500g</p>
                                <p data-testid="content-product-name" class="css-3izcs6 esoayg85">12월 제철과일 골라담기 (택1)</p>
                            </a>
                                <div class="css-ar9i78 esoayg82"></div>
                            </div>
                            <div class="css-1gueo66 e1cqr3m40"><button type="button" aria-label="수량내리기"
                                                                       class="css-8azp8 e1hx75jb0"></button>
                                <div class="count css-6m57y0 e1cqr3m41">6</div><button type="button" aria-label="수량올리기"
                                                                                       class="css-18y6jr4 e1hx75jb0"></button>
                            </div>
                            <div class="css-5w3ssu esoayg84"><span aria-label="할인 가격" data-testid="product-price"
                                                                   class="css-zq4evb e2qzex51">83,400원</span><span aria-label="판매 가격" data-testid="selling-price"
                                                                                                                   class="css-cwmxfz e2qzex50">89,400원</span></div><button class="css-h5zdhc eudrkjx0"
                                                                                                                                                                           type="button" data-testid="delete"><span class="css-6mgkir e5h3i930"></span></button>
                        </li>
                    </ul>
                    <ul>
                        <li class="css-1d6kgf6 esoayg811"><label class="css-14td1km e1dcessg3"><input type="checkbox"
                                                                                                      class="css-agvwxo e1dcessg2">
                            <div class="css-79hxr7 e1dcessg1"><svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                   xmlns="http://www.w3.org/2000/svg">
                                <path
                                        d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                        stroke="#ddd" fill="#fff"></path>
                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round"
                                      stroke-linejoin="round"></path>
                            </svg></div><span></span>
                        </label><a class="css-1u5t3pw esoayg810"><span class="css-1usz68g esoayg89"></span></a>
                            <div class="css-14sb0pe esoayg88"><a class="css-e0dnmk esoayg87">
                                <p class="css-efcx1u esoayg86">유명산지 설향딸기 500g</p>
                                <p data-testid="content-product-name" class="css-3izcs6 esoayg85">12월 제철과일 골라담기 (택1)</p>
                            </a>
                                <div class="css-ar9i78 esoayg82"></div>
                            </div>
                            <div class="css-1gueo66 e1cqr3m40"><button type="button" aria-label="수량내리기"
                                                                       class="css-8azp8 e1hx75jb0"></button>
                                <div class="count css-6m57y0 e1cqr3m41">6</div><button type="button" aria-label="수량올리기"
                                                                                       class="css-18y6jr4 e1hx75jb0"></button>
                            </div>
                            <div class="css-5w3ssu esoayg84"><span aria-label="할인 가격" data-testid="product-price"
                                                                   class="css-zq4evb e2qzex51">83,400원</span><span aria-label="판매 가격" data-testid="selling-price"
                                                                                                                   class="css-cwmxfz e2qzex50">89,400원</span></div><button class="css-h5zdhc eudrkjx0"
                                                                                                                                                                           type="button" data-testid="delete"><span class="css-6mgkir e5h3i930"></span></button>
                        </li>
                    </ul>
                    <ul>
                        <li class="css-1d6kgf6 esoayg811"><label class="css-14td1km e1dcessg3"><input type="checkbox"
                                                                                                      class="css-agvwxo e1dcessg2">
                            <div class="css-79hxr7 e1dcessg1"><svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                   xmlns="http://www.w3.org/2000/svg">
                                <path
                                        d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                        stroke="#ddd" fill="#fff"></path>
                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round"
                                      stroke-linejoin="round"></path>
                            </svg></div><span></span>
                        </label><a class="css-1u5t3pw esoayg810"><span class="css-1usz68g esoayg89"></span></a>
                            <div class="css-14sb0pe esoayg88"><a class="css-e0dnmk esoayg87">
                                <p class="css-efcx1u esoayg86">유명산지 설향딸기 500g</p>
                                <p data-testid="content-product-name" class="css-3izcs6 esoayg85">12월 제철과일 골라담기 (택1)</p>
                            </a>
                                <div class="css-ar9i78 esoayg82"></div>
                            </div>
                            <div class="css-1gueo66 e1cqr3m40"><button type="button" aria-label="수량내리기"
                                                                       class="css-8azp8 e1hx75jb0"></button>
                                <div class="count css-6m57y0 e1cqr3m41">6</div><button type="button" aria-label="수량올리기"
                                                                                       class="css-18y6jr4 e1hx75jb0"></button>
                            </div>
                            <div class="css-5w3ssu esoayg84"><span aria-label="할인 가격" data-testid="product-price"
                                                                   class="css-zq4evb e2qzex51">83,400원</span><span aria-label="판매 가격" data-testid="selling-price"
                                                                                                                   class="css-cwmxfz e2qzex50">89,400원</span></div><button class="css-h5zdhc eudrkjx0"
                                                                                                                                                                           type="button" data-testid="delete"><span class="css-6mgkir e5h3i930"></span></button>
                        </li>
                    </ul>
                    <ul>
                        <li class="css-1d6kgf6 esoayg811"><label class="css-14td1km e1dcessg3"><input type="checkbox"
                                                                                                      class="css-agvwxo e1dcessg2">
                            <div class="css-79hxr7 e1dcessg1"><svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                   xmlns="http://www.w3.org/2000/svg">
                                <path
                                        d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                        stroke="#ddd" fill="#fff"></path>
                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round"
                                      stroke-linejoin="round"></path>
                            </svg></div><span></span>
                        </label><a class="css-1u5t3pw esoayg810"><span class="css-1usz68g esoayg89"></span></a>
                            <div class="css-14sb0pe esoayg88"><a class="css-e0dnmk esoayg87">
                                <p class="css-efcx1u esoayg86">유명산지 설향딸기 500g</p>
                                <p data-testid="content-product-name" class="css-3izcs6 esoayg85">12월 제철과일 골라담기 (택1)</p>
                            </a>
                                <div class="css-ar9i78 esoayg82"></div>
                            </div>
                            <div class="css-1gueo66 e1cqr3m40"><button type="button" aria-label="수량내리기"
                                                                       class="css-8azp8 e1hx75jb0"></button>
                                <div class="count css-6m57y0 e1cqr3m41">6</div><button type="button" aria-label="수량올리기"
                                                                                       class="css-18y6jr4 e1hx75jb0"></button>
                            </div>
                            <div class="css-5w3ssu esoayg84"><span aria-label="할인 가격" data-testid="product-price"
                                                                   class="css-zq4evb e2qzex51">83,400원</span><span aria-label="판매 가격" data-testid="selling-price"
                                                                                                                   class="css-cwmxfz e2qzex50">89,400원</span></div><button class="css-h5zdhc eudrkjx0"
                                                                                                                                                                           type="button" data-testid="delete"><span class="css-6mgkir e5h3i930"></span></button>
                        </li>
                    </ul>
                    <ul>
                        <li class="css-1d6kgf6 esoayg811"><label class="css-14td1km e1dcessg3"><input type="checkbox"
                                                                                                      class="css-agvwxo e1dcessg2">
                            <div class="css-79hxr7 e1dcessg1"><svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                   xmlns="http://www.w3.org/2000/svg">
                                <path
                                        d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                        stroke="#ddd" fill="#fff"></path>
                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round"
                                      stroke-linejoin="round"></path>
                            </svg></div><span></span>
                        </label><a class="css-1u5t3pw esoayg810"><span class="css-1usz68g esoayg89"></span></a>
                            <div class="css-14sb0pe esoayg88"><a class="css-e0dnmk esoayg87">
                                <p class="css-efcx1u esoayg86">유명산지 설향딸기 500g</p>
                                <p data-testid="content-product-name" class="css-3izcs6 esoayg85">12월 제철과일 골라담기 (택1)</p>
                            </a>
                                <div class="css-ar9i78 esoayg82"></div>
                            </div>
                            <div class="css-1gueo66 e1cqr3m40"><button type="button" aria-label="수량내리기"
                                                                       class="css-8azp8 e1hx75jb0"></button>
                                <div class="count css-6m57y0 e1cqr3m41">6</div><button type="button" aria-label="수량올리기"
                                                                                       class="css-18y6jr4 e1hx75jb0"></button>
                            </div>
                            <div class="css-5w3ssu esoayg84"><span aria-label="할인 가격" data-testid="product-price"
                                                                   class="css-zq4evb e2qzex51">83,400원</span><span aria-label="판매 가격" data-testid="selling-price"
                                                                                                                   class="css-cwmxfz e2qzex50">89,400원</span></div><button class="css-h5zdhc eudrkjx0"
                                                                                                                                                                           type="button" data-testid="delete"><span class="css-6mgkir e5h3i930"></span></button>
                        </li>
                    </ul>
                    <ul>
                        <li class="css-1d6kgf6 esoayg811"><label class="css-14td1km e1dcessg3"><input type="checkbox"
                                                                                                      class="css-agvwxo e1dcessg2">
                            <div class="css-79hxr7 e1dcessg1"><svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                   xmlns="http://www.w3.org/2000/svg">
                                <path
                                        d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                        stroke="#ddd" fill="#fff"></path>
                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round"
                                      stroke-linejoin="round"></path>
                            </svg></div><span></span>
                        </label><a class="css-1u5t3pw esoayg810"><span class="css-1usz68g esoayg89"></span></a>
                            <div class="css-14sb0pe esoayg88"><a class="css-e0dnmk esoayg87">
                                <p class="css-efcx1u esoayg86">유명산지 설향딸기 500g</p>
                                <p data-testid="content-product-name" class="css-3izcs6 esoayg85">12월 제철과일 골라담기 (택1)</p>
                            </a>
                                <div class="css-ar9i78 esoayg82"></div>
                            </div>
                            <div class="css-1gueo66 e1cqr3m40"><button type="button" aria-label="수량내리기"
                                                                       class="css-8azp8 e1hx75jb0"></button>
                                <div class="count css-6m57y0 e1cqr3m41">6</div><button type="button" aria-label="수량올리기"
                                                                                       class="css-18y6jr4 e1hx75jb0"></button>
                            </div>
                            <div class="css-5w3ssu esoayg84"><span aria-label="할인 가격" data-testid="product-price"
                                                                   class="css-zq4evb e2qzex51">83,400원</span><span aria-label="판매 가격" data-testid="selling-price"
                                                                                                                   class="css-cwmxfz e2qzex50">89,400원</span></div><button class="css-h5zdhc eudrkjx0"
                                                                                                                                                                           type="button" data-testid="delete"><span class="css-6mgkir e5h3i930"></span></button>
                        </li>
                    </ul>
                    <ul>
                        <li class="css-1d6kgf6 esoayg811"><label class="css-14td1km e1dcessg3"><input type="checkbox"
                                                                                                      class="css-agvwxo e1dcessg2">
                            <div class="css-79hxr7 e1dcessg1"><svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                   xmlns="http://www.w3.org/2000/svg">
                                <path
                                        d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                        stroke="#ddd" fill="#fff"></path>
                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round"
                                      stroke-linejoin="round"></path>
                            </svg></div><span></span>
                        </label><a class="css-1u5t3pw esoayg810"><span class="css-1usz68g esoayg89"></span></a>
                            <div class="css-14sb0pe esoayg88"><a class="css-e0dnmk esoayg87">
                                <p class="css-efcx1u esoayg86">유명산지 설향딸기 500g</p>
                                <p data-testid="content-product-name" class="css-3izcs6 esoayg85">12월 제철과일 골라담기 (택1)</p>
                            </a>
                                <div class="css-ar9i78 esoayg82"></div>
                            </div>
                            <div class="css-1gueo66 e1cqr3m40"><button type="button" aria-label="수량내리기"
                                                                       class="css-8azp8 e1hx75jb0"></button>
                                <div class="count css-6m57y0 e1cqr3m41">6</div><button type="button" aria-label="수량올리기"
                                                                                       class="css-18y6jr4 e1hx75jb0"></button>
                            </div>
                            <div class="css-5w3ssu esoayg84"><span aria-label="할인 가격" data-testid="product-price"
                                                                   class="css-zq4evb e2qzex51">83,400원</span><span aria-label="판매 가격" data-testid="selling-price"
                                                                                                                   class="css-cwmxfz e2qzex50">89,400원</span></div><button class="css-h5zdhc eudrkjx0"
                                                                                                                                                                           type="button" data-testid="delete"><span class="css-6mgkir e5h3i930"></span></button>
                        </li>
                    </ul>
                    <ul>
                        <li class="css-1d6kgf6 esoayg811"><label class="css-14td1km e1dcessg3"><input type="checkbox"
                                                                                                      class="css-agvwxo e1dcessg2">
                            <div class="css-79hxr7 e1dcessg1"><svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                   xmlns="http://www.w3.org/2000/svg">
                                <path
                                        d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                        stroke="#ddd" fill="#fff"></path>
                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round"
                                      stroke-linejoin="round"></path>
                            </svg></div><span></span>
                        </label><a class="css-1u5t3pw esoayg810"><span class="css-1usz68g esoayg89"></span></a>
                            <div class="css-14sb0pe esoayg88"><a class="css-e0dnmk esoayg87">
                                <p class="css-efcx1u esoayg86">유명산지 설향딸기 500g</p>
                                <p data-testid="content-product-name" class="css-3izcs6 esoayg85">12월 제철과일 골라담기 (택1)</p>
                            </a>
                                <div class="css-ar9i78 esoayg82"></div>
                            </div>
                            <div class="css-1gueo66 e1cqr3m40"><button type="button" aria-label="수량내리기"
                                                                       class="css-8azp8 e1hx75jb0"></button>
                                <div class="count css-6m57y0 e1cqr3m41">6</div><button type="button" aria-label="수량올리기"
                                                                                       class="css-18y6jr4 e1hx75jb0"></button>
                            </div>
                            <div class="css-5w3ssu esoayg84"><span aria-label="할인 가격" data-testid="product-price"
                                                                   class="css-zq4evb e2qzex51">83,400원</span><span aria-label="판매 가격" data-testid="selling-price"
                                                                                                                   class="css-cwmxfz e2qzex50">89,400원</span></div><button class="css-h5zdhc eudrkjx0"
                                                                                                                                                                           type="button" data-testid="delete"><span class="css-6mgkir e5h3i930"></span></button>
                        </li>
                    </ul>
                    <ul>
                        <li class="css-1d6kgf6 esoayg811"><label class="css-14td1km e1dcessg3"><input type="checkbox"
                                                                                                      class="css-agvwxo e1dcessg2">
                            <div class="css-79hxr7 e1dcessg1"><svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                                   xmlns="http://www.w3.org/2000/svg">
                                <path
                                        d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                        stroke="#ddd" fill="#fff"></path>
                                <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round"
                                      stroke-linejoin="round"></path>
                            </svg></div><span></span>
                        </label><a class="css-1u5t3pw esoayg810"><span class="css-1usz68g esoayg89"></span></a>
                            <div class="css-14sb0pe esoayg88"><a class="css-e0dnmk esoayg87">
                                <p class="css-efcx1u esoayg86">유명산지 설향딸기 500g</p>
                                <p data-testid="content-product-name" class="css-3izcs6 esoayg85">12월 제철과일 골라담기 (택1)</p>
                            </a>
                                <div class="css-ar9i78 esoayg82"></div>
                            </div>
                            <div class="css-1gueo66 e1cqr3m40"><button type="button" aria-label="수량내리기"
                                                                       class="css-8azp8 e1hx75jb0"></button>
                                <div class="count css-6m57y0 e1cqr3m41">6</div><button type="button" aria-label="수량올리기"
                                                                                       class="css-18y6jr4 e1hx75jb0"></button>
                            </div>
                            <div class="css-5w3ssu esoayg84"><span aria-label="할인 가격" data-testid="product-price"
                                                                   class="css-zq4evb e2qzex51">83,400원</span><span aria-label="판매 가격" data-testid="selling-price"
                                                                                                                   class="css-cwmxfz e2qzex50">89,400원</span></div><button class="css-h5zdhc eudrkjx0"
                                                                                                                                                                           type="button" data-testid="delete"><span class="css-6mgkir e5h3i930"></span></button>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="css-20o6z0 e149z643">
                <div class="css-zbxehx e149z642"><label class="css-xi6i4x e1dcessg3"><input type="checkbox"
                                                                                            class="css-agvwxo e1dcessg2">
                    <div class="css-79hxr7 e1dcessg1"><svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                           xmlns="http://www.w3.org/2000/svg">
                        <path
                                d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                                stroke="#ddd" fill="#fff"></path>
                        <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round"
                              stroke-linejoin="round"></path>
                    </svg></div><span>전체선택 (0/1)</span>
                </label><span class="css-454d5e e149z641"></span><button disabled=""
                                                                         class="css-0 e149z640">선택삭제</button></div>
            </div>
        </div>
        <div class="css-1dta0ch er0tf671">
            <!-- <div class="css-50ad8x er0tf670"> -->
            <div class="css-snlo96 er0tf670">
                <div class="css-oft680 e15fcx0p3">
                    <h3 class="css-1guaarh e15fcx0p2">배송지</h3>
                    <div class="css-50yi3o e15fcx0p1">
                        <p class="css-xxfxl7 e1tweaw11">경기 파주시 소리천로8번길 70 (유니타워) 609호</p>
                        <div class="css-s6py67"><span type="direct" class="css-z4mca9 e1jlkvf51">샛별배송</span></div><button
                            class="css-122i3z7 e4nu7ef3" type="button" height="36" radius="3"><span
                            class="css-nytqmg e4nu7ef1">배송지 변경</span></button>
                    </div>
                </div>
                <div class="css-1t6so8j em21elb0">
                    <div class="css-8jmoub ea1mry77"><span class="css-vmo0an ea1mry76">상품금액</span><span
                            class="css-iinokh ea1mry74">0<span class="css-hfgifi ea1mry72">원</span></span></div>
                    <div class="css-t4mc5m ea1mry77"><span class="css-vmo0an ea1mry76">상품할인금액</span><span
                            class="css-iinokh ea1mry74">0<span class="css-hfgifi ea1mry72">원</span></span></div>
                    <div class="css-t4mc5m ea1mry77"><span class="css-vmo0an ea1mry76">배송비</span><span
                            class="css-iinokh ea1mry74">0<span class="css-hfgifi ea1mry72">원</span></span></div>
                    <div class="css-7ygxxm eepcpbj4"><span class="css-vmo0an eepcpbj3">결제예정금액</span><span
                            class="css-da7gr8 eepcpbj2"><strong class="css-xmbce4 eepcpbj0">0</strong><span
                            class="css-aro4zf eepcpbj1">원</span></span></div>
                    <div class="css-bi9ql0 e142afjf3"><span class="css-1q66xvk e142afjf2">적립</span>최대 <strong
                            class="css-f3vz0n e142afjf1">237원 적립</strong><span class="css-1me0y21 e142afjf0">프렌즈 1%</span></div>
                </div>
                <div class="css-8qz8ia e1mybczi1"><button class="css-fwelhw e4nu7ef3" type="button" height="56"><span
                        class="css-nytqmg e4nu7ef1">주문하기</span></button>
                    <ul class="css-19kxq7d">
                        <li class="css-1741abm ejr204i0">쿠폰/적립금은 주문서에서 사용 가능합니다</li>
                        <li class="css-1741abm ejr204i0">[주문완료] 상태일 경우에만 주문 취소 가능합니다.</li>
                        <li class="css-1741abm ejr204i0">[마이컬리 &gt; 주문내역 상세페이지] 에서 직접 취소하실 수 있습니다.</li>
                        <li class="css-1741abm ejr204i0">쿠폰, 적립금 사용 금액을 제외한 실 결제 금액 기준으로 최종 산정됩니다.</li>
                        <li class="css-1741abm ejr204i0">상품별로 적립금 지급 기준이 다를 수 있습니다. (상품 상세 페이지에서 확인 가능합니다)</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <%@ include file="../include/footer.jspf" %>
</div>
</body>
</html>
