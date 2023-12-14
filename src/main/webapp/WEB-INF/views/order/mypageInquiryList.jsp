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
                    $(function(){
                        $('.e4nu7ef3').click(function(e){
                            location.href = "/mypage/inquiry/form";
                        });

                        $('.e1cfowvj5').click(function(e){
                            let inquiry_id = $(this).data('inqid');
                            let inqThis = this;
                            $.ajax({
                                type:'POST',       // 요청 메서드
                                url: '/mypage/inquiry/listView',  // 요청 URI
                                headers : { "content-type": "application/json"}, // 요청 헤더
                                data : JSON.stringify({inquiry_id:inquiry_id}),
                                dataType: 'json',
                                success : function(result){
                                    console.log("inquiry view OK");
                                    let dto = result;
                                    console.log(dto.inquiry_id);
                                    show(inqThis, dto);
                                },
                                error   : function(){ alert("inquiry view error") } // 에러가 발생했을 때, 호출될 함수
                            }); // $.ajax()
                        });
                    });
                    
                    const show = (inqThis, inqDto) => {
                        if( $(inqThis).find('.e1cfowvj0').length == 0 ) {
                            let html ='';
                            html +='<li class="css-d3v9zr e1cfowvj0" style="opacity: 1; height: auto;">'
                            html +='<div class="css-br5cai e1vd1n2i0"><div class="css-193iudv e94cdlt1">'
                            html +='<span class="css-16ts9vc e94cdlt0">'+inqDto.type+'</span>'
                            html +='<span class="css-a5dfz6 ecg7plp0"></span><span class="css-16ts9vc e94cdlt0">'+inqDto.det_type+'</span></div>'
                            html +='<div class="css-zjik7 e82q4qc4"><span class="css-1ylw081 e1kayg9i0"></span>'
                            html +='<div class="css-145c1ga e82q4qc3"><span type="QUESTION" class="css-190bjnp e82q4qc2">'+inqDto.content+'</span><br>'
                            html +='<div class="css-1kl96ir ewad2cu1">'
                            if(inqDto.imgList){
                                for (elm of inqDto.imgList){
                                    html +='<img src="'+elm+'" class="css-qe5ixm ewad2cu0">'
                                }
                            } 
                            html +='</div></div></div>'
                            html +='<div class="css-1oe9o3r eula2qn2">'
                            if(!inqDto.rep_sts){
                                html +='<button type="button" class="css-qv4hdm eula2qn1">수정</button><div class="css-ord49b eula2qn0"></div>'
                                html +='<button type="button" class="css-qv4hdm eula2qn1">삭제</button></div></div></li>'                         
                            }
                            $(inqThis).find('.e1cfowvj3').after(html);
                        } else  {
                            $(inqThis).find('.e1cfowvj0').remove();
                        }
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
                                    <li><a class="active css-g4g0eu ecbxmj0">1:1 문의<svg
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
                            <style>
                            .css-e23nfx {
                                display: flex;
                                width: 100%;
                                padding: 20px 0px;
                                border-bottom: 1px solid rgb(51, 51, 51);
                                border-top: 2px solid rgb(51, 51, 51);
                            }
                            .css-1ym8aqm {
                                -webkit-box-flex: 1;
                                flex-grow: 1;
                                text-align: center;
                                line-height: 20px;
                                font-weight: 400;
                                color: rgb(51, 51, 51);
                            }
                            .css-16tcewl {
                                flex-basis: 100px;
                                text-align: center;
                                line-height: 20px;
                                font-weight: 400;
                                color: rgb(51, 51, 51);
                            }
                            .css-l0r8ps {
                                width: 100%;
                                height: 200px;
                                line-height: 200px;
                                font-size: 16px;
                                font-weight: 500;
                                color: rgb(51, 51, 51);
                                text-align: center;
                            }
                            .css-15jhycr {
                                position: relative;
                                min-height: 44px;
                                margin-top: 20px;
                                text-align: center;
                            }
                            .css-1ibxj4m {
                                display: block;
                                padding: 0px 10px;
                                text-align: center;
                                overflow: hidden;
                                width: 120px;
                                height: 44px;
                                border-radius: 3px;
                                color: rgb(255, 255, 255);
                                background-color: rgb(95, 0, 128);
                                border: 0px none;
                            }
                            .css-15jhycr > button {
                                position: absolute;
                                bottom: 0px;
                                right: 0px;
                            }
                            .css-nytqmg {
                                display: inline-block;
                                font-size: 16px;
                                font-weight: 500;
                            }
                            .css-1ibxj4m span {
                                font-size: 13px;
                            }
                            .css-1fttcpj {
                                display: -webkit-box;
                                display: -webkit-flex;
                                display: -ms-flexbox;
                                display: flex;
                                -webkit-flex-direction: column;
                                -ms-flex-direction: column;
                                flex-direction: column;
                            }
                            .css-e0dnmk {
                                cursor: pointer;
                            }
                            .css-nfcc9b {
                                display: flex;
                                flex-direction: row;
                            }
                            .css-wqw6mu {
                                color: rgb(76, 76, 76);
                                width: 620px;
                                padding: 20px;
                                font-size: 14px;
                                line-height: 22px;
                                text-align: left;
                                border-bottom: 1px solid rgb(244, 244, 244);
                            }
                            .css-4l2co {
                                overflow: hidden;
                                display: block;
                                width: 580px;
                                cursor: pointer;
                            }
                            .css-8e1vc1 {
                                padding: 20px 0px;
                                color: rgb(76, 76, 76);
                                width: 100px;
                                text-align: center;
                                font-size: 14px;
                                line-height: 22px;
                                border-bottom: 1px solid rgb(244, 244, 244);
                            }
                            .css-14kcwq8 {
                                color: rgb(153, 153, 153);
                            }
                            .css-d3v9zr {
                                overflow: hidden;
                            }
                            .css-br5cai {
                                padding: 20px 20px 30px;
                                background-color: rgb(250, 250, 250);
                            }
                            .css-193iudv {
                                display: flex;
                                -webkit-box-align: center;
                                align-items: center;
                                line-height: 20px;
                                letter-spacing: -0.075em;
                                margin-bottom: 20px;
                            }
                            .css-16ts9vc {
                                font-size: 14px;
                                font-family: "Noto Sans", serif;
                                color: rgb(153, 153, 153);
                            }
                            .css-a5dfz6 {
                                display: inline-block;
                                width: 16px;
                                height: 16px;
                                background-image: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGc+CiAgICAgICAgICAgIDxnPgogICAgICAgICAgICAgICAgPGc+CiAgICAgICAgICAgICAgICAgICAgPGc+CiAgICAgICAgICAgICAgICAgICAgICAgIDxwYXRoIGQ9Ik0wIDBIMTZWMTZIMHoiIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0zMzkgLTEzNTUpIHRyYW5zbGF0ZSgwIDY0KSB0cmFuc2xhdGUoMCAxMjcxKSB0cmFuc2xhdGUoMzM5IDIwKSIvPgogICAgICAgICAgICAgICAgICAgICAgICA8cGF0aCBzdHJva2U9IiM5OTkiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgZD0iTTQgNUwxMCA1IDEwIDExIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMzM5IC0xMzU1KSB0cmFuc2xhdGUoMCA2NCkgdHJhbnNsYXRlKDAgMTI3MSkgdHJhbnNsYXRlKDMzOSAyMCkgcm90YXRlKDQ1IDcgOCkiLz4KICAgICAgICAgICAgICAgICAgICA8L2c+CiAgICAgICAgICAgICAgICA8L2c+CiAgICAgICAgICAgIDwvZz4KICAgICAgICA8L2c+CiAgICA8L2c+Cjwvc3ZnPgo=");
                                margin: 0px 5px;
                            }
                            .css-16ts9vc {
                                font-size: 14px;
                                font-family: "Noto Sans", serif;
                                color: rgb(153, 153, 153);
                            }
                            .css-zjik7 {
                                display: -webkit-box;
                                display: -webkit-flex;
                                display: -ms-flexbox;
                                display: flex;
                            }
                            .css-1ylw081 {
                                background-image: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGc+CiAgICAgICAgICAgIDxnPgogICAgICAgICAgICAgICAgPGc+CiAgICAgICAgICAgICAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTQ0NSAtODc2KSB0cmFuc2xhdGUoNDIzIDI3NikgdHJhbnNsYXRlKDIgMzE2KSB0cmFuc2xhdGUoMjAgMjg0KSI+CiAgICAgICAgICAgICAgICAgICAgICAgIDxjaXJjbGUgY3g9IjEyIiBjeT0iMTIiIHI9IjEyIiBmaWxsPSIjQTg2NEQ4Ii8+CiAgICAgICAgICAgICAgICAgICAgICAgIDxwYXRoIGZpbGw9IiNGRkYiIGQ9Ik0xMS45NDYgNy41YzIuNDU2IDAgNC40NDYgMS45OSA0LjQ0NiA0LjQ0NiAwIC45MDctLjI3MSAxLjc1LS43MzcgMi40NTNsLjg0NS44NDMtMS4yNTggMS4yNTgtLjg0My0uODQ1Yy0uNzAzLjQ2Ni0xLjU0Ni43MzctMi40NTMuNzM3LTIuNDU1IDAtNC40NDYtMS45OS00LjQ0Ni00LjQ0NkM3LjUgOS40OTEgOS40OSA3LjUgMTEuOTQ2IDcuNXptMCAxLjc3OGMtMS40NzMgMC0yLjY2OCAxLjE5NS0yLjY2OCAyLjY2OHMxLjE5NSAyLjY2OCAyLjY2OCAyLjY2OGMuNDEyIDAgLjgwMi0uMDk0IDEuMTUtLjI2bC0uMzY5LS4zNyAxLjI1OC0xLjI1Ny4zNjkuMzY5Yy4xNjYtLjM0OC4yNi0uNzM4LjI2LTEuMTUgMC0xLjQ3My0xLjE5NS0yLjY2OC0yLjY2OC0yLjY2OHoiLz4KICAgICAgICAgICAgICAgICAgICA8L2c+CiAgICAgICAgICAgICAgICA8L2c+CiAgICAgICAgICAgIDwvZz4KICAgICAgICA8L2c+CiAgICA8L2c+Cjwvc3ZnPgo=");
                                background-position: center center;
                                background-repeat: no-repeat;
                                background-size: contain;
                                width: 24px;
                                height: 24px;
                            }
                            .css-145c1ga {
                                width: 744px;
                                margin-top: 3px;
                                margin-left: 12px;
                            }
                            .css-190bjnp {
                                font-size: 14px;
                                line-height: normal;
                                color: rgb(51, 51, 51);
                            }
                            .css-1kl96ir {
                                max-width: 744px;
                                margin-top: 20px;
                            }
                            .css-qe5ixm {
                                min-width: 338px;
                                max-width: 744px;
                                height: 450px;
                                margin: 10px 10px 0px 0px;
                                vertical-align: middle;
                                border-radius: 6px;
                            }
                            .css-1oe9o3r {
                                width: 100%;
                                display: flex;
                                -webkit-box-pack: end;
                                justify-content: flex-end;
                                -webkit-box-align: center;
                                align-items: center;
                                margin-top: 20px;
                            }
                            .css-qv4hdm {
                                padding: 6px 10px;
                                border: none;
                                font-size: 13px;
                                color: rgb(153, 153, 153);
                                background-color: transparent;
                            }
                            .css-ord49b {
                                width: 1px;
                                height: 12px;
                                background-color: rgb(238, 238, 238);
                            }
                            .css-qv4hdm {
                                padding: 6px 10px;
                                border: none;
                                font-size: 13px;
                                color: rgb(153, 153, 153);
                                background-color: transparent;
                            }
                            </style>
                            <!-- Inquiry -->
                            <div class="css-171zbec eug5r8l0">
                                <div class="css-j0lifa ed9qr673">
                                    <div class="css-fhxb3m ed9qr672"><h2 class="css-1268zpe ed9qr671">1:1 문의</h2></div></div>
                                    <div class="css-e23nfx e16adls21"><div class="css-1ym8aqm e16adls20">제목</div><div width="100" class="css-16tcewl e16adls20">작성일</div>
                                    <div width="100" class="css-16tcewl e16adls20">답변상태</div></div>
                                    <c:forEach var="inqDto" items="${inqList}">
                                        <ul class="css-1fttcpj e1cfowvj5" data-inqid="${inqDto.inquiry_id}"><li class="css-e0dnmk e1cfowvj3">
                                            <div class="css-nfcc9b e1cfowvj4"><div class="css-wqw6mu e1cfowvj2">
                                                <div class="css-14e35e e1vd1n2i2">${inqDto.title}</div></div>
                                                <div class="css-8e1vc1 e1cfowvj2"><span class="css-14kcwq8 e1vd1n2i1">
                                                    <fmt:formatDate value="${inqDto.rg_date }" pattern="yyyy-MM-dd" type="date"/></span></div>
                                                <div class="css-8e1vc1 e1cfowvj2"><span color="#999" class="css-14kcwq8 e1hz5ei00">
                                                    <c:if test="${inqDto.rep_sts == false}">답변대기</c:if>
                                                    <c:if test="${inqDto.rep_sts == true}">답변완료</c:if></span></div></div></li></ul>
                                    </c:forEach>
                                    
                                    <!-- <li class="css-d3v9zr e1cfowvj0" style="opacity: 1; height: auto;"><div class="css-br5cai e1vd1n2i0"><div class="css-193iudv e94cdlt1"><span class="css-16ts9vc e94cdlt0">서비스/오류/기타</span><span class="css-a5dfz6 ecg7plp0"></span><span class="css-16ts9vc e94cdlt0">기타(직접 입력)</span></div><div class="css-zjik7 e82q4qc4"><span class="css-1ylw081 e1kayg9i0"></span><div class="css-145c1ga e82q4qc3"><span type="QUESTION" class="css-190bjnp e82q4qc2">test</span><br><div class="css-1kl96ir ewad2cu1"><img src="https://lacms-board.kurly.com/board/inquiry/20231213/580d59dd-e89a-40b7-9be4-d3ffeeaf67e4.png" alt="" class="css-qe5ixm ewad2cu0"><img src="https://lacms-board.kurly.com/board/inquiry/20231213/f443389c-d2ec-444e-a9a7-ee6648e4e1ff.png" alt="" class="css-qe5ixm ewad2cu0"></div></div></div><div class="css-1oe9o3r eula2qn2"><button type="button" class="css-qv4hdm eula2qn1">수정</button><div class="css-ord49b eula2qn0"></div><button type="button" class="css-qv4hdm eula2qn1">삭제</button></div></div></li> -->
                                    <!-- <div class="css-l0r8ps e1cfowvj1">게시글이 없습니다.</div> -->
                                    <div class="css-15jhycr e3tf63e0"><button class="css-1ibxj4m e4nu7ef3" type="button" width="120" height="44" radius="3"><span class="css-nytqmg e4nu7ef1">문의하기</span></button></div></div>
                        </div>
                    </div>
                    <%@include file="../include/footer.jspf" %>
            </body>

            </html>