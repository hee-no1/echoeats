<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/product/css/main-css.css">
    <link rel="stylesheet" href="/resources/product/css/product-css.css"/>
    <link rel="stylesheet" href="/resources/product/css/pro_detail.css">
    <link rel="stylesheet" href="/resources/product/css/footer.css">
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
    <title>상품 상세 페이지</title>
    <style>
        .css-1c36ywl {
            background: url(${product.prod_img_id}) 0% 0% / cover, url(https://res.kurly.com/_next/static/images/noimg-150x195-2c819ff….svg) 50% 50% / contain no-repeat rgb(245, 245, 245);
        }

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

        <div class="css-n48rgu ex9g73v0">
            <div class="css-16c0d8l e1brqtzw0">
                <main id="product-atf" class="css-1eoy87d e17iylht5">
                    <div class="css-1c36ywl e17iylht4"></div>
                    <section class="css-1ua1wyk e17iylht3">
                        <div class="css-12lw2qc ezpe9l13">${product.dlvy_type}</div>
                        <div class="css-1qy9c46 ezpe9l12">
                            <h1 class="css-79gmk3 ezpe9l11">${product.prod_name}</h1>
                            <h2 class="css-ki8mlo ezpe9l10">${product.short_desc}</h2>
                            <button class=" css-57nu3d eaxuegm1"></button>
                        </div>
                        <h2 class="css-abwjr2 e1q8tigr4">
                                <span class="css-5nirzt e1q8tigr3">
                                    ${product.disc_rate}%
                                </span>
                            <span class="css-9pf1ze e1q8tigr2"></span>
                            <span class="css-1x9cx9j e1q8tigr1">${product.disc_price}원</span>
                        </h2>
                        <span class="css-1e1rd4p e1q8tigr0">
                                <span>
                                   ${product.prod_price}원
                                </span>
                                <button type="button">
                                    <svg xmlns="http://www.w3.org/2000/svg" widht="21" height="21"
                                         viewBox="0 0 21 21" fill="none">
                                        <circle cx="10.5" cy="10.5" r="6.9" stroke="#ccc" stroke-width="1.2"></circle>
                                        <path fill-rule="evenodd" clip-rule="evenodd"
                                              d="M9.19735 8.7317H7.80005C7.84762 7.32251 8.81681 6.2998 10.5828 6.2998C12.2119 6.2998 13.3 7.23926 13.3 8.55332C13.3 9.46305 12.8482 10.0993 12.0395 10.5809C11.2606 11.0387 11.0406 11.342 11.0406 11.9306V12.2695H9.66113L9.65518 11.8652C9.60167 10.9733 9.94654 10.4382 10.7671 9.95656L10.9414 9.84757C11.5443 9.45619 11.7541 9.14643 11.7541 8.60683C11.7541 7.98845 11.2546 7.54251 10.5055 7.54251C9.73843 7.54251 9.24491 8.00629 9.19735 8.7317ZM9.42924 14.1603C9.42924 14.7312 9.82167 15.1058 10.4163 15.1058C11.0228 15.1058 11.4033 14.7312 11.4033 14.1603C11.4033 13.5836 11.0228 13.209 10.4163 13.209C9.82167 13.209 9.42924 13.5836 9.42924 14.1603Z"
                                              fill="#CCCCCC"></path>
                                    </svg>
                                </button>
                            </span>
                        <p class="css-1jali72 e17iylht2">
                            원산지:${product.origin}
                        </p>

                        <c:choose>
                            <c:when test="${empty memberGrade}">
                                <div class="css-toq1xn e1hhkg2t2">로그인 후, 적립 혜택이 제공됩니다.</div>
                            </c:when>
                            <c:otherwise>
                                <div class="css-wvwj67 e1hhkg2t5">
                                    <span class="css-nlkrd3 e1hhkg2t4">웰컴 ${memberGrade.acm_rate}%</span>
                                    <span class="css-qcwr5d e1hhkg2t3">개당 <strong>${saveMoney}원 적립</strong></span>
                                </div>
                            </c:otherwise>
                        </c:choose>


                        <div href="https://www.kurly.com/member/membership" class="css-362vkr e1hhkg2t1">
                            <p class="css-1pf406l e1hhkg2t0">
                                <strong>2,000원적립금 + 할인 쿠폰 받고 구매하기</strong>
                            </p>
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                 viewBox="0 0 24 24">
                                <defs>
                                    <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
                                </defs>
                                <g fill="none" fill-rule="evenodd">
                                    <g>
                                        <g>
                                            <g>
                                                <g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                                                    <use stroke="#5f0080" stroke-linecap="round" stroke-width="1.2"
                                                         stroke-linejoin="round" transform="rotate(45 5.657 5.657)"
                                                         xlink:href="#gfk9q0rhta"></use>
                                                </g>
                                            </g>
                                        </g>
                                    </g>
                                </g>
                            </svg>
                        </div>
                        <ul class="css-iqoq9n e6qx2kx2">
                            <li class="css-e6zlnr epzddad2">
                                <dt class="css-lytdfk epzddad1">배송</dt>
                                <dd class="css-1k8t52o epzddad0">
                                    <p class="css-c02hqi e6qx2kx1">${product.dlvy_type}</p>
                                    <p class="css-uy94b2 e6qx2kx0">23시 전 주문 시 내일 아침 7시 전 도착
                                        (대구·부산·울산 ${product.dlvy_type} 운영시간 별도 확인)</p>
                                </dd>
                            </li>
                            <li class="css-e6zlnr epzddad2">
                                <dt class="css-lytdfk epzddad1">판매자</dt>
                                <dd class="css-1k8t52o epzddad0">
                                    <p class="css-c02hqi e6qx2kx1">${product.seller}</p>
                                </dd>
                            </li>
                            <li class="css-e6zlnr epzddad2">
                                <dt class="css-lytdfk epzddad1">포장타입</dt>
                                <dd class="css-1k8t52o epzddad0">
                                    <p class="css-c02hqi e6qx2kx1">${product.pack_type}</p>
                                    <p class="css-uy94b2 e6qx2kx0">택배배송은 에코 포장이 스티로폼으로 대체됩니다.</p>
                                </dd>
                            </li>
                            <li class="css-e6zlnr epzddad2">
                                <dt class="css-lytdfk epzddad1">판매단위</dt>
                                <dd class="css-1k8t52o epzddad0">
                                    <p class="css-c02hqi e6qx2kx1">${product.sales_unit}</p>
                                </dd>
                            </li>
                            <li class="css-e6zlnr epzddad2">
                                <dt class="css-lytdfk epzddad1">중량/용량</dt>
                                <dd class="css-1k8t52o epzddad0">
                                    <p class="css-c02hqi e6qx2kx1">${product.weight}</p>
                                </dd>
                            </li>
                            <li class="css-e6zlnr epzddad2">
                                <dt class="css-lytdfk epzddad1">유통기한(또는 소비기한)정보</dt>
                                <dd class="css-1k8t52o epzddad0">
                                    <p class="css-c02hqi e6qx2kx1">${product.exp_date}</p>
                                </dd>
                            </li>
                        </ul>
                        <div class="css-1bp09d0 e17iylht1">
                            <div class="css-2lvxh7 e1qy0s5w0">
                                <li class="css-e6zlnr epzddad2">
                                    <c:if test='${option eq "option"}'>
                                        <dt class="css-lytdfk epzddad1">상품선택</dt>
                                        <dd class="css-1k8t52o epzddad0">
                                            <c:forEach var="optionList" items="${optionList}">
                                                <div class="cart-option-item css-1cb5lnc e1bjklo18">
                                                    <div class="css-1qdyvok e1bjklo16">
                                                        <span class="css-1yojl0t e1bjklo14">${optionList.opt_prod_name}</span>
                                                    </div>
                                                    <span class="css-1072618 e1bjklo13">적립상품</span>
                                                    <div class="css-tk6lxo e1bjklo15">
                                                        <div class="css-nx0orh e1cqr3m40">
                                                            <button type="button" aria-label="수량내리기"
                                                                    class="css-8azp8 e1hx75jb0"></button>
                                                            <div class="count css-6m57y0 e1cqr3m41">0</div>
                                                            <button type="button" aria-label="수량올리기"
                                                                    class="css-18y6jr4 e1hx75jb0"></button>
                                                        </div>
                                                        <div class="css-1jzvrpg e1bjklo12">
                                                            <span class="css-fburr9 e1bjklo11">
                                                                <fmt:formatNumber value="${optionList.opt_price}" pattern="#,###"/>원
                                                            </span>
                                                            <span class="css-gqkxk8 e1bjklo10">
                                                                <fmt:formatNumber value="${optionList.opt_disc_price}" pattern="#,###"/>원
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </dd>
                                    </c:if>
                                    <c:if test='${option ne "option"}'>
                                        <dt class="css-lytdfk epzddad1">상품선택</dt>
                                        <dd class="css-1k8t52o epzddad0">
                                            <div class="cart-option-item css-1cb5lnc e1bjklo18">
                                                <div class="css-1qdyvok e1bjklo16">
                                                    <span class="css-1yojl0t e1bjklo14">${product.prod_name}</span>
                                                </div>
                                                <span class="css-1072618 e1bjklo13">적립상품</span>
                                                <div class="css-tk6lxo e1bjklo15">
                                                    <div class="css-nx0orh e1cqr3m40">
                                                        <button type="button" aria-label="수량내리기"
                                                                class="css-8azp8 e1hx75jb0"></button>
                                                        <div class="count css-6m57y0 e1cqr3m41">1</div>
                                                        <button type="button" aria-label="수량올리기"
                                                                class="css-18y6jr4 e1hx75jb0"></button>
                                                    </div>
                                                    <div class="css-1jzvrpg e1bjklo12">
                                                        <span class="css-fburr9 e1bjklo11">${product.prod_price}원</span>
                                                        <span class="css-gqkxk8 e1bjklo10">${product.disc_price}원</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </dd>
                                    </c:if>
                                </li>
                            </div>
                            <div class="css-9y0nwt e17iylht0">
                                <div class="css-ixlb9s eebc7rx8">
                                    <div class="css-yhijln eebc7rx7">
                                        <span class="css-w1is7v eebc7rx6">총 상품금액 :</span>
                                        <span class="css-x4cdgl eebc7rx5">
                                            <c:choose>
                                                <c:when test="${option eq 'option'}">
                                                    0
                                                </c:when>
                                                <c:otherwise>
                                                    <fmt:formatNumber value="${product.disc_price}" pattern="#,###"/>
                                                </c:otherwise>
                                            </c:choose>
                                        </span>
                                        <span class="css-1jb8hmu eebc7rx4">원</span>
                                    </div>
                                    <div class="css-1iis94s eebc7rx3">
                                        <span class="css-12p95ok eebc7rx2">적립</span>
                                        <c:choose>
                                            <c:when test="${empty memberGrade}">
                                                <span class="css-10e9px3 eebc7rx1">로그인 후, 적립 혜택 제공</span>
                                            </c:when>
                                            <c:otherwise>
                                                <span class="css-10e9px3 eebc7rx1">구매 시 ${saveMoney}원 적립</span>
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                </div>
                            </div>
                            <div class="css-gnxbjx e10vtr1i2">
                                <button class="css-3z91zj e4nu7ef3" type="button" width="56" height="56" radius="3">
                                            <span class="css-nytqmg e4nu7ef1">
                                                <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzIiIGhlaWdodD0iMzIiIHZpZXdCb3g9IjAgMCAzMiAzMiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Ik0yNS44MDcgNy44NjNhNS43NzcgNS43NzcgMCAwIDAtOC4xNzIgMEwxNiA5LjQ5N2wtMS42MzUtMS42MzRhNS43NzkgNS43NzkgMCAxIDAtOC4xNzMgOC4xNzJsMS42MzQgMS42MzQgNy40NjYgNy40NjdhMSAxIDAgMCAwIDEuNDE1IDBzMCAwIDAgMGw3LjQ2Ni03LjQ2N2gwbDEuNjM0LTEuNjM0YTUuNzc3IDUuNzc3IDAgMCAwIDAtOC4xNzJ6IiBzdHJva2U9IiM1RjAwODAiIHN0cm9rZS13aWR0aD0iMS42IiBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K"
                                                     alt class="css-0">
                                            </span>
                                </button>
                                <button class="css-3z91zj e4nu7ef3" type="button" disabled width="56" height="56"
                                        radius="3">
                                            <span class="css-nytqmg e4nu7ef1">
                                                <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzIiIGhlaWdodD0iMzIiIHZpZXdCb3g9IjAgMCAzMiAzMiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIHN0cm9rZT0iI0NDQyIgc3Ryb2tlLXdpZHRoPSIxLjYiIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTEyLjY2NiAyM2EzLjMzMyAzLjMzMyAwIDEgMCA2LjY2NiAwIi8+CiAgICAgICAgPHBhdGggZD0iTTI1Ljk5OCAyMi43MzhINmwuMDEzLS4wM2MuMDc2LS4xMzUuNDcxLS43MDQgMS4xODYtMS43MDlsLjc1LTEuMDV2LTYuNjM1YzAtNC40ODUgMy40MzgtOC4xNCA3Ljc0MS04LjMwOEwxNiA1YzQuNDQ2IDAgOC4wNSAzLjcyMiA4LjA1IDguMzE0djYuNjM0bDEuNzA3IDIuNDExYy4xNzMuMjUzLjI1NC4zOC4yNDIuMzh6IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KICAgIDwvZz4KPC9zdmc+Cg=="
                                                     alt class="css-0">
                                            </span>
                                </button>
                                <sec:authorize access="isAuthenticated()">
                                    <div class="css-14jnwd7 e10vtr1i0">
                                        <button class="cart-button css-1qirdbn getCart" type="button" radius="3">
                                            <span class="css-nytqmg e4nu7ef1">장바구니 담기</span>
                                        </button>
                                    </div>
                                </sec:authorize>
                                <sec:authorize access="!isAuthenticated()">
                                    <div class="css-14jnwd7 e10vtr1i0">
                                        <button class="cart-button css-1qirdbn getLogin" type="button" radius="3">
                                            <span class="css-nytqmg e4nu7ef1">로그인</span>
                                        </button>
                                    </div>
                                </sec:authorize>
                            </div>
                        </div>
                    </section>
                </main>
            </div>
        </div>

        <nav class="css-1le17tz en4zazl1">
            <ul class="css-tse2s2 en4zazl0">
                <li class="css-1tzhzcg efe6b6j1"><a class="css-1t0ft7s efe6b6j0"><span
                        class="name">상품설명</span></a></li>
                <li class="css-1tzhzcg efe6b6j1"><a class="css-1t0ft7s efe6b6j0"><span
                        class="name">상세정보</span></a></li>
                <li class="css-1tzhzcg efe6b6j1"><a class="css-1t0ft7s efe6b6j0"><span
                        class="name">후기</span></a></li>
                <li class="css-1tzhzcg efe6b6j1"><a class="css-1t0ft7s efe6b6j0"><span
                        class="name">문의</span></a></li>
            </ul>
        </nav>


        <div class="css-0 el27cq1">

            <div id="description" class="css-18eozqj el27cq0">
                <div class="css-1d3w5wq e1d86arr0">
                    <div class="css-1yg5v8v"></div>
                </div>
                <div class="css-8k5a6c ezy1ugy1">
                    <div class="css-12peuyp ezy1ugy0"><span
                            style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
                            alt="컬리 파트너스 BODY 이미지"
                            src="https://3p-image.kurly.com/files/20231124/7f8cf35c-f24b-4e70-9b3f-e91c923ccda8.jpg"
                            decoding="async" data-nimg="fill" class="autoImage css-1zjvv7"
                            style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%;"
                            sizes="100vw"
                            srcset="https://3p-image.kurly.com/files/20231124/7f8cf35c-f24b-4e70-9b3f-e91c923ccda8.jpg 640w, https://3p-image.kurly.com/files/20231124/7f8cf35c-f24b-4e70-9b3f-e91c923ccda8.jpg 750w, https://3p-image.kurly.com/files/20231124/7f8cf35c-f24b-4e70-9b3f-e91c923ccda8.jpg 828w, https://3p-image.kurly.com/files/20231124/7f8cf35c-f24b-4e70-9b3f-e91c923ccda8.jpg 1080w, https://3p-image.kurly.com/files/20231124/7f8cf35c-f24b-4e70-9b3f-e91c923ccda8.jpg 1200w, https://3p-image.kurly.com/files/20231124/7f8cf35c-f24b-4e70-9b3f-e91c923ccda8.jpg 1920w, https://3p-image.kurly.com/files/20231124/7f8cf35c-f24b-4e70-9b3f-e91c923ccda8.jpg 2048w, https://3p-image.kurly.com/files/20231124/7f8cf35c-f24b-4e70-9b3f-e91c923ccda8.jpg 3840w"></span>
                    </div>
                </div>
            </div>


            <div id="detail" class="css-18eozqj el27cq0">
                <div class="css-8k5a6c ezy1ugy1"></div>
                <div class="css-186pvss e11kghol1">
                    <h3 class="css-nd38pl e11kghol0">상품고시정보</h3>
                    <ul class="css-1lb3ltj ej1h6cm3">
                        <li class="css-1exh1as ej1h6cm1">품명</li>
                        <li class="css-15ohb0b ej1h6cm0">메리 미니스노우볼 35 (옵션 택1)</li>
                        <li class="css-1exh1as ej1h6cm1">KC 인증정보 (｢전기용품 및 생활용품 안전관리법｣에 따른 공급자적합성확인대상제품에 한함)</li>
                        <li class="css-15ohb0b ej1h6cm0">안전기준준수</li>
                        <li class="css-1exh1as ej1h6cm1">색상</li>
                        <li class="css-15ohb0b ej1h6cm0">상세페이지 참조</li>
                        <li class="css-1exh1as ej1h6cm1">구성품</li>
                        <li class="css-15ohb0b ej1h6cm0">메리 미니스노우볼 35 (옵션 택1)</li>
                        <li class="css-1exh1as ej1h6cm1">주요 소재</li>
                        <li class="css-15ohb0b ej1h6cm0">아크릴, 정제수 외</li>
                        <li class="css-1exh1as ej1h6cm1">제조자, 수입품의 경우 수입자를 함께 표기 (병행수입의 경우 병행수입 여부로 대체 가능)
                            * 구성품 별 제조자가 다른 경우 각 구성품의 제조자, 수입자
                        </li>
                        <li class="css-15ohb0b ej1h6cm0">까사미아OEM</li>
                        <li class="css-1exh1as ej1h6cm1">제조국
                            * 구성품 별 제조국이 다른 경우 각 구성품의 제조국
                        </li>
                        <li class="css-15ohb0b ej1h6cm0">중국</li>
                        <li class="css-1exh1as ej1h6cm1">크기</li>
                        <li class="css-15ohb0b ej1h6cm0">[실버트리, 골드트리] W35 x D35 x H45mm [그린트리, 스노우맨] W35 x D35 x
                            H48mm
                        </li>
                        <li class="css-1exh1as ej1h6cm1">재공급(리퍼브) 가구의 경우 재공급 사유 및 하자 부위에 관한 정보 (하단 예시 참조)

                            &lt; 재공급 사유 및 하자 부위 표시 예시 &gt;
                            견본주택 전시상품으로 식탁 상판 등에 미세한 흠집 있음

                            ※ 흠집 위치는 상품별로 상이하므로 구매하시려는 상품의 정확한 하자 부위를 확인하시려면 판매자(연락처 기재)에게 문의하시기 바랍니다.
                        </li>
                        <li class="css-15ohb0b ej1h6cm0">상세설명 참조</li>
                        <li class="css-1exh1as ej1h6cm1">배송 ・ 설치비용</li>
                        <li class="css-15ohb0b ej1h6cm0">배송안내 참조</li>
                        <li class="css-1exh1as ej1h6cm1">품질보증기준</li>
                        <li class="css-15ohb0b ej1h6cm0">A/S 불가상품</li>
                        <li class="css-1exh1as ej1h6cm1">A/S 책임자와 전화번호</li>
                        <li class="css-15ohb0b ej1h6cm0">까사미아 고객센터 1588-3408</li>
                    </ul>
                </div>
                <div class="css-186pvss e1j4wjnz1">
                    <h3 class="css-nd38pl e1j4wjnz0">판매자정보</h3>
                    <ul class="css-1lb3ltj ej1h6cm3">
                        <li class="css-1exh1as ej1h6cm1">상호</li>
                        <li class="css-15ohb0b ej1h6cm0">(주)신세계까사</li>
                        <li class="css-1exh1as ej1h6cm1">대표자</li>
                        <li class="css-15ohb0b ej1h6cm0">김홍극</li>
                        <li class="css-1exh1as ej1h6cm1">통신판매업 신고번호</li>
                        <li class="css-15ohb0b ej1h6cm0">2021-서울중구-1960</li>
                        <li class="css-1exh1as ej1h6cm1">사업자등록번호</li>
                        <li class="css-15ohb0b ej1h6cm0">1208111794</li>
                        <li class="css-1exh1as ej1h6cm1">사업장 소재지</li>
                        <li class="css-15ohb0b ej1h6cm0">서울특별시 중구 남대문시장 10길 2, 5층(회현동1가, MESA)</li>
                        <li class="css-1exh1as ej1h6cm1">이메일</li>
                        <li class="css-15ohb0b ej1h6cm0">tngml8939@shinsegae.com</li>
                        <li class="css-1exh1as ej1h6cm1">연락처</li>
                        <li class="css-15ohb0b ej1h6cm0">1566-0228</li>
                        <li class="css-1exh1as ej1h6cm1"></li>
                    </ul>
                    <div class="css-1bprc16 e1n74ue00">
                        <div class="title">
                            <svg width="14" height="14" viewBox="0 0 16 16" fill="none"
                                 xmlns="http://www.w3.org/2000/svg">
                                <circle cx="8" cy="8" r="7" stroke="#333" stroke-width="1.2"></circle>
                                <circle cx="8" cy="5.15625" r="0.984375" fill="#333"></circle>
                                <rect x="7.23438" y="7.125" width="1.53125" height="4.8125" rx="0.7"
                                      fill="#333333"></rect>
                            </svg>
                            <span>본 상품은 파트너사가 판매하는 상품입니다.</span></div>
                        <p class="description">컬리는 통신판매중개자로서 통신판매의 당사자가 아닙니다.
                            본 상품의 광고, 주문, 품질, 교환/환불 등의 의무와 책임은 각 판매자에게 있습니다.</p>
                    </div>
                </div>
                <div class="css-1vt9a6q e1711h2r7">
                    <div class="css-1azakc e1711h2r6"><span class="css-1wepwlf e1711h2r5">WHY KURLY</span></div>
                    <div class="css-4xwwak e1711h2r4">
                        <dl class="css-12dlzwv e1711h2r3">
                            <dt class="css-it4xr e1711h2r2">깐깐한 상품위원회</dt>
                            <dd class="css-164ekbt e1711h2r1">나와 내 가족이 먹고 쓸 상품을 고르는<br>마음으로 매주 상품을 직접
                                먹어보고,<br>경험해보고 성분, 맛, 안정성
                                등
                                다각도의<br>기준을 통과한 상품만을 판매합니다.<span class="css-1ldxevt e1711h2r0">(온라인 기준 / 자사몰, 직구
                                            제외)</span></dd>
                        </dl>
                        <dl class="css-12dlzwv e1711h2r3">
                            <dt class="css-csns7h e1711h2r2">차별화된 Kurly Only 상품</dt>
                            <dd class="css-164ekbt e1711h2r1">전국 각지와 해외의 훌륭한 생산자가<br>믿고 선택하는 파트너, 컬리.<br>3천여 개가
                                넘는 컬리 단독 브랜드,
                                스펙의<br>Kurly Only 상품을 믿고 만나보세요.<span class="css-1ldxevt e1711h2r0">(온라인 기준 /
                                            자사몰, 직구 제외)</span>
                            </dd>
                        </dl>
                        <dl class="css-12dlzwv e1711h2r3">
                            <dt class="css-r24z76 e1711h2r2">신선한 풀콜드체인 배송</dt>
                            <dd class="css-164ekbt e1711h2r1">온라인 업계 최초로 산지에서 문 앞까지<br>상온, 냉장, 냉동 상품을 분리 포장
                                후<br>최적의 온도를 유지하는 냉장
                                배송
                                시스템,<br>풀콜드체인으로 상품을 신선하게 전해드립니다.<span class="css-1ldxevt e1711h2r0">(샛별배송에
                                            한함)</span></dd>
                        </dl>
                        <dl class="css-12dlzwv e1711h2r3">
                            <dt class="css-1s9l9oc e1711h2r2">고객, 생산자를 위한 최선의 가격</dt>
                            <dd class="css-164ekbt e1711h2r1">매주 대형 마트와 주요 온라인 마트의 가격<br>변동 상황을 확인해 신선식품은
                                품질을<br>타협하지 않는 선에서 최선의
                                가격으로,<br>가공식품은 언제나 합리적인 가격으로<br>정기 조정합니다.
                            </dd>
                        </dl>
                        <dl class="css-12dlzwv e1711h2r3">
                            <dt class="css-iktv7d e1711h2r2">환경을 생각하는 지속 가능한 유통</dt>
                            <dd class="css-164ekbt e1711h2r1">친환경 포장재부터 생산자가 상품에만<br>집중할 수 있는 직매입 유통구조까지,<br>지속
                                가능한 유통을 고민하며 컬리를
                                있게<br>하는 모든 환경(생산자, 커뮤니티, 직원)이<br>더 나아질 수 있도록 노력합니다.
                            </dd>
                        </dl>
                    </div>
                </div>
                <div class="css-0 e18xf2bx10">
                    <div class="css-o0wurt e18xf2bx9">
                        <div class="css-0 e18xf2bx8">
                            <h5 class="css-rbx0sz e18xf2bx7">고객행복센터</h5>
                            <p class="css-1vh38tr e18xf2bx6">궁금하신 점이나 서비스 이용에 불편한 점이 있으신가요?<span
                                    class="css-ekock0 e18xf2bx5">문제가 되는
                                            부분을 사진으로 찍어 아래 중 편하신 방법으로 접수해 주시면 빠르게 도와드리겠습니다.</span></p>
                        </div>
                        <ul class="css-15889fd e18xf2bx4">
                            <li class="css-18zkc1e e18xf2bx3"><strong class="css-x0he4f e18xf2bx2">전화 문의
                                1644-1107</strong><span class="css-1qjuprf e18xf2bx1">월~토요일 오전 7시 - 오후
                                            6시</span></li>
                            <li class="css-18zkc1e e18xf2bx3"><strong class="css-x0he4f e18xf2bx2">카카오톡
                                문의</strong><span class="css-1qjuprf e18xf2bx1">월~토요일 오전 7시 - 오후
                                            6시</span><span class="css-1qjuprf e18xf2bx1">일/공휴일 오전 7시 - 오후
                                            1시</span><strong class="css-xjrpkm e18xf2bx0">카카오톡에서 '컬리' 를 검색 후<br>대화창에 문의
                                및 불편사항을<br>남겨주세요.</strong></li>
                            <li class="css-18zkc1e e18xf2bx3"><strong class="css-x0he4f e18xf2bx2">홈페이지
                                문의</strong><span class="css-1qjuprf e18xf2bx1">365일</span><span
                                    class="css-1qjuprf e18xf2bx1">로그인 &gt; 마이컬리
                                            &gt;
                                            1:1 문의</span><strong class="css-xjrpkm e18xf2bx0">고객센터 운영 시간에
                                순차적으로<br>답변해드리겠습니다.</strong>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="css-xwfhcz e1wbvr7p4"><strong class="css-1whdyd5 e1wbvr7p3">교환 및 환불 안내</strong>
                    <p class="css-1l0p3iw e1wbvr7p2">교환 및 환불이 필요하신 경우 고객행복센터로 문의해주세요.</p>
                    <button type="button"
                            class="css-1t0iw3m e1wbvr7p0">닫기
                    </button>
                </div>
                <div class="css-zym26p e1wuccxq2"><strong class="css-ro4hvg e1wuccxq1">01. 상품에 문제가 있는
                    경우</strong>
                    <p class="css-13xsn2p e1wuccxq0">받으신 상품이 표시·광고 내용 또는 계약 내용과 다른 경우에는 상품을 받은 날부터 3개월 이내,
                        그 사실을 알게 된 날부터 30일 이내에 교환 및 환불을 요청하실 수 있습니다.
                        상품의 정확한 상태를 확인할 수 있도록 사진을 함께 보내주시면 더 빠른 상담이 가능합니다.<span class="css-13ttlil e1u4390v2">※
                                    배송 상품에 문제가 있는
                                    것으로
                                    확인되면 배송비는 컬리가 부담합니다.</span></p>
                </div>
                <div class="css-zym26p e1wuccxq2"><strong class="css-ro4hvg e1wuccxq1">02. 단순 변심, 주문 착오의
                    경우</strong>
                    <p class="css-13xsn2p e1wuccxq0"><strong class="css-e6zvdp e1u4390v1">신선 / 냉장 / 냉동
                        식품</strong>재판매가 불가한 상품의
                        특성상,
                        단순 변심, 주문 착오 시 교환 및 반품이 어려운 점 양해 부탁드립니다.
                        상품에 따라 조금씩 맛이 다를 수 있으며, 개인의 기호에 따라 같은 상품도 다르게 느끼실 수 있습니다.<strong
                                class="css-e6zvdp e1u4390v1">유통기한 30일
                            이상 식품
                            (신선 / 냉장 / 냉동 제외) &amp; 기타 상품 (뷰티 제품, 생활용품)</strong>상품을 받은 날부터 7일 이내 교환, 반품이 가능합니다.
                        고객행복센터로
                        문의해주세요.<span class="css-13ttlil e1u4390v2">※ 단순 변심으로 인한 배송 상품 교환 또는 환불의 경우 고객님께서 배송비를
                                    부담하셔야 하며, 배송비는
                                    상품설명 및 상품이미지에서
                                    확인하실 수 있습니다.</span></p>
                </div>
                <div class="css-zym26p e1wuccxq2"><strong class="css-ro4hvg e1wuccxq1">03. 교환·반품이 불가한
                    경우</strong>
                    <p class="css-13xsn2p e1wuccxq0">다음에 해당하는 교환·환불 신청은 처리가 어려울 수 있으니 양해 부탁드립니다.

                        <span class="css-1pcbtdr e1u4390v0">고객님의 책임 있는 사유로 상품이 멸실되거나 훼손된 경우
                                    (단, 상품의 내용을 확인하기 위해 포장 등을 훼손한 경우는 제외)</span><span class="css-1pcbtdr e1u4390v0">고객님의
                                    사용 또는 일부 소비로
                                    상품의
                                    가치가 감소한 경우</span><span class="css-1pcbtdr e1u4390v0">시간이 지나 다시 판매하기 곤란할 정도로 상품의 가치가
                                    감소한
                                    경우</span><span class="css-1pcbtdr e1u4390v0">복제가 가능한 상품의 포장이 훼손된 경우</span><span
                                class="css-1pcbtdr e1u4390v0">고객님의 주문에
                                    따라 개별적으로 생산되는 상품의 제작이 이미 진행된 경우</span>
                    </p>
                </div>
                <div class="css-xwfhcz e1wbvr7p4"><strong class="css-1whdyd5 e1wbvr7p3">주문 취소 안내</strong>
                    <p class="css-1l0p3iw e1wbvr7p2"><strong class="css-1oekmga e1wbvr7p1">- [주문완료] 상태일 경우에만 주문
                        취소 가능합니다.
                        - [마이컬리 &gt; 주문내역 상세페이지] 에서 직접 취소하실 수 있습니다.</strong></p>
                    <button type="button"
                            class="css-1t0iw3m e1wbvr7p0">닫기
                    </button>
                </div>
                <div class="css-zym26p e1wuccxq2"><strong class="css-ro4hvg e1wuccxq1">주문 취소 관련</strong>
                    <p class="css-13xsn2p e1wuccxq0">- [배송준비중] 부터는 취소가 불가하니, 반품으로 진행해주세요. (상품에 따라 반품이 불가할 수
                        있습니다.)
                        - 주문마감 시간에 임박할수록 취소 가능 시간이 짧아질 수 있습니다.
                        - 비회원은 App 또는 모바일 웹사이트에서 [마이컬리 &gt; 비회원 주문조회 페이지] 에서 취소가 가능합니다.
                        - 일부 예약상품은 배송 3~4일 전에만 취소 가능합니다.
                        - 주문상품의 부분취소는 불가능합니다. 전체 주문 취소 후 다시 구매 해주세요.
                        - 미성년자 결제 시 법정대리인이 그 거래를 취소할 수 있습니다.
                    </p>
                </div>
                <div class="css-zym26p e1wuccxq2"><strong class="css-ro4hvg e1wuccxq1">결제 승인 취소 / 환불 관련</strong>
                    <p class="css-13xsn2p e1wuccxq0">- 카드 환불은 카드사 정책에 따르며, 자세한 사항은 카드사에 문의해주세요.
                        - 결제 취소 시, 사용하신 적립금과 쿠폰도 모두 복원됩니다.</p>
                </div>
                <div class="css-mve3d0 e1raabu12"><strong class="css-1whdyd5 e1raabu11">배송관련 안내</strong>
                    <p class="css-0 e1raabu10">배송 과정 중 기상 악화 및 도로교통 상황에 따라 부득이하게 지연 배송이 발생될 수 있습니다.</p>
                </div>
            </div>


            <!-- 리뷰 -->

            <div id="review" class="css-18eozqj el27cq0">
                <section class="css-ek0k8o e12zoc6j1">
                    <h2 aria-label="상품 후기" class="css-16ax551 e12zoc6j0">상품 후기</h2>
                    <article class="css-12iohw3 e17qfln34">
                        <h3 class="css-164jd3n e17qfln33"></h3>
                        <ul class="css-eoh0f0 e17qfln32">
                            <li class="css-104t16y e17qfln31">주간 베스트 후기로 선정 시 5,000원 추가 적립</li>
                            <li class="css-104t16y e17qfln31">사진후기 100원, 글후기 50원 적립 (퍼플, 더퍼플은 2배 적립)</li>
                            <li class="css-104t16y e17qfln31">멤버십 구독 시, 별도 혜택 적용으로 일반 적립</li>
                            <li class="css-104t16y e17qfln31">동일 상품의 후기는 월 1회만 적립금을 지급 해드립니다.</li>
                            <li class="css-104t16y e17qfln31">후기 작성 후 일주일 이내에 적립금이 지급됩니다.</li>
                        </ul>
                        <button class="css-1sktziu e17qfln30">자세히 보기</button>
                    </article>
                    <div>
                        <div class="css-14dfl2x e13wypwm0">
                            <div class="css-benyte e1ln51kt3"><span
                                    class="css-1gq7k31 e1ln51kt2">공지</span>
                                <button
                                        class="css-qbpq7v e1ln51kt1">[23년 12월 1주] 베스트 후기 선정 안내
                                </button>
                            </div>
                            <div class="css-benyte e1ln51kt3"><span
                                    class="css-1gq7k31 e1ln51kt2">공지</span>
                                <button
                                        class="css-qbpq7v e1ln51kt1">상품후기 적립금 정책 안내
                                </button>
                            </div>
                        </div>
                        <div class="css-1e9xl0r e11jf8tu2">
                            <svg width="48" height="48" viewBox="0 0 48 48"
                                 fill="none" xmlns="http://www.w3.org/2000/svg">
                                <g clip-path="url(#clip0_2061_60391)">
                                    <path
                                            d="M24 47C36.7025 47 47 36.7025 47 24C47 11.2975 36.7025 1 24 1C11.2975 1 1 11.2975 1 24C1 36.7025 11.2975 47 24 47Z"
                                            stroke="#e2e2e2" stroke-width="2"></path>
                                    <path fill-rule="evenodd" clip-rule="evenodd"
                                          d="M24 13C25.1046 13 26 13.8954 26 15V26C26 27.1046 25.1046 28 24 28C22.8954 28 22 27.1046 22 26V15C22 13.8954 22.8954 13 24 13ZM24 31C25.1046 31 26 31.8954 26 33C26 34.1046 25.1046 35 24 35C22.8954 35 22 34.1046 22 33C22 31.8954 22.8954 31 24 31Z"
                                          fill="#e2e2e2"></path>
                                </g>
                                <defs>
                                    <clipPath id="clip0_2061_60391">
                                        <rect width="48" height="48" fill="white"></rect>
                                    </clipPath>
                                </defs>
                            </svg>
                            <p class="css-58rf7i e11jf8tu1">따끈한 첫 후기를 기다리고 있어요.</p>
                            <button
                                    class="css-1hx620j e11jf8tu0">작성 가능
                                후기
                            </button>
                        </div>
                    </div>
                </section>
            </div>


            <!-- 상품 문의 -->


            <div id="inquiry" class="css-18eozqj el27cq0">
                <div class="css-30tvht eewa3w91">
                    <div class="css-17juoyc eewa3w90">
                        <button class="css-mhrz8m e4nu7ef3" type="button"
                                width="120" height="40"><span class="css-nytqmg e4nu7ef1">문의하기</span></button>
                    </div>
                    <div class="css-pncj1z eu9pqlw4"><strong class="css-83ihkd eu9pqlw3">상품 문의</strong>
                        <ul class="css-8sw7yu eu9pqlw2">
                            <li class="css-owypta eu9pqlw1">상품에 대한 문의를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 담당
                                게시판으로 이동될 수 있습니다.
                            </li>
                            <li class="css-owypta eu9pqlw1">배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 마이컬리 내<a
                                    href="/mypage/inquiry/list" class="css-1p56jfg eu9pqlw0">1:1 문의</a>에 남겨주세요.
                            </li>
                        </ul>
                    </div>
                    <div class="css-0 e1wj4bbj2">
                        <table class="css-1d3w5wq e1wj4bbj1">
                            <thead class="css-1xukm34 e1wj4bbj0">
                            <tr>
                                <th class="title">제목</th>
                                <th class="author">작성자</th>
                                <th class="created-date">작성일</th>
                                <th class="status">답변상태</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="css-7uttip eutnmqf0">
                                <td colspan="4">등록된 문의가 없습니다.</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="css-18ad0gx e9e6ap50">
                        <div class="css-sxxs1g eytury60">
                            <button disabled="" type="button"
                                    class="css-rzcdhr e1hbwyso0">
                                <div class="css-7qb0sc e1ilyb3p0">이전</div>
                            </button>
                            <button disabled="" type="button" class="css-1jwilit e1pk9060">
                                <div class="css-7qb0sc e1ilyb3p0">다음</div>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="../include/footer.jspf" %>
</div>
</div>
</div>
<script>

    let productList = [];
<%--    <sec:authorize access="isAuthenticated()">--%>
    <c:choose>
    <c:when test="${option eq 'option'}">
    <c:forEach var="optionList" items="${optionList}" varStatus="loop">
    productList[${loop.index}] = {
        prod_id : ${optionList.prod_id},
        opt_prod_id: '${optionList.opt_prod_id}',
        opt_prod_name : '${optionList.opt_prod_name}',
        opt_price : ${optionList.opt_price},
        opt_disc_price : ${optionList.opt_disc_price},
        mem_id : '${memberID}',
        qty : 0
    }
    </c:forEach>
    </c:when>
    <c:otherwise>
    productList[0] = {
        prod_id : ${product.prod_id},
        prod_name : '${product.prod_name}',
        prod_price : ${product.prod_price},
        disc_price : ${product.disc_price},
        mem_id : '${memberID}',
        qty : 1
    }
    </c:otherwise>
    </c:choose>
<%--    </sec:authorize>--%>
    console.log("productList : ", productList);
</script>
<script src="/resources/product/js/product.js"></script>
</body>
</html>