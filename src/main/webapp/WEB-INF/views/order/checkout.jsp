<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="/resources/order/css/checkoutStyle.css" rel="stylesheet" type="text/css" />
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script type="text/javascript" src="https://cdn.iamport.kr/v1/iamport.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
</head>
<c:set var="member" value="${checkout.memberDto}" />
<c:set var="items" value="${checkout.selectedItems}" />
<c:set var="delNotes" value="${checkout.delNotesDto}" />
<c:set var="address" value="${checkout.addressDto}"/>

<body>
<div class="css-1ykiyus e146m4rf2">
    <div class="css-1uom1od e146m4rf0">
        <h2 class="css-10owlr e146m4rf1">주문서</h2>

<%--        주문상품--%>
        <div class="css-ixlb9s epvroj94">
        <div class="css-zo1i6f edbbr7c2"><h3 class="css-1ddzp0m edbbr7c1">주문 상품</h3>
            <button data-testid="fold-button" id="prodDetailBtn" class="css-lvqq7y e17cst860">
                <svg width="30" height="30" viewBox="0 0 30 30" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><defs><path id="7a02qqg3ja" d="M11 12h9v9"></path></defs><g fill="none" fill-rule="evenodd"><path d="M0 0h30v30H0z"></path><use id="arrowBtn" stroke="#333" stroke-width="2" stroke-linecap="square" transform="rotate(-45 15.5 16.5)" href="#7a02qqg3ja"></use></g></svg>
            </button></div>

            <div class="css-r6muhy e1fjdxoo1 totItems">${checkout.tot_prod_name}의 상품을 주문합니다</div>

            <c:forEach var="item" items="${items}">
                <c:set var="prod" value="${item.productOrderCheckout}"/>
                <div class="css-bd9p1l e17a7yib10 items" style="display: none">
                    <c:choose>
                        <c:when test = "${empty prod.opt_prod_id}">
                            <img src="https://img-cf.kurly.com/cdn-cgi/image/width=120,height=156,fit=crop,quality=85/shop/data/goods/1637153888985l0.jpg" alt="[농심] 신라면 멀티 5입" class="css-17jyui4 e17a7yib9">
                            <span class="css-10nl60h e17a7yib8"><span class="css-9j7jhp e17a7yib7">${prod.prod_name}</span></span>
                            <span class="css-1efb5i1 e17a7yib5">${item.qty}개</span>
                            <span class="css-1j31gob e17a7yib4"><span class="css-jnogx7 e17a7yib1">${prod.disc_price}원</span></span>
                        </c:when>
                        <c:otherwise>
                            <img src="https://img-cf.kurly.com/cdn-cgi/image/width=120,height=156,fit=crop,quality=85/shop/data/goods/1646377916155l0.jpg" alt="[KF365] 1+등급 무항생제 대란 20구" class="css-17jyui4 e17a7yib9">
                            <span class="css-10nl60h e17a7yib8"><span class="css-9j7jhp e17a7yib7">${prod.opt_prod_name}</span></span>
                            <span class="css-1efb5i1 e17a7yib5">${item.qty}개</span>
                            <span class="css-1j31gob e17a7yib4"><span class="css-jnogx7 e17a7yib1">${prod.opt_disc_price}원</span></span>
                        </c:otherwise>
                    </c:choose>

                </div>
            </c:forEach>

<%--         주문자 정보--%>
        <div class="css-12aowi2 edbbr7c2"><h3 class="css-1ddzp0m edbbr7c1">주문자 정보</h3></div>
            <div id="kurly-orderer-info" class="css-shoa2s e1vfdada3"><div class="css-yazyg9 e150alo82"><span class="css-ln1csn e150alo81">보내는 분</span><div class="css-82a6rk e150alo80">
            <div class="css-t6o2y8 e1vfdada2">${member.mem_name}</div></div></div>

            <div class="css-yazyg9 e150alo82"><span class="css-ln1csn e150alo81">휴대폰</span>
            <div class="css-82a6rk e150alo80">
            <div class="css-t6o2y8 e1vfdada2">${member.mem_phone}</div></div></div>

            <div class="css-yazyg9 e150alo82"><span class="css-ln1csn e150alo81">이메일</span>
            <div class="css-82a6rk e150alo80">${member.mem_email}
            <div class="css-1r0yqr6 e1vfdada1"><p class="css-i7dt79 e1vfdada0">이메일을 통해 주문처리과정을 보내드립니다.</p><p class="css-i7dt79 e1vfdada0">정보 변경은 마이컬리 &gt; 개인정보 수정 메뉴에서 가능합니다.</p></div></div></div></div>

