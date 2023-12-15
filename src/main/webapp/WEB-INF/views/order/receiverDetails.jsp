<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
    <title>receiverDetails</title>
    <link href="/resources/order/css/receiverDetailsStyle.css" rel="stylesheet" type="text/css" />
    <script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
<div id="__next">
    <div class="css-129cqpp e12ad82f3">
        <h2 class="css-17mphey e12ad82f2">배송 요청사항</h2>
        <label class="css-1ugk09k e1dcessg3">
            <input type="checkbox" id="sameBuyer" class="css-agvwxo e1dcessg2" checked="">
            <div class="css-79hxr7 e1dcessg1">
<%--                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M12 24C18.6274 24 24 18.6274 24 12C24 5.37258 18.6274 0 12 0C5.37258 0 0 5.37258 0 12C0 18.6274 5.37258 24 12 24Z" fill="#5f0080"></path><path d="M7 12.6667L10.3846 16L18 8.5" stroke="#fff" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path></svg>--%>
            </div>
            <span>주문자 정보와 동일</span></label>
    </div>

    <div class="css-lgy2fd e12ad82f1">
        <%--받으실 분--%>
        <div class="css-1ahk2qk e1uzxhvi6">
            <label for="receiver-name" class="css-c3g9of e1uzxhvi4">받으실 분</label>
            <span class="css-19lkxd2 e1uzxhvi5">*</span>

            <div height="44" class="css-t7kbxx e1uzxhvi3">
                <input data-testid="input-box" id="receiver-name" name="name" placeholder="이름을 입력해 주세요" type="text" required="" height="44" class="css-1quw3ub e1uzxhvi2" value="${delNotes.name}" oninput="nameValue(this)">
            </div>
        </div>

        <%--휴대폰--%>
        <div class="css-acvisw e1uzxhvi6">
            <label for="receiver-phone" class="css-c3g9of e1uzxhvi4">휴대폰</label>
            <span class="css-19lkxd2 e1uzxhvi5">*</span>

            <div height="44" class="css-t7kbxx e1uzxhvi3">
                <input data-testid="input-box" id="receiver-phone" name="phone" placeholder="숫자만 입력해 주세요" type="tel" required="" height="44" class="css-1quw3ub e1uzxhvi2" value="${delNotes.number}" oninput="phoneNumberValue(this)"></div>
        </div>
        <div>
            <%--받으실 장소--%>
            <div class="css-m07wgo egijpni5">받으실 장소<span class="css-19lkxd2 egijpni4">*</span></div>
            <div height="44" class="css-t7kbxx e1uzxhvi3"><input data-testid="input-box" id="receive-place" name="phone" placeholder="받으실 장소를 입력해 주세요. 예: 문앞" type="tel" required="" height="44" class="css-1quw3ub e1uzxhvi2" value="${delNotes.place}"></div>
        </div>

        <%--공동현관 출입방법--%>
        <div class="css-1qutn0 e10wthef1">공동현관 출입방법<span class="css-19lkxd2 e10wthef0">*</span></div>
        <label class="css-1j02l2 et8nqc33" for="front-door-password">
            <input data-testid="radio-PASSWORD" id="front-door-password" name="frontDoorMethod" type="radio" class="css-1pes2r6 et8nqc32" value="PASSWORD" checked="">
            <span aria-labelledby="front-door-password" class="css-mgd87h et8nqc31">공동현관 비밀번호</span>
        </label>
        <div class="css-1jayavq e1uzxhvi6 PASSWORD" style="display: none">
            <div class="css-176lya2 e1uzxhvi3">
                <input data-testid="input-box" id="front-door-password-field" name="frontDoorDetail" placeholder="출입에 필요한 버튼을 모두 입력해주세요." type="text" class="css-u52dqk e1uzxhvi2" value="">
            </div>
        </div>
            <div class="css-110o66b e1ifahml6 PASSWORD" style="display: none">
                <div class="css-1eoy87d e1ifahml5">
                    <div class="css-1ugf9is e1ifahml4">공동현관 비밀번호 입력 가이드</div>
                </div>
                <div class="css-d3v9zr e14m4ys50" style="opacity: 1; height: auto;">
                    <div class="css-1r32jtd e1ifahml3">
                        <p>입력 시 한글 혹은 특수문자(#,*)를 활용해주세요</p>
                        <div class="css-5zuqmz e1ifahml2"><span role="img" aria-label="key-bell-call" class="css-2oot58 e1ifahml1">호수 🔑 비밀번호 🔔 📢</span><svg xmlns="http://www.w3.org/2000/svg" width="15" height="17" viewBox="0 0 24 24" class="css-ozd7xs"><defs><path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path></defs><g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)"><use stroke="#b5b5b5" stroke-linecap="round" stroke-width="2" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use></g></g></g></g></g></svg><span class="css-x79f2o e1ifahml0">101 열쇠 1234 종 호출</span><button data-testid="copy-button" width="14" height="14" class="css-15svq80 e1vniuq50" type="button"><svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M5.3125 3.1875C5.3125 2.91136 5.53636 2.6875 5.8125 2.6875H10.8125C11.0886 2.6875 11.3125 2.91136 11.3125 3.1875V8.1875C11.3125 8.46364 11.0886 8.6875 10.8125 8.6875H9.625V5.87501C9.625 5.04658 8.95343 4.37501 8.125 4.37501H3.25C2.42157 4.37501 1.75 5.04658 1.75 5.87501V10.75C1.75 11.5784 2.42157 12.25 3.25 12.25H8.125C8.95343 12.25 9.625 11.5784 9.625 10.75V9.6875H10.8125C11.6409 9.6875 12.3125 9.01593 12.3125 8.1875V3.1875C12.3125 2.35907 11.6409 1.6875 10.8125 1.6875H5.8125C4.98407 1.6875 4.3125 2.35907 4.3125 3.1875V4.375H5.3125V3.1875ZM3.25 5.37501H8.125C8.40114 5.37501 8.625 5.59887 8.625 5.87501V10.75C8.625 11.0261 8.40114 11.25 8.125 11.25H3.25C2.97386 11.25 2.75 11.0261 2.75 10.75V5.87501C2.75 5.59887 2.97386 5.37501 3.25 5.37501Z" fill="#b5b5b5"></path></svg></button></div>
                        <div class="css-5zuqmz e1ifahml2"><span role="img" aria-label="security" class="css-2oot58 e1ifahml1">👮🏻‍♂️ # 호수 # 비밀번호 *</span><svg xmlns="http://www.w3.org/2000/svg" width="15" height="17" viewBox="0 0 24 24" class="css-ozd7xs"><defs><path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path></defs><g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)"><use stroke="#b5b5b5" stroke-linecap="round" stroke-width="2" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use></g></g></g></g></g></svg><span class="css-x79f2o e1ifahml0">경비 # 101 # 1234 *</span><button data-testid="copy-button" width="14" height="14" class="css-15svq80 e1vniuq50" type="button"><svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M5.3125 3.1875C5.3125 2.91136 5.53636 2.6875 5.8125 2.6875H10.8125C11.0886 2.6875 11.3125 2.91136 11.3125 3.1875V8.1875C11.3125 8.46364 11.0886 8.6875 10.8125 8.6875H9.625V5.87501C9.625 5.04658 8.95343 4.37501 8.125 4.37501H3.25C2.42157 4.37501 1.75 5.04658 1.75 5.87501V10.75C1.75 11.5784 2.42157 12.25 3.25 12.25H8.125C8.95343 12.25 9.625 11.5784 9.625 10.75V9.6875H10.8125C11.6409 9.6875 12.3125 9.01593 12.3125 8.1875V3.1875C12.3125 2.35907 11.6409 1.6875 10.8125 1.6875H5.8125C4.98407 1.6875 4.3125 2.35907 4.3125 3.1875V4.375H5.3125V3.1875ZM3.25 5.37501H8.125C8.40114 5.37501 8.625 5.59887 8.625 5.87501V10.75C8.625 11.0261 8.40114 11.25 8.125 11.25H3.25C2.97386 11.25 2.75 11.0261 2.75 10.75V5.87501C2.75 5.59887 2.97386 5.37501 3.25 5.37501Z" fill="#b5b5b5"></path></svg></button></div>
                        <div class="css-5zuqmz e1ifahml2"><span role="img" aria-label="bell" class="css-2oot58 e1ifahml1">🔔 비밀번호</span><svg xmlns="http://www.w3.org/2000/svg" width="15" height="17" viewBox="0 0 24 24" class="css-ozd7xs"><defs><path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path></defs><g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)"><use stroke="#b5b5b5" stroke-linecap="round" stroke-width="2" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use></g></g></g></g></g></svg><span class="css-x79f2o e1ifahml0">종 1234</span><button data-testid="copy-button" width="14" height="14" class="css-15svq80 e1vniuq50" type="button"><svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M5.3125 3.1875C5.3125 2.91136 5.53636 2.6875 5.8125 2.6875H10.8125C11.0886 2.6875 11.3125 2.91136 11.3125 3.1875V8.1875C11.3125 8.46364 11.0886 8.6875 10.8125 8.6875H9.625V5.87501C9.625 5.04658 8.95343 4.37501 8.125 4.37501H3.25C2.42157 4.37501 1.75 5.04658 1.75 5.87501V10.75C1.75 11.5784 2.42157 12.25 3.25 12.25H8.125C8.95343 12.25 9.625 11.5784 9.625 10.75V9.6875H10.8125C11.6409 9.6875 12.3125 9.01593 12.3125 8.1875V3.1875C12.3125 2.35907 11.6409 1.6875 10.8125 1.6875H5.8125C4.98407 1.6875 4.3125 2.35907 4.3125 3.1875V4.375H5.3125V3.1875ZM3.25 5.37501H8.125C8.40114 5.37501 8.625 5.59887 8.625 5.87501V10.75C8.625 11.0261 8.40114 11.25 8.125 11.25H3.25C2.97386 11.25 2.75 11.0261 2.75 10.75V5.87501C2.75 5.59887 2.97386 5.37501 3.25 5.37501Z" fill="#b5b5b5"></path></svg></button></div>
                        <div class="css-5zuqmz e1ifahml2"><span role="img" aria-label="basic" class="css-2oot58 e1ifahml1"># 비밀번호 *</span><svg xmlns="http://www.w3.org/2000/svg" width="15" height="17" viewBox="0 0 24 24" class="css-ozd7xs"><defs><path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path></defs><g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)"><use stroke="#b5b5b5" stroke-linecap="round" stroke-width="2" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use></g></g></g></g></g></svg><span class="css-x79f2o e1ifahml0"># 1234 *</span><button data-testid="copy-button" width="14" height="14" class="css-15svq80 e1vniuq50" type="button"><svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M5.3125 3.1875C5.3125 2.91136 5.53636 2.6875 5.8125 2.6875H10.8125C11.0886 2.6875 11.3125 2.91136 11.3125 3.1875V8.1875C11.3125 8.46364 11.0886 8.6875 10.8125 8.6875H9.625V5.87501C9.625 5.04658 8.95343 4.37501 8.125 4.37501H3.25C2.42157 4.37501 1.75 5.04658 1.75 5.87501V10.75C1.75 11.5784 2.42157 12.25 3.25 12.25H8.125C8.95343 12.25 9.625 11.5784 9.625 10.75V9.6875H10.8125C11.6409 9.6875 12.3125 9.01593 12.3125 8.1875V3.1875C12.3125 2.35907 11.6409 1.6875 10.8125 1.6875H5.8125C4.98407 1.6875 4.3125 2.35907 4.3125 3.1875V4.375H5.3125V3.1875ZM3.25 5.37501H8.125C8.40114 5.37501 8.625 5.59887 8.625 5.87501V10.75C8.625 11.0261 8.40114 11.25 8.125 11.25H3.25C2.97386 11.25 2.75 11.0261 2.75 10.75V5.87501C2.75 5.59887 2.97386 5.37501 3.25 5.37501Z" fill="#b5b5b5"></path></svg></button></div>
                    </div>
                </div>
            </div>
            <label class="css-1j02l2 et8nqc33" for="front-door-free"><input data-testid="radio-FREE" id="front-door-free" name="frontDoorMethod" type="radio" class="css-1pes2r6 et8nqc32" value="FREE">
                <span aria-labelledby="front-door-free" class="css-mgd87h et8nqc31">자유 출입 가능</span></label>

            <label class="css-1j02l2 et8nqc33" for="front-door-call-security-office"><input data-testid="radio-CALL_SECURITY_OFFICE" id="front-door-call-security-office" name="frontDoorMethod" type="radio" class="css-1pes2r6 et8nqc32" value="CALL_SECURITY_OFFICE">
                <span aria-labelledby="front-door-call-security-office" class="css-mgd87h et8nqc31">경비실 호출</span></label>

            <div class="css-cq3a5y e1tjt2bn7 CALL_SECURITY_OFFICE" style="display: none"><div class="css-1ftcmgd e1tjt2bn5"><textarea id="front-door-call-security-office-field" placeholder="경비실 호출 방법을 자세히 입력해주세요.
