<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
            <!DOCTYPE html>
            <html lang="ko">

            <head>
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <title>mypageOrder</title>
                <link rel="stylesheet" href="/resources/product/css/header-css.css">
                <link rel="stylesheet" href="/resources/product/css/footer.css">
                <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
                <script>
                    var formData = new FormData();

                    $(function () {

                        $('textarea[name=content]').on('focus input', function (e) {
                            e.preventDefault();
                            $('.placeholder').addClass('active');
                        });

                        $('textarea[name=content]').on('blur', function (e) {
                            e.preventDefault();
                            if ($('textarea[name=content]').val() === '') {
                                $('.placeholder').removeClass('active');
                            }
                        });

                        $('textarea[name=content]').change(function(){
                            //console.log($('textarea[name=content]').val());
                        });
                        
                        $('.fileSelect').click(function (e) {
                            e.preventDefault();
                            if ($(".fileElem").length) {
                                $(".fileElem").click();
                            }
                        });
                        
                        $('.ebvrvv11').click(function (e) {
                            e.preventDefault();

                            var form = document.getElementById('formElem');
                            var formElements = form.elements;

                            for (var i = 0; i < formElements.length; i++) {
                                var element = formElements[i];
                                
                                if ((element.tagName === 'INPUT' || element.tagName === 'SELECT' ||
                                element.tagName === 'TEXTAREA' ) && element.name) {
                                    formData.set(element.name, element.value);
                                }
                            }
                            // let entries = formData.entries();
                            // for (const pair of entries) {
                            //     console.log(pair[0]+ ', ' + pair[1]); 
                            // }

                            $.ajax({
                                url: '/mypage/inquiry/form/submit',
                                type: 'POST',
                                data: formData,
                                contentType: false,
                                processData: false,
                                success: function(response) {
                                    console.log('Files uploaded successfully:', response);
                                    location.href = "/mypage/inquiry/list";
                                },
                                error: function(error) {
                                    console.error('Error uploading files:', error);
                                }
                            });
                        });

                        $('.e9bfpi40').on('click', '.css-v96m37', function (e) {
                            e.preventDefault();
                            const file = $(this).closest('.e5xt3dr1').find('img').data('file');
                            formData.delete('imageFile[]', file);
                            $(this).closest('.e5xt3dr1').remove();
                        });

                        $(".inquiry_type").change(function () {
                            var selectedValue = $(this).val();
                            console.log(selectedValue);
                            $.ajax({
                                type:'POST',       // 요청 메서드
                                url: '/mypage/inquiry/getDetType', 
                                headers : { "content-type": "application/json"}, // 요청 헤더
                                data : JSON.stringify({ inquiryType: selectedValue }),
                                dataType: 'json',
                                success: function(response) {
                                    $(".inquiry_detType").empty();
                                    $(".inquiry_detType").append('<option value="INQUIRY_DET_TYPE0">상세유형을 선택해주세요</option>');
                                    for (var i = 0; i < response.length; i++) {
                                        $(".inquiry_detType").append('<option value="' + response[i].code_name + '">' + response[i].column_sts + '</option>');
                                    }
                                },
                                error: function(error) { console.error('Error inquiry_detType:', error); }
                            });
                        });
                    });

                    function handleFiles(files) {
                        let list = $('.e9bfpi40');
                        let last = $('.lastfile');
                        for (let i = 0; i < files.length; i++) {
                            
                            const div = $('<div>', {
                                class: 'css-o4030c e5xt3dr1',
                            });
                            const img = $('<img>', {
                                src: window.URL.createObjectURL(files[i]),
                                class: 'css-idj2s4 e5xt3dr4',
                            });
                            img.data('file', files[i]);
                            img.onload = function () {
                                window.URL.revokeObjectURL(this.src);
                            };
                            const button = $('<button>', {
                                type: 'button',
                                class: 'css-v96m37 e5xt3dr2',
                            });

                            formData.append('imageFile', files[i]);

                            div.append(img, button);
                            list.append(div);
                            list.append(last);
                        }
                    }

                    function updateCharacterCount() {
                            let charCount = $('textarea[name=content]').val().length;
                            $('.e1tjt2bn2').html(charCount + '자');
                    }

                </script>
                <style>
                    .css-luwwab {
                        display: flex;
                        width: 1050px;
                        padding: 50px 0px 80px;
                        margin: 0px auto;
                        flex-direction: row;
                        -webkit-box-pack: justify;
                        justify-content: space-between;
                    }

                    .css-833hqy {
                        width: 200px;
                    }

                    .css-1v4whg {
                        height: 75px;
                        padding: 5px 0px 35px 1px;
                        font-weight: 500;
                        font-size: 28px;
                        line-height: 35px;
                        color: rgb(51, 51, 51);
                        letter-spacing: -1px;
                    }

                    .css-1x9bshx {
                        border: 1px solid rgb(242, 242, 242);
                    }

                    .css-g4g0eu {
                        cursor: pointer;
                        border-bottom: 1px solid rgb(242, 242, 242);
                        padding: 15px 13px 15px 20px;
                        display: flex;
                        -webkit-box-pack: justify;
                        justify-content: space-between;
                        -webkit-box-align: center;
                        align-items: center;
                        line-height: 19px;
                        letter-spacing: -0.3px;
                        font-size: 14px;
                        color: rgb(102, 102, 102);
                    }

                    svg:not(:root) {
                        overflow: hidden;
                    }

                    .css-g4g0eu {
                        cursor: pointer;
                        border-bottom: 1px solid rgb(242, 242, 242);
                        padding: 15px 13px 15px 20px;
                        display: flex;
                        -webkit-box-pack: justify;
                        justify-content: space-between;
                        -webkit-box-align: center;
                        align-items: center;
                        line-height: 19px;
                        letter-spacing: -0.3px;
                        font-size: 14px;
                        color: rgb(102, 102, 102);
                    }

                    .css-g4g0eu.active,
                    .css-g4g0eu:hover {
                        background-color: rgb(250, 250, 250);
                        color: rgb(95, 0, 128);
                        font-weight: 500;
                    }

                    .css-196gwz9 {
                        width: 100%;
                        height: 60px;
                        padding: 0px 14px 0px 20px;
                        margin-top: 36px;
                        display: flex;
                        -webkit-box-pack: justify;
                        justify-content: space-between;
                        -webkit-box-align: center;
                        align-items: center;
                        background-color: rgb(250, 250, 250);
                        line-height: 20px;
                    }

                    .css-rmee6s {
                        display: flex;
                        flex-direction: column;
                        color: rgb(51, 51, 51);
                    }

                    .css-1sdidca {
                        font-size: 14px;
                        font-weight: 500;
                    }

                    .css-rnnx2x {
                        font-size: 12px;
                    }
                </style>
                <style>
                    button[disabled], input[disabled] {
                        cursor: default;
                    }

                    .css-171zbec {
                        width: 820px;
                    }

                    .css-j0lifa {
                        display: flex;
                        flex-direction: row;
                        width: 100%;
                        padding-bottom: 27px;
                        -webkit-box-pack: justify;
                        justify-content: space-between;
                    }

                    .css-fhxb3m {
                        display: flex;
                        flex-direction: row;
                        -webkit-box-align: center;
                        align-items: center;
                    }

                    .css-1268zpe {
                        font-weight: 500;
                        font-size: 24px;
                        color: rgb(51, 51, 51);
                        letter-spacing: -0.5px;
                        line-height: 48px;
                    }

                    .css-185m8ch {
                        width: 820px;
                        padding: 4px 20px;
                        border-top: 2px solid rgb(51, 51, 51);
                    }

                    .css-17bp14q {
                        display: flex;
                        padding: 12px 0px;
                        -webkit-box-align: start;
                        align-items: start;
                    }

                    .css-mm5tap {
                        width: 140px;
                        font-size: 14px;
                        line-height: 44px;
                    }

                    .css-hwfcu5 {
                        color: red;
                    }

                    .css-12l4j2c {
                        width: 640px;
                    }

                    .css-1s0wpjg {
                        width: 100%;
                        margin-top: 14px;
                        margin-bottom: 8px;
                    }
                    .css-hg1hqm {
                        padding-bottom: 7px;
                    }
                    .css-1t8m5sv {
                        color: rgb(51, 51, 51);
                        font-size: 14px;
                        line-height: 18px;
                        font-weight: bold;
                        letter-spacing: -0.025em;
                    }
                    .css-41sae7 {
                        color: rgb(153, 153, 153);
                        font-size: 12px;
                        margin-left: 9px;
                    }
                    .css-acf2e7 {
                        padding: 16px 0px;
                    }
                    .css-s5xdrg {
                        display: -webkit-box;
                        display: -webkit-flex;
                        display: -ms-flexbox;
                        display: flex;
                        -webkit-align-items: center;
                        -webkit-box-align: center;
                        -ms-flex-align: center;
                        align-items: center;
                    }
                    .css-i3divb {
                        overflow: hidden;
                        width: 48px;
                        height: 48px;
                        flex-shrink: 0;
                        border-radius: 4px;
                        /* background: url("https://res.kurly.com/_next/static/images/noimg-150x195-2c819ff85dca3193dfce31add0852dbb.svg") 50% 50% no-repeat rgb(245, 245, 245); */
                    }
                    .css-1xpcw2r {
                        display: block;
                        width: 100%;
                        height: 100%;
                        /* background-image: url("https://img-cf.kurly.com/shop/data/goods/1614169006174l0.jpg"); */
                        background-repeat: no-repeat;
                        background-size: cover;
                        background-position: 50% 50%;
                    }
                    .css-fizf2i {
                        width: 100%;
                        height: 44px;
                        border-radius: 3px;
                        border: 1px solid rgb(221, 221, 221);
                        background-color: white;
                        color: rgb(51, 51, 51);
                        font-size: 14px;
                    }
                    .css-1s0wpjg + button {
                        margin-bottom: 4px;
                    }
                    .css-sjc8qp {
                        -webkit-box-flex: 1;
                        flex-grow: 1;
                        margin-left: 16px;
                    }
                    .css-1k84x92 {
                        overflow: hidden;
                        max-width: 362px;
                        font-size: 14px;
                        line-height: 20px;
                        color: rgb(51, 51, 51);
                        text-overflow: ellipsis;
                        white-space: nowrap;
                    }
                    .css-12q1qh7 {
                        margin-top: 2px;
                        max-width: 362px;
                        font-size: 12px;
                        line-height: 18px;
                        color: rgb(153, 153, 153);
                    }
                    .css-132xckz {
                        flex-shrink: 0;
                        width: 68px;
                        font-size: 12px;
                        text-align: right;
                    }
                    .css-kb65nz {
                        flex-shrink: 0;
                        width: 100px;
                        font-size: 14px;
                        color: rgb(51, 51, 51);
                        text-align: right;
                    }
                    .css-1efi8gv {
                        font-weight: bold;
                    }
                    .css-ln2l5t {
                        display: block;
                        width: 30px;
                        height: 30px;
                        margin-left: 16px;
                        border: 0px;
                        background: url("https://res.kurly.com/kurly/ico/2021/delete-personal-inquiry_30_30.svg") 0px 0px no-repeat;
                    }
                    .css-ln2l5t span {
                        overflow: hidden;
                        position: absolute;
                        width: 1px;
                        height: 1px;
                        clip: rect(0px, 0px, 0px, 0px);
                    }
                    .css-zjik7 {
                        display: -webkit-box;
                        display: -webkit-flex;
                        display: -ms-flexbox;
                        display: flex;
                    }

                    .css-1a8mkrv {
                        display: flex;
                        -webkit-box-pack: justify;
                        justify-content: space-between;
                    }

                    .css-1a8mkrv>div {
                        width: 316px;
                    }

                    .css-1a8mkrv>div:first-of-type {
                        margin-right: 8px;
                    }

                    .css-tzsjye {
                        display: inline-flex;
                        flex-direction: column;
                        position: relative;
                        min-width: 0px;
                        padding: 0px;
                        margin: 0px;
                        border: 0px;
                        vertical-align: top;
                        width: 100%;
                    }

                    .css-eg1co4 {
                        font-family: Roboto, Helvetica, Arial, sans-serif;
                        font-weight: 400;
                        line-height: 1.4375em;
                        letter-spacing: 0.00938em;
                        color: rgba(0, 0, 0, 0.87);
                        box-sizing: border-box;
                        cursor: text;
                        display: inline-flex;
                        -webkit-box-align: center;
                        align-items: center;
                        position: relative;
                        font-size: 14px;
                        height: 44px;
                        border-color: rgb(221, 221, 221);
                        border-radius: 0px;
                    }

                    .jss1 {
                        font-family: Noto Sans;
                        -mui-paper-root: [object Object];
                    }

                    .css-qiwgdb {
                        appearance: none;
                        user-select: none;
                        border-radius: 4px;
                        cursor: pointer;
                        font: inherit;
                        letter-spacing: inherit;
                        color: currentcolor;
                        border: 0px;
                        box-sizing: content-box;
                        background: none;
                        height: 1.4375em;
                        margin: 0px;
                        -webkit-tap-highlight-color: transparent;
                        display: block;
                        min-width: 0px;
                        width: 100%;
                        animation-name: mui-auto-fill-cancel;
                        animation-duration: 10ms;
                        padding: 16.5px 14px;
                    }

                    .css-qiwgdb.MuiSelect-select {
                        height: auto;
                        min-height: 1.4375em;
                        text-overflow: ellipsis;
                        white-space: nowrap;
                        overflow: hidden;
                    }

                    .css-qiwgdb.css-qiwgdb.css-qiwgdb {
                        padding-right: 32px;
                    }

                    .css-1k3x8v3 {
                        bottom: 0px;
                        left: 0px;
                        position: absolute;
                        opacity: 0;
                        pointer-events: none;
                        width: 100%;
                        box-sizing: border-box;
                    }

                    .css-1636szt {
                        user-select: none;
                        width: 1em;
                        height: 1em;
                        display: inline-block;
                        fill: currentcolor;
                        flex-shrink: 0;
                        transition: fill 200ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;
                        font-size: 1.5rem;
                        position: absolute;
                        right: 7px;
                        top: calc(50% - 0.5em);
                        pointer-events: none;
                        color: rgba(0, 0, 0, 0.54);
                    }

                    svg:not(:root) {
                        overflow: hidden;
                    }

                    .jss1 .MuiSelect-iconOutlined {
                        right: 10px;
                    }

                    fieldset {
                        margin: 0;
                        padding: 0;
                    }

                    .css-igs3ac {
                        text-align: left;
                        position: absolute;
                        inset: -5px 0px 0px;
                        margin: 0px;
                        padding: 0px 8px;
                        pointer-events: none;
                        border-radius: inherit;
                        border-style: solid;
                        border-width: 1px;
                        overflow: hidden;
                        min-width: 0%;
                        border-color: rgba(0, 0, 0, 0.23);
                    }

                    .jss1 .MuiOutlinedInput-notchedOutline {
                        border-color: #ddd !important;
                    }

                    .css-nnbavb {
                        float: unset;
                        padding: 0px;
                        line-height: 11px;
                        transition: width 150ms cubic-bezier(0, 0, 0.2, 1) 0ms;
                    }

                    .css-1a8mkrv>div {
                        width: 316px;
                    }

                    .css-1a8mkrv>div:first-of-type {
                        margin-right: 8px;
                    }

                    .css-tzsjye {
                        display: inline-flex;
                        flex-direction: column;
                        position: relative;
                        min-width: 0px;
                        padding: 0px;
                        margin: 0px;
                        border: 0px;
                        vertical-align: top;
                        width: 100%;
                    }

                    .css-eg1co4.Mui-disabled {
                        color: rgba(0, 0, 0, 0.38);
                        cursor: default;
                    }

                    .css-eg1co4.Mui-disabled {
                        background-color: rgb(250, 250, 250);
                    }

                    .css-qiwgdb.Mui-disabled {
                        cursor: default;
                    }

                    .css-qiwgdb.Mui-disabled {
                        opacity: 1;
                        -webkit-text-fill-color: rgba(0, 0, 0, 0.38);
                    }

                    .css-qiwgdb.css-qiwgdb.css-qiwgdb {
                        padding-right: 32px;
                    }

                    .css-1636szt.Mui-disabled {
                        color: rgba(0, 0, 0, 0.26);
                    }

                    .css-eg1co4.Mui-disabled .MuiOutlinedInput-notchedOutline {
                        border-color: rgba(0, 0, 0, 0.26);
                    }

                    .css-1waqr6j {
                        padding: 0px;
                    }

                    .css-t7kbxx {
                        position: relative;
                        height: 44px;
                    }

                    .css-1quw3ub {
                        width: 100%;
                        height: 44px;
                        padding: 0px 11px 1px 15px;
                        border-radius: 4px;
                        border: 1px solid rgb(221, 221, 221);
                        font-weight: 400;
                        font-size: 16px;
                        line-height: 42px;
                        color: rgb(51, 51, 51);
                        outline: none;
                        box-sizing: border-box;
                    }

                    .css-1waqr6j input {
                        font-size: 14px;
                    }

                    .css-rm6te4>div {
                        padding-bottom: 0px;
                    }

                    .css-rm6te4>div>div:first-of-type {
                        padding-top: 5px;
                    }

                    .css-1gua357 {
                        position: relative;
                        display: flex;
                        flex-direction: column;
                        height: 536px;
                        background-color: rgb(255, 255, 255);
                        border: 1px solid rgb(221, 221, 221);
                        border-radius: 4px;
                    }

                    .css-5etceh {
                        display: block;
                        width: 100%;
                        height: 100%;
                        padding: 15px 16px;
                        font-size: 16px;
                        line-height: 21px;
                        word-break: break-all;
                        z-index: 1;
                        background: none;
                        border-radius: 4px;
                        color: rgb(51, 51, 51);
                        outline: none;
                        resize: none;
                        border: none;
                    }

                    .css-rm6te4 textarea {
                        font-size: 14px;
                        font-weight: 400;
                        font-family: "Noto Sans", sans-serif;
                    }

                    .css-1ofzfyp {
                        position: absolute;
                        top: 0px;
                        left: 0px;
                        width: 100%;
                        height: 100%;
                        padding: 15px 15px 32px;
                    }

                    .css-168e7y9 {
                        font-size: 14px;
                        line-height: 20px;
                        color: rgb(153, 153, 153);
                    }

                    .css-c2iqrm {
                        display: block;
                        margin: 0px 0px 4px;
                        font-weight: 500;
                    }

                    .css-nlv18q {
                        color: rgb(240, 63, 64);
                        padding: 4px 0px 0px 15px;
                    }

                    .css-nlv18q::before {
                        display: inline-block;
                        width: 15px;
                        margin: 0px 0px 0px -15px;
                        content: "※";
                    }

                    .css-1sz9zst {
                        display: block;
                        margin: 16px 0px 4px;
                        font-weight: 500;
                    }

                    .css-1vtbu89 {
                        padding: 4px 0px 0px 10px;
                    }

                    .css-1vtbu89::before {
                        display: inline-block;
                        width: 10px;
                        margin: 0px 0px 0px -10px;
                        content: "·";
                    }

                    .css-dbwxb9 {
                        padding: 0px 16px 16px;
                        font-size: 12px;
                        text-align: right;
                    }

                    .css-14kcwq8 {
                        color: rgb(153, 153, 153);
                    }

                    .css-g8ewo8 {
                        display: flex;
                        flex-direction: column;
                        padding: 5px 0px;
                    }

                    .css-mlazth>div {
                        padding: 3px 0px 0px;
                    }

                    .css-175wokr {
                        display: flex;
                        flex-flow: wrap;
                        gap: 9px;
                        font-size: 20px !important;
                    }

                    .css-175wokr>div {
                        height: 72px;
                        width: 72px;
                    }

                    .css-o4030c {
                        overflow: hidden;
                        display: flex;
                        position: relative;
                        border-radius: 6px;
                        aspect-ratio: 1 / 1;
                        height: 72px;
                        width: 72px;
                    }
                    .css-idj2s4 {
                        object-fit: cover;
                        width: 100%;
                        height: 100%;
                    }
                    .css-v96m37 {
                        position: absolute;
                        top: 0.375rem;
                        right: 0.375rem;
                        width: 1.125rem;
                        height: 1.125rem;
                        background: url("data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTgiIGhlaWdodD0iMTgiIHZpZXdCb3g9IjAgMCAxOCAxOCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMDAwIiBvcGFjaXR5PSIuNSIgY3g9IjkiIGN5PSI5IiByPSI5Ii8+CiAgICAgICAgPGcgc3Ryb2tlPSIjRkZGIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij4KICAgICAgICAgICAgPHBhdGggZD0iTTEyLjI1OSAxMi4xMzUgNS43NjggNS42NDRNNS43NjIgMTIuMTMzbDYuNDk3LTYuNDk3Ii8+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K") 0px 0px no-repeat;
                    }

                    .css-j9ybaa {
                        width: 100%;
                        height: 100%;
                        border: 1px solid rgb(221, 221, 221);
                        border-radius: 6px;
                    }

                    .css-113ip0v {
                        display: inline-block;
                        width: 1.875rem;
                        height: 1.875rem;
                        background-image: url("data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzAiIGhlaWdodD0iMzAiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CiAgICA8ZyBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPgogICAgICAgIDxwYXRoIGQ9Ik0wIDBoMzB2MzBIMHoiLz4KICAgICAgICA8ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSg0Ljc3OSA2LjExMSkiIHN0cm9rZT0iIzMzMyIgc3Ryb2tlLXdpZHRoPSIxLjMiPgogICAgICAgICAgICA8cGF0aCBkPSJNMTEuNzkyIDBjLjM5OSAwIC43MTcuMDU2Ljk1NS4xNy4xNzkuMDg0LjM0Ni4xOTkuNTAzLjM0NGwuMTUzLjE1NS42MzEuNzAzYy4xMjIuMTMuMjM0LjIzMy4zMzcuMzFhLjk1Ljk1IDAgMCAwIC4zNC4xNmMuMTI1LjAzMS4yOTIuMDQ3LjUwMy4wNDdsMi45MDYtLjAwM2MxLjI4NCAwIDIuMzI0IDEuMDYyIDIuMzI0IDIuMzd2MTEuMTUxYzAgMS4zMS0xLjA0IDIuMzctMi4zMjQgMi4zN0gyLjMyNGMtMS4yODMgMC0yLjMyNC0xLjA2LTIuMzI0LTIuMzdWNC4yNTdjMC0xLjMxIDEuMDQtMi4zNyAyLjMyNC0yLjM3aDIuOTgzYy4yNDUtLjAwOS40MzItLjA0NS41NTktLjEwOC4xMS0uMDU1LjIzLS4xNDUuMzYtLjI3bC4xMzQtLjEzNy42MzEtLjcwM2MuMi0uMjIuNDE4LS4zODcuNjU3LS41LjE5LS4wOS40MzItLjE0NC43MjUtLjE2Mkw4LjYwMyAwaDMuMTg5eiIvPgogICAgICAgICAgICA8Y2lyY2xlIGN4PSIxMC4xNDIiIGN5PSI5LjUyOSIgcj0iMy41NTYiLz4KICAgICAgICA8L2c+CiAgICA8L2c+Cjwvc3ZnPgo=");
                        background-size: cover;
                        background-position: center center;
                        background-repeat: no-repeat;
                    }

                    .css-114fr9p {
                        width: 160px;
                        height: 56px;
                        padding: 0px 10px;
                        text-align: center;
                        letter-spacing: 0px;
                        font-size: 16px;
                        line-height: 20px;
                        color: white;
                        cursor: pointer;
                        background-color: rgb(95, 0, 128);
                        font-family: "Noto Sans", sans-serif;
                        font-weight: 500;
                        border-radius: 3px !important;
                    }

                    .css-175wokr span {
                        font-size: 20px;
                    }

                    .css-eivff4 {
                        display: none;
                    }

                    .css-sqqcql {
                        margin: 11px 0px 7px;
                        line-height: 16px;
                        font-size: 13px;
                        color: rgb(153, 153, 153);
                    }

                    .css-7n55a5 {
                        display: flex;
                        flex-direction: row;
                        margin-top: 7px;
                    }

                    .css-1xbds45::before {
                        content: "•";
                        margin-right: 3px;
                    }

                    .css-1spu0j4 {
                        display: flex;
                        -webkit-box-pack: center;
                        justify-content: center;
                        -webkit-box-align: center;
                        align-items: center;
                        padding-top: 40px;
                    }

                    .css-13kn1it {
                        width: 160px;
                        height: 56px;
                        padding: 0px 10px;
                        text-align: center;
                        letter-spacing: 0px;
                        font-size: 16px;
                        line-height: 20px;
                        color: white;
                        cursor: pointer;
                        background-color: rgb(221, 221, 221);
                        font-family: "Noto Sans", sans-serif;
                        font-weight: 500;
                        border-radius: 3px !important;
                    }

                    .css-2b29tl {
                        position: relative;
                        min-width: 1050px;
                    }
                    .placeholder {
                        display: block;
                    }   

                    .placeholder.active {
                        display: none;
                    }
                </style>
            </head>

            <body class="sb-nav-fixed">
                <%@include file="../include/header.jspf" %>
                    <div class="css-2b29tl eug5r8l2">
                        <div class="css-luwwab eug5r8l1">
                            <div class="css-833hqy ecbxmj3">
                                <div class="css-1v4whg ecbxmj2">고객센터</div>
                                <ul class="css-1x9bshx ecbxmj1">
                                    <li><a class=" css-g4g0eu ecbxmj0">공지사항<svg xmlns="http://www.w3.org/2000/svg"
                                                width="19" height="19" viewBox="0 0 24 24">
                                                <defs>
                                                    <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657">
                                                    </path>
                                                </defs>
                                                <g fill="none" fill-rule="evenodd">
                                                    <g>
                                                        <g>
                                                            <g>
                                                                <g
                                                                    transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                                                                    <use stroke="#999" stroke-linecap="round"
                                                                        stroke-width="1.8" stroke-linejoin="round"
                                                                        transform="rotate(45 5.657 5.657)"
                                                                        xlink:href="#gfk9q0rhta"></use>
                                                                </g>
                                                            </g>
                                                        </g>
                                                    </g>
                                                </g>
                                            </svg></a></li>
                                    <li><a class=" css-g4g0eu ecbxmj0">자주하는 질문<svg xmlns="http://www.w3.org/2000/svg"
                                                width="19" height="19" viewBox="0 0 24 24">
                                                <defs>
                                                    <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657">
                                                    </path>
                                                </defs>
                                                <g fill="none" fill-rule="evenodd">
                                                    <g>
                                                        <g>
                                                            <g>
                                                                <g
                                                                    transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                                                                    <use stroke="#999" stroke-linecap="round"
                                                                        stroke-width="1.8" stroke-linejoin="round"
                                                                        transform="rotate(45 5.657 5.657)"
                                                                        xlink:href="#gfk9q0rhta"></use>
                                                                </g>
                                                            </g>
                                                        </g>
                                                    </g>
                                                </g>
                                            </svg></a></li>
                                    <li><a class="active css-g4g0eu ecbxmj0" href="<c:url value='/mypage/inquiry/list'/>">1:1 문의<svg
                                                xmlns="http://www.w3.org/2000/svg" width="19" height="19"
                                                viewBox="0 0 24 24">
                                                <defs>
                                                    <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657">
                                                    </path>
                                                </defs>
                                                <g fill="none" fill-rule="evenodd">
                                                    <g>
                                                        <g>
                                                            <g>
                                                                <g
                                                                    transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                                                                    <use stroke="#5f0080" stroke-linecap="round"
                                                                        stroke-width="1.8" stroke-linejoin="round"
                                                                        transform="rotate(45 5.657 5.657)"
                                                                        xlink:href="#gfk9q0rhta"></use>
                                                                </g>
                                                            </g>
                                                        </g>
                                                    </g>
                                                </g>
                                            </svg></a></li>
                                    <li><a class=" css-g4g0eu ecbxmj0">대량주문 문의<svg xmlns="http://www.w3.org/2000/svg"
                                                width="19" height="19" viewBox="0 0 24 24">
                                                <defs>
                                                    <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657">
                                                    </path>
                                                </defs>
                                                <g fill="none" fill-rule="evenodd">
                                                    <g>
                                                        <g>
                                                            <g>
                                                                <g
                                                                    transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                                                                    <use stroke="#999" stroke-linecap="round"
                                                                        stroke-width="1.8" stroke-linejoin="round"
                                                                        transform="rotate(45 5.657 5.657)"
                                                                        xlink:href="#gfk9q0rhta"></use>
                                                                </g>
                                                            </g>
                                                        </g>
                                                    </g>
                                                </g>
                                            </svg></a></li>
                                </ul><a href="/mypage/inquiry/list" class="css-196gwz9 e19l01ug3">
                                    <div class="css-rmee6s e19l01ug2"><span class="css-1sdidca e19l01ug1">도움이 필요하신가요
                                            ?</span><span class="css-rnnx2x e19l01ug0">1:1 문의하기</span></div><svg
                                        xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
                                        <defs>
                                            <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
                                        </defs>
                                        <g fill="none" fill-rule="evenodd">
                                            <g>
                                                <g>
                                                    <g>
                                                        <g
                                                            transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                                                            <use stroke="#333" stroke-linecap="round" stroke-width="1.8"
                                                                stroke-linejoin="round"
                                                                transform="rotate(45 5.657 5.657)"
                                                                xlink:href="#gfk9q0rhta"></use>
                                                        </g>
                                                    </g>
                                                </g>
                                            </g>
                                        </g>
                                    </svg>
                                </a>
                            </div>
                            <!-- Inquiry -->
                            <div class="css-171zbec eug5r8l0">
                                <div class="css-j0lifa ed9qr673">
                                    <div class="css-fhxb3m ed9qr672">
                                        <h2 class="css-1268zpe ed9qr671">1:1 문의</h2>
                                    </div>
                                </div>
                                <div class="css-185m8ch e1153ede0">
                                    <form id="formElem">
                                        <div class="css-17bp14q e1vbjq4w3">
                                            <div class="css-mm5tap e1vbjq4w2"><label data-testid="label-text">유형<span
                                                        data-testid="label-required-text"
                                                        class="css-hwfcu5 e1vbjq4w0">*</span></label></div>
                                            <div class="css-12l4j2c e1vbjq4w1">
                                                <div class="css-zjik7 epfrwk70">
                                                    <div class="css-1a8mkrv e1u0xj870">
                                                        <div>
                                                            <style>
                                                                .inquiry_type, .inquiry_detType {
                                                                    font-weight: 400;
                                                                    border-radius: 4px;
                                                                    border: 1px solid rgb(221, 221, 221);
                                                                    width: 315px;
                                                                    height: 44px;
                                                                    padding-left: 15px;
                                                                    appearance: none;
                                                                    background: #fff url(//img.echosting.cafe24.com/ec/v2/ico_select.png) no-repeat right 12px center;
                                                                }
                                                            </style>
                                                            <select name="type" class="inquiry_type">
                                                                <option value="INQUIRY_TYPE0">문의유형을 선택해주세요</option>
                                                                <c:forEach var="type" items="${typeList}">
                                                                    <option value="${type.code_name}">${type.column_sts}</option>
                                                                </c:forEach>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="css-1a8mkrv e1u0xj870">
                                                        <div>
                                                            <select name="det_type" class="inquiry_detType">
                                                                <option value="INQUIRY_DET_TYPE0">상세유형을 선택해주세요</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div> <!-- 유형-->
                                        <c:if test="${not empty ordDetDto}">
                                        <div class="css-17bp14q e1vbjq4w3">
                                            <div class="css-mm5tap e1vbjq4w2">
                                                <label data-testid="label-text">상품<span data-testid="label-required-text" class="css-hwfcu5 e1vbjq4w0">*</span></label></div>
                                                <div class="css-12l4j2c e1vbjq4w1"><div class="css-1s0wpjg e1fxpk0q6">
                                                    <div class="css-0 e1fxpk0q5"><div class="css-hg1hqm e1fxpk0q4">
                                                        <span class="css-1t8m5sv e1fxpk0q3">2023.11.18</span>
                                                        <span class="css-41sae7 e1fxpk0q2">주문번호${ordDetDto.ord_id}</span></div>
                                                        <div class="css-0 e1fxpk0q1">
                                                                <div class="css-acf2e7 e1c5gg6v10">
                                                                <div class="css-s5xdrg e1c5gg6v9"><div class="css-i3divb e1c5gg6v8">
                                                                <img src="${ordDetDto.img_url}" class="css-1xpcw2r e1c5gg6v7"></img></div>
                                                                <div class="css-sjc8qp e1c5gg6v6"><p class="css-1k84x92 e1c5gg6v5">${ordDetDto.prod_name}</p>
                                                                <p class="css-12q1qh7 e1c5gg6v4">${ordDetDto.prod_name}</p></div><p class="css-132xckz e1c5gg6v3">${ordDetDto.prod_qty}</p>
                                                                <p class="css-kb65nz e1c5gg6v2"><span class="css-1efi8gv e1c5gg6v1">${ordDetDto.prod_tot_price}</span>원</p><button type="button" class="css-ln2l5t e1c5gg6v0"><span>삭제</span></button></div></div>
                                                            </div></div></div>
                                                                <!-- <button type="button" class="css-fizf2i ezcpx2u6">주문상품 선택</button> -->
                                                            </div></div>
                                        </c:if>
                                        <div class="css-17bp14q e1vbjq4w3">
                                            <div class="css-mm5tap e1vbjq4w2"><label for="inquiry-subject"
                                                    data-testid="label-text">제목<span data-testid="label-required-text"
                                                        class="css-hwfcu5 e1vbjq4w0">*</span></label></div>
                                            <div class="css-12l4j2c e1vbjq4w1">
                                                <div class="css-1waqr6j e1uzxhvi6">
                                                    <div height="44" class="css-t7kbxx e1uzxhvi3"><input
                                                            data-testid="input-box" id="inquiry-subject" name="title"
                                                            placeholder="제목을 입력해주세요" type="text" height="44"
                                                            class="css-1quw3ub e1uzxhvi2" value=""></div>
                                                </div>
                                            </div>
                                        </div> <!-- 제목 -->
                                        <div class="css-rm6te4 e1fgvk594">
                                            <div class="css-17bp14q e1vbjq4w3">
                                                <div class="css-mm5tap e1vbjq4w2"><label for="inquiry-contents"
                                                        data-testid="label-text">내용<span
                                                            data-testid="label-required-text"
                                                            class="css-hwfcu5 e1vbjq4w0">*</span></label></div>
                                                <div class="css-12l4j2c e1vbjq4w1">
                                                    <div class="css-0 e1tjt2bn7">
                                                        <div class="css-1gua357 e1tjt2bn5"><textarea
                                                                id="inquiry-contents" inputmode="text"
                                                                aria-label="textarea-message" name="content"
                                                                class="css-5etceh e1tjt2bn1" oninput="updateCharacterCount()"></textarea>
                                                            <div class="placeholder css-1ofzfyp e1tjt2bn6">
                                                                <div class="css-168e7y9 e1fgvk593"><strong
                                                                        class="css-c2iqrm e1fgvk592">1:1 문의 작성 전
                                                                        확인해주세요!</strong>
                                                                    <p class="css-nlv18q e1fgvk590">전화번호, 이메일, 주소, 계좌번호
                                                                        등의 상세 개인정보가 문의 내용에 저장되지 않도록 주의해 주시기 바랍니다.</p>
                                                                    <strong class="css-1sz9zst e1fgvk592">주문취소</strong>
                                                                    <p class="css-1vtbu89 e1fgvk591">[주문완료] 상태일 경우에만 주문
                                                                        취소 가능합니다. (배송준비중 이후 취소불가)</p>
                                                                    <p class="css-1vtbu89 e1fgvk591">[마이에코 &gt; 주문내역
                                                                        상세페이지]에서 직접 취소하실 수 있습니다.</p>
                                                                    <p class="css-1vtbu89 e1fgvk591">주문상품의 부분취소는 불가능합니다.
                                                                        전체 주문 취소 후 다시 구매해주세요.</p><strong
                                                                        class="css-1sz9zst e1fgvk592">배송</strong>
                                                                    <p class="css-1vtbu89 e1fgvk591">배송일 및 배송시간 지정은
                                                                        불가능합니다. (예약배송 포함)</p>
                                                                    <p class="css-1vtbu89 e1fgvk591">주문 이후 주소지, 결제수단 변경
                                                                        등 정보수정 불가능합니다.</p><strong
                                                                        class="css-1sz9zst e1fgvk592">교환 / 반품</strong>
                                                                    <p class="css-1vtbu89 e1fgvk591">[신선/냉장/냉동] 식품은 재판매가
                                                                        불가한 상품으로 주문 착오로 인한 교환/환불은 어렵습니다.</p>
                                                                    <p class="css-1vtbu89 e1fgvk591">단순 변심으로 인한 반품은 고객에게
                                                                        반품비 청구됩니다.</p>
                                                                </div>
                                                            </div><span
                                                                class="content-length-counter css-dbwxb9 e1tjt2bn0"><span><span
                                                                        class="css-14kcwq8 e1tjt2bn2">0자 </span><span
                                                                        class="css-14kcwq8 e1tjt2bn3">/
                                                                        5000자</span></span></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="css-17bp14q e1vbjq4w3">
                                            <div class="css-mm5tap e1vbjq4w2"><label data-testid="label-text"></label>
                                            </div>
                                            <div class="css-12l4j2c e1vbjq4w1">
                                                <div class="css-mlazth edd8l6o3">
                                                    <div class="css-g8ewo8 e9bfpi41">
                                                        <div class="css-175wokr e9bfpi40">
                                                            <div class="css-0 lastfile"><label for="photo-picker"
                                                                    class="css-0 e1l8vpkx2"><button type="button"
                                                                        class="css-j9ybaa e1l8vpkx0 fileSelect"><span
                                                                            class="css-113ip0v e1tcjz8t0"></span></button><input
                                                                        multiple="" type="file"
                                                                        accept="image/jpg, image/jpeg, image/png, image/bmp"
                                                                        class="css-eivff4 e1l8vpkx1 fileElem" onchange="handleFiles(this.files)"></label></div>
                                                        </div>
                                                        <div class="css-sqqcql edd8l6o2">
                                                            <div class="css-7n55a5 edd8l6o1"><span
                                                                    class="css-1xbds45 edd8l6o0"></span>30MB 이하의 이미지만
                                                                업로드 가능합니다.</div>
                                                            <div class="css-7n55a5 edd8l6o1"><span
                                                                    class="css-1xbds45 edd8l6o0"></span>상품과 무관한 내용이거나 음란
                                                                및 불법적인 내용은 통보없이 삭제 될 수 있습니다.</div>
                                                            <div class="css-7n55a5 edd8l6o1"><span
                                                                    class="css-1xbds45 edd8l6o0"></span>사진은 최대 8장까지
                                                                등록가능합니다.</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="css-1spu0j4 ebvrvv11"><button type="button"
                                                class="css-114fr9p ebvrvv10">등록</button></div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%@include file="../include/footer.jspf" %>
            </body>

            </html>