<%--          배송정보--%>
        <div id="shipping-container">
            <div class="css-12aowi2 edbbr7c2"><h3 class="css-1ddzp0m edbbr7c1">배송 정보</h3>
                <div class="css-bjn8wh er4y7r83"><a class="css-orhu8r er4y7r82">배송지 변경 안내<span class="css-gwort8 er4y7r81"></span></a>
                    <div width="188" height="60" class="css-1k2fiq3 ev65imb2">
                        <div class="css-82a6rk ev65imb1"><span class="css-2s3epn er4y7r80">장바구니, 홈에서</span><span class="css-4zleql er4y7r80">배송지를 변경할 수 있어요</span></div><button class="css-157xhr7 ev65imb0"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16" fill="none"><path d="M12.6154 12.8154L3 3" stroke="#fff" stroke-linecap="round"></path><path d="M3 12.8154L12.6242 3" stroke="#fff" stroke-linecap="round"></path></svg></button></div></div></div>
            <div class="css-5d6nlw e17yjk9v4">
                <div class="css-1gshg9u e150alo82"><span class="css-ln1csn e150alo81">배송지</span>
                    <div class="css-82a6rk e150alo80"><span class="css-3uygi7 e17yjk9v3">기본배송지</span><p class="css-36j4vu e17yjk9v2">${address.addr} ${address.dtl_addr}</p>
                        <div class="css-iqoq9n e17yjk9v0"><button class="css-1xky6jf e4nu7ef3" type="button" width="60" height="30" radius="3"><span class="css-nytqmg e4nu7ef1">변경</span></button></div></div></div></div>
            <div id="checkout-shipping-details" class="css-1y0xj4c e1pxan881">
                <div id="delNotes" class="css-kc45zq e150alo82"><span class="css-ln1csn e150alo81">배송 요청사항</span>
            <c:choose>
                <c:when test = "${delNotes == null}">
                    <div id="firstDelNotesDiv"class="css-82a6rk e150alo80">
                    <span id="firstDelNotes" class="css-11y0tcn efthce41">배송 요청사항을 입력해주세요</span>
                    <div class="css-iqoq9n e1pxan880"><button class="css-117jo2j e4nu7ef3 delNotesBtn" type="button" width="60" height="30" radius="3"><span class="css-nytqmg e4nu7ef1">입력</span></button></div>
                    </div>

                </c:when>
                <c:otherwise>
                    <div id="NotFirst" class="css-82a6rk e150alo80"><span id="place" class="css-11y0tcn efthce41">${delNotes.place}</span><span class="css-bhczxb efthce40"></span>
                    <span id="entryway" class="css-11y0tcn efthce41">${delNotes.column_sts}</span>
                        <c:choose>
                            <c:when test = "${empty delNotes.entryway_detail}">
                                <span id="entrywayDetail"></span>
                            </c:when>
                            <c:otherwise>
                                <span id="entrywayDetail"> (${delNotes.entryway_detail})</span>
                            </c:otherwise>
                        </c:choose>
                                <div id="personData" class="css-rqc9f e14u1xpe0">${delNotes.name},${delNotes.number}</div>
                    <div class="css-iqoq9n e1pxan880"><button class="css-117jo2j e4nu7ef3 delNotesBtn" type="button" width="60" height="30" radius="3"><span class="css-nytqmg e4nu7ef1">수정</span></button></div></div></div>
                </c:otherwise>
            </c:choose>

        </div>
        </div>