예 : 공동현관에서 경비실 모양 버튼" inputmode="text" aria-label="textarea-message" name="frontDoorDetail" class="css-5etceh e1tjt2bn1"></textarea><div class="placeholder css-1ofzfyp e1tjt2bn6"></div><span class="content-length-counter css-dbwxb9 e1tjt2bn0"></span></div></div>

            <label class="css-1j02l2 et8nqc33" for="front-door-etc"><input data-testid="radio-ETC" id="front-door-etc" name="frontDoorMethod" type="radio" class="css-1pes2r6 et8nqc32" value="ETC">
                <span aria-labelledby="front-door-etc" class="css-mgd87h et8nqc31">기타</span></label>

            <div class="css-cq3a5y e1tjt2bn7 ETC" style="display: none"><div class="css-1ftcmgd e1tjt2bn5"><textarea id="front-door-etc-field" placeholder="출입방법을 상세히 기재해주세요." inputmode="text" aria-label="textarea-message" name="frontDoorDetail" class="css-5etceh e1tjt2bn1"></textarea><div class="placeholder css-1ofzfyp e1tjt2bn6"></div><span class="content-length-counter css-dbwxb9 e1tjt2bn0"></span></div></div>

            <div class="css-sxs3zp e18jvfxd2">
                <strong class="css-1xi0wk2 e18jvfxd1"><span class="css-3pix7a e1x7y0qn0"></span>확인해주세요!</strong><ul><li class="css-bm9cb3 e18jvfxd0">비밀번호가 정확하지 않을 경우, 부득이하게 1층 공동현관 앞에 배송 될 수 있습니다.</li></ul>
            </div>

