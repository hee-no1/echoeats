<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String addr = request.getParameter("addr"); %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>detail</title>
    <link rel="stylesheet" href="/resources/css/member/detailAddr_form.css">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>


<body>
<div id="__next" data-reactroot="">
    <div class="css-sv3mbe e1u1sq1y0">
        <div class="css-ixlb9s ecqulhg2">
            <div class="css-0 e11n32x24"><strong class="css-1702mcg e11n32x23"><span type="direct"
                                                                                     class="css-1kxzrwz e11n32x22">샛별배송</span> 지역입니다.<p class="css-1d1s4ku e11n32x21">매일 새벽,
                문 앞까지 신선함을 전해드려요.</p></strong></div>
            <div class="css-19u3hc5 e1n7pxx51">
                <p class="css-ks8pmw e1n7pxx50" id="addr"><%=addr%></p>
                <button class="css-1w63xsn e4nu7ef3" type="button" width="120" height="44" radius="3">
                    <span class="css-nytqmg e4nu7ef1">
                        <img src="https://res.kurly.com/pc/service/common/2006/ico_search.svg" alt="" class="css-1m3kac1 e4nu7ef0">재검색</span>
                </button>
            </div>
            <div class="css-1hxvx8x e1uzxhvi6">
                <div height="44" class="css-t7kbxx e1uzxhvi3"><input data-testid="input-box" id="addressDetail"
                                                                     name="addressDetail" placeholder="나머지 주소를 입력해 주세요" type="text" height="44"
                                                                     class="css-1quw3ub e1uzxhvi2" value=""></div>
            </div>
            <div class="css-a0w530 ecqulhg1"><label class="css-1wkyvs2 e1dcessg3"><input type="checkbox"
                                                                                         class="css-agvwxo e1dcessg2">
                <div class="css-79hxr7 e1dcessg1"><svg width="24" height="24" viewBox="0 0 24 24"
                                                       fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path
                            d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
                            stroke="#ddd" fill="#fff"></path>
                    <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5"
                          stroke-linecap="round" stroke-linejoin="round"></path>
                </svg></div><span>기본 배송지로 저장</span>
            </label></div><button class="css-10voksq e4nu7ef3" type="button" height="44" radius="3" id="save_btn"><span
                class="css-nytqmg e4nu7ef1">저장</span></button>
        </div>
    </div>
</div>
<%--<script id="__NEXT_DATA__"--%>
<%--        type="application/json">{"props":{"pageProps":{}},"page":"/address/shipping-address","query":{},"buildId":"Ap-OXxo_KV4QapbVKliCQ","assetPrefix":"https://res.kurly.com","nextExport":true,"autoExport":true,"isFallback":false,"scriptLoader":[]}</script>--%>
<%--<script id="clarity-script" data-nscript="afterInteractive">--%>
<%--    (function (c, l, a, r, i, t, y) {--%>
<%--        c[a] = c[a] || function () { (c[a].q = c[a].q || []).push(arguments) };--%>
<%--        t = l.createElement(r); t.async = 1; t.src = "https://www.clarity.ms/tag/" + i;--%>
<%--        y = l.getElementsByTagName(r)[0]; y.parentNode.insertBefore(t, y);--%>
<%--    })(window, document, "clarity", "script", "jbtozksiax");--%>
<%--</script><next-route-announcer>--%>
<%--    <p aria-live="assertive" id="__next-route-announcer__" role="alert"--%>
<%--       style="border: 0px; clip: rect(0px, 0px, 0px, 0px); height: 1px; margin: -1px; overflow: hidden; padding: 0px; position: absolute; width: 1px; white-space: nowrap; overflow-wrap: normal;">--%>
<%--        컬리 - 마켓컬리/뷰티컬리</p>--%>
<%--</next-route-announcer>--%>
<%--<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"--%>
<%--        id="daum_postcode_script"></script>--%>
<%--<script src="https://www.googletagmanager.com/gtag/js?id=G-BJ5N3PD9QG" id="google-tag-manager"--%>
<%--        data-nscript="afterInteractive"></script>--%>
<%--<script id="google-analytics" data-nscript="afterInteractive">--%>
<%--    window.dataLayer = window.dataLayer || [];--%>
<%--    function gtag() { window.dataLayer.push(arguments); }--%>
<%--    gtag('js', new Date());--%>
<%--    gtag('config', 'G-BJ5N3PD9QG', { 'user_id': '66c148dc-4fb3-4f41-b2b0-9eb371202ff1', 'debug_mode': true });--%>
<%--</script>--%>
<%--<script src="https://res.kurly.com/_next/static/chunks/48178-b0c6f77c0eda7dd3.js"></script>--%>
<%--<script src="https://res.kurly.com/_next/static/chunks/55260-14372e7254ab98fe.js"></script>--%>
<%--<script src="https://res.kurly.com/_next/static/chunks/80972-4251299749f1ab23.js"></script>--%>
<%--<script--%>
<%--        src="https://res.kurly.com/_next/static/chunks/pages/address/shipping-address/result-693bf2b8886548f5.js"></script>--%>
<script>
    $("#save_btn").click(function sendData() {
        let addr = document.getElementById("addr").innerText;
        let dtl_addr = document.getElementById("addressDetail").value;
        let data = {
            dtl_addr: dtl_addr,
            addr: addr
        };
        $.ajax({
            type: "POST",
            url:"detail",
            headers:{
                "content-type": "application/json"
            },
            data: JSON.stringify(data),
            dataType: "json",
            success: function(response) {
                console.log(response)
                alert("성공");
                window.close();
            },
            error: function(error){
                console.log(error);
            }
        })
    })

</script>
</body>

</html>