<div></div>

    <div class="css-4c6dm7 epvroj93">
        <%-- 쿠폰 라인 --%>
        <div class="css-134fy6p epvroj92">
            <%-- 쿠폰 헤더 --%>
            <div class="css-12aowi2 edbbr7c2"><h3 class="css-1ddzp0m edbbr7c1">쿠폰</h3></div>
                <%-- 쿠폰 내용 --%>
                <div class="css-1gshg9u e150alo82"><span class="css-ln1csn e150alo81">쿠폰 적용</span>
                    <div class="css-82a6rk e150alo80"><div class="css-1uj3loi e1brt3tk0">
                        <button id="couponBtn" class="css-1cg046d e1wlhyxd1" value="unchecked">사용가능 쿠폰 ${fn:length(checkout.couponList)}장<span class="css-1e56lav e1wlhyxd0"><span rotate="0" class="css-f2a03j ebkt7i80"></span></span></button>
                        <div id="couponList" role="listbox" class="css-wvvmzg e12aaan21">
                        <c:forEach var="coupon" items="${checkout.couponList}">
                            <button  class="couponListBtn">
                                <div class="css-1ie56gn e1ro4vie6"><span class="css-4ntluf e1ro4vie5"></span>
                                    <div class="css-kmlyvg e1ro4vie3">
                                        <strong class="css-1bfy7g3 e1ro4vie2 coupon${coupon.cp_id}">${coupon.cp_name}</strong>
                                        <span class="css-bs5mk4 e1ro4vie0 coupon${coupon.cp_id}">${coupon.cp_del_date} 만료</span>
                                    </div>
                                </div>
                            </button>
                        </c:forEach>
                        </div>
                    </div>
                        <button type="button" class="css-y9957 e1rx731f1"><span class="css-s5xdrg e1rx731f0">쿠폰 사용 문의 (카카오톡) <span class="css-1q6xk2g e1563em20"></span></span></button><div class="css-17pnhmt eggaj260"></div></div></div>
            <%-- 적립금 헤더 --%>
            <div class="css-17t7y0p edbbr7c2"><h3 class="css-1ddzp0m edbbr7c1">적립금</h3></div>
                <%-- 적립금 내용 --%>
                <div class="css-pkhh3q e150alo82"><span class="css-ln1csn e150alo81">적립금</span><div class="css-82a6rk e150alo80">
                    <div class="css-iptwzv e1gm2j0y9"><div class="css-1az0nid e1gm2j0y8"><span class="css-o5boot e1gm2j0y5">사용가능 잔액</span><span class="css-cp6cch e1gm2j0y4"><span id="point" class="money">4000</span><span class="css-o5boot e1gm2j0y5">원</span></span></div></div>
                    <%-- 사용할 적립금 입력 --%>
                    <div class="css-1s0y7rc e1gm2j0y2"><div class="css-16axygr e1uzxhvi6"><div height="44" class="css-t7kbxx e1uzxhvi3">
                        <input data-testid="input-box" name="point-usage" placeholder="0" type="text" height="44" class="css-1quw3ub e1uzxhvi2" oninput="updateValue(this)" id="inputPointUsed"></div></div>
                        <button id="allUseBtn" class="css-197i5eo e4nu7ef3" type="button" width="100" height="44" radius="3"><span class="css-nytqmg e4nu7ef1">모두사용</span></button></div><div class="css-54a39b e1gm2j0y1">사용 시 적립금이 먼저 소진됩니다.</div><div class="css-1waf5ak ezr038b1"></div></div></div><div class="css-12aowi2 edbbr7c2"><h3 class="css-1ddzp0m edbbr7c1">결제 수단</h3></div><div class="css-1gshg9u e150alo82"><span class="css-ln1csn e150alo81">결제수단 선택</span>
                <div class="css-82a6rk e150alo80">
                    <div class="css-gd125q e4nb37r1"><div><div class="css-18dvwsu ef0cmoa0">
                        <button type="button" id="kakaopayBtn" class="css-1fecctx payBtnList" data-testid="kakao-pay-button" color="#f6e500" value="kakaopay"><img class="css-1wbfblw e1ewacwr0" src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNTAiIGhlaWdodD0iMjAiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CiAgICA8ZyBmaWxsPSIjMDAwIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPgogICAgICAgIDxwYXRoIGQ9Ik03LjUxNSAyLjhDMy4zNjUgMi44IDAgNS40NDUgMCA4LjcwN2MwIDEuOTM4IDEuMTg3IDMuNjU3IDMuMDIxIDQuNzM0LS4xOTEuNzY4LS42ODQgMi43NDItLjc1IDIuOTU3LS4wODMuMjY2LS4xMDMgMS4wNDYuNzAyLjUxMi42MzQtLjQyIDIuNDc5LTEuNyAzLjU3LTIuMzQ4LjMxOC4wMzMuNjQyLjA1MS45NzIuMDUxIDQuMTUgMCA3LjUxNS0yLjY0NCA3LjUxNS01LjkwNiAwLTMuMjYyLTMuMzY1LTUuOTA3LTcuNTE1LTUuOTA3TTIxLjA0OCA0LjExM2MxLjUxNy0xLjMxMyAzLjQ2OC0xLjUwOCA0Ljg5My0uNTg1IDEuNzA3IDEuMTA2IDIuMTY4IDIuNzU0IDIuMTY4IDQuODkyIDAgMi40LTEuMTE1IDMuOTY4LTEuNjQyIDQuNDYtLjUyNi40OTMtMS42NzMgMS4yOTItMi44OCAxLjI5MkgyMS40MnYzLjc4NGgtMi45MTFWMy4yODJoMi4xMDZzLjI2LjU0OC40MzMuODN6bTEuOTUxIDEuMTUzYy0uNjk3IDAtMS4xNTMuMTc3LTEuNTMzLjQ3N3Y2LjMwNmgxLjEzOGMuNTU4IDAgMi41NDctLjUwNyAyLjU0Ny0zLjM4MyAwLS42NzctLjA5LTEuMzg1LS4yNzgtMS45LS4zNTctLjk3Ny0xLjI0Ny0xLjUtMS44NzQtMS41ek0zMy44MTcgMy4wNDZjMi4wODUgMCAyLjk0Mi43MTggMy40NDggMS4zNTQuNDgxLjYwNC44NjIgMS40OTcuODYyIDIuOHY2LjY4aC0yLjI2di0uOTU0cy0uNDQyLjQyLTEuMzc5LjgzMWMtLjk4LjQzLTIuNjUzLjg3Ny00LjA0MS0uMTg0LTEuMzk3LTEuMDY4LTEuMi0zLjQ3MS0uODUyLTQuMTU0LjQ4LS45MzggMS4zNjMtMS45NjggMy43MTYtMS45NjhoMi4wMjl2LS45MDhjMC0uNTU0LS41ODMtMS4xMDctMS43My0xLjEwNy0xLjI4IDAtMS44MzMuMTkyLTIuODE3LjYzNWwtLjk5Ni0xLjk0M3MxLjQ5Ni0xLjA4MiA0LjAyLTEuMDgyem0xLjQ3NyA2LjI1aC0xLjQxNWMtLjU5OSAwLTEuOTYxLjIxNi0xLjk2MSAxLjQ3NyAwIDEuMjgzIDEuMDkgMS4yNiAxLjQ0OCAxLjIzIDEuMDg5LS4wOTEgMS45MzgtLjc5NCAxLjkzOC0uNzk0bC0uMDEtMS45MTN6TTQ3LjA2MSAzLjA0NmwtMi4yOTEgOC4xMTEtMi41NC04LjExLTIuODQ5LjgyczMuNSA5LjM4MyAzLjYyNCA5Ljc4M2MuMTIzLjQtLjAwNS44NTgtLjI4IDEuMzIyLS4zNzEuNjMtMS44MjYgMi4wMy0xLjgyNiAyLjAzbDEuODc4IDEuNjYzcy44NTctLjY4OCAxLjc0NS0xLjc1NWMuNzQzLS44OTIgMS42MzYtMi44MyAxLjkzOC0zLjU3Ny44NTktMi4xMTkgMy40Mi05LjQ2NiAzLjQyLTkuNDY2bC0yLjgxOS0uODJ6Ii8+CiAgICA8L2c+Cjwvc3ZnPgo=" alt="카카오페이"></button></div>

                    <div class="css-18dvwsu ef0cmoa0">
                        <button type="button" id="creditcardBtn" class="css-1wlyg0y payBtnList" data-testid="creditcard-button" value="kcp">신용카드</button>
                        <button type="button" id="simplepayBtn" class="css-1wlyg0y payBtnList" data-testid="simplepay-button">간편 결제</button>
                        <button type="button" id="mobiliansBtn" class="css-1wlyg0y payBtnList" data-testid="mobilians">휴대폰</button>
                    </div></div>
                </div></div></div>
                <ul class="css-wx42bm e4nb37r0"><li>※ 카카오페이, 토스, 네이버페이, 페이코 결제 시, 결제하신 수단으로만 환불되는 점 양해부탁드립니다.</li><li>※ 고객님은 안전거래를 위해 현금 등으로 결제시 저희 쇼핑몰에서 가입한 토스 페이먼츠의 구매안전(에스크로) 서비스를 이용하실 수 있습니다.</li></ul><div class="css-12aowi2 edbbr7c2"><h3 class="css-1ddzp0m edbbr7c1">개인정보 수집/제공</h3></div><div class="css-37px7p eh5sxvr5"><div class="css-vtybye eh5sxvr2"><span class="css-0 eh5sxvr1">개인정보 수집∙이용 및 처리 동의</span><button class="css-1q6jmiw eh5sxvr0">보기</button></div><div class="css-vtybye eh5sxvr2"><span class="css-0 eh5sxvr1">전자지급 결제대행 서비스 이용약관 동의</span><button class="css-1q6jmiw eh5sxvr0">보기</button></div><strong class="css-87vide eh5sxvr4">위 내용을 확인 하였으며 결제에 동의합니다.</strong></div><p class="css-1tak4sl eh5sxvr3">주문완료 상태일 경우에만 주문 취소가 가능하며, 상품 미배송 시 결제하신 수단으로 환불됩니다.</p>
                <%-- 결제하기 버튼 --%>
                <div class="css-1azakc el0c5j40"><button class="css-1lha8en e4nu7ef3" type="button" width="240" height="56" radius="3" id="paymentBtn"><span class="css-nytqmg e4nu7ef1"><span id="payment" class="money">${checkout.tot_prod_price + checkout.dlvy_fee}</span>원 결제하기</span></button></div></div>

        <%-- 결제 금액 라인 --%>
        <div class="css-1rz7w0y epvroj91"><div class="css-9i9om4 epvroj90"><div class="css-6hge48 edbbr7c2"><h3 class="css-1ddzp0m edbbr7c1">결제 금액</h3></div>
            <div class="css-hdnk73 e12lli9y0"><div class="css-1hvttuk eahaaoi12"><div class="css-1rmc3ba eahaaoi11">주문금액</div><div><span class="css-2pg1ps eahaaoi10 money" id="tot_prod_price">${checkout.tot_prod_price}</span><span class="css-158icaa eahaaoi8">원</span></div></div>
                <div class="css-sk644d eahaaoi9"><div class="css-zjik7 eahaaoi0"><svg width="16" height="20" viewBox="0 0 16 20" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M1 5H0V10V11H1H6V10H1V5Z" fill="#ddd"></path></svg><div class="css-1rmc3ba eahaaoi11">상품금액</div></div><div><span class="css-2pg1ps eahaaoi10 money" id="origin_prod_price"><span class="css-rfpchb eahaaoi3"></span>${checkout.origin_prod_price}</span><span class="css-158icaa eahaaoi8">원</span></div></div>
                <div class="css-sk644d eahaaoi9"><div class="css-zjik7 eahaaoi0"><svg width="16" height="20" viewBox="0 0 16 20" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M1 5H0V10V11H1H6V10H1V5Z" fill="#ddd"></path></svg><div class="css-1rmc3ba eahaaoi11">상품할인금액</div></div><div><span class="css-2pg1ps eahaaoi10 money" id="prod_disc"><span class="css-rfpchb eahaaoi3"><c:if test="${checkout.tot_prod_price != checkout.origin_prod_price}">-</c:if></span><span class = "money">${checkout.origin_prod_price - checkout.tot_prod_price}</span></span><span class="css-158icaa eahaaoi8">원</span></div></div>
                <div class="css-1bj5qaf eahaaoi12"><div class="css-1rmc3ba eahaaoi11">배송비</div><div><span class="css-2pg1ps eahaaoi10 money" id="dlvy_fee"><span class="css-rfpchb eahaaoi3"><c:if test="${checkout.dlvy_fee == 3000}">+</c:if></span>${checkout.dlvy_fee}</span><span class="css-158icaa eahaaoi8">원</span></div></div>
                <div class="css-1bj5qaf eahaaoi12"><div class="css-1rmc3ba eahaaoi11">쿠폰할인</div><div class="css-0"><span class="css-2pg1ps eahaaoi10"><span class="css-rfpchb eahaaoi3" id="signCoupon"></span><span id="outputCouponUsed" class="money">0</span></span><span class="css-158icaa eahaaoi8">원</span></div></div>
                <div class="css-1hvttuk eahaaoi12"><div class="css-1rmc3ba eahaaoi11">적립금</div><div><span class="css-2pg1ps eahaaoi10"><span class="css-rfpchb eahaaoi3" id="signPoint"></span><span id="outputPointUsed" class="money">0</span></span><span class="css-158icaa eahaaoi8">원</span></div></div>
                <div class="css-1hgn7mh eahaaoi7"><div class="css-1rmc3ba eahaaoi11">최종결제금액</div><div><span class="css-2pg1ps eahaaoi10"><span class="css-rfpchb eahaaoi3"></span><span id = "tot_pay_price" class="money">${checkout.tot_prod_price + checkout.dlvy_fee}</span></span><span class="css-158icaa eahaaoi8">원</span></div></div>

                <div class="css-i93a3v eahaaoi5"><span class="css-5lws00 eahaaoi4">적립</span>구매 시<div class="css-1xkempz eahaaoi6">0원(5%)</div></div></div>
           </div></div></div>

    </div></div></div>
<script>
    let selectedItems = []
    <c:forEach var="item" items="${items}" varStatus="loop">
        selectedItems[${loop.index}] = {prod_id: ${item.prod_id}, opt_prod_id: '${item.opt_prod_id}', qty: ${item.qty}};
    // 서버에서 null값일 때 EL로 받아오면 빈문자열이 들어간다.-> option상품이 아닌건 opt_prod_id에 빈문자열 들어간다.
    </c:forEach>
    let tot_prod_name = '${checkout.tot_prod_name}';
    let tot_prod_price = ${checkout.tot_prod_price};
    let origin_prod_price = ${checkout.origin_prod_price};
    let dlvy_fee = ${checkout.dlvy_fee};
    let pay_way = 'kakao';

    //쿠폰 리스트
    let couponDtoList = [];
    <c:forEach var="coupon" items="${checkout.couponList}" varStatus="loop">
        couponDtoList[${loop.index}] = {cp_id: ${coupon.cp_id}, cp_name: '${coupon.cp_name}', cp_del_date: '${coupon.cp_del_date}', cash_rate:${coupon.cash_rate}, type:'${coupon.type}'};
    </c:forEach>

</script>
<script src="/resources/order/js/checkoutJS.js"></script>
</body>
</html>