<%--            &lt;%&ndash;배송 완료 메세지 전송&ndash;%&gt;--%>
<%--            <div>--%>
<%--                <label class="css-7m7st1 e1x4v1zu1">배송 완료 메시지 전송<span class="css-19lkxd2 e1x4v1zu0">*</span></label>--%>
<%--                <div class="css-zjik7 e1x4v1zu2">--%>
<%--                    <label class="css-1dsepbn et8nqc33" for="immediately-after">--%>
<%--                        <input data-testid="radio-IMMEDIATELY" id="immediately-after" name="deliveryCompleteMessage" type="radio" class="css-1pes2r6 et8nqc32" value="IMMEDIATELY" checked=""><span class="css-5xw1m2 e2sqze61"><div class="css-1vic0rk e2sqze60"></div></span><span aria-labelledby="immediately-after" class="css-mgd87h et8nqc31">배송 직후</span></label>--%>
<%--                    <label class="css-1dsepbn et8nqc33" for="delivery-after">--%>
<%--                        <input data-testid="radio-AM7" id="delivery-after" name="deliveryCompleteMessage" type="radio" class="css-1pes2r6 et8nqc32" value="AM7"><span class="css-198i9ca e2sqze61"><div class="css-1dahn5m e2sqze60"></div></span><span aria-labelledby="delivery-after" class="css-mgd87h et8nqc31">오전 7시</span></label></div></div>--%>
            <div class="css-oticys e12ad82f0">
                <button id="closeBtn" class="css-1t93ala e4nu7ef3" type="button" height="56" radius="3"><span class="css-nytqmg e4nu7ef1">취소</span></button>
                <button id="submitBtn" class="css-1kuswgm e4nu7ef3" type="submit" height="56" radius="3"><span class="css-nytqmg e4nu7ef1">저장</span></button>
            </div></div>
</div>

<script>
    let name = '${delNotes.name}';
    let number = '${delNotes.number}';
    let entryway = '${delNotes.column_sts}';
    let entryway_detail = '${delNotes.entryway_detail}';
    let mem_name = '${member.mem_name}';
    let mem_phone = '${member.mem_phone}';

</script>

<script src="/resources/order/js/receiverDetailsJS.js"></script>
</body>
</html>
