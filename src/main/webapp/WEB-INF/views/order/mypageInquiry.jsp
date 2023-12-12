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
                    $(function () {

                        $('textarea[name=content]').change(function(){
                            console.log($('textarea[name=content]').val());
                        });
                        
                    });
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

                    button[disabled],
                    input[disabled] {
                        cursor: default;
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
                            <!-- Inquiry -->
                            <div class="css-171zbec eug5r8l0">
                                <div class="css-j0lifa ed9qr673">
                                    <div class="css-fhxb3m ed9qr672">
                                        <h2 class="css-1268zpe ed9qr671">1:1 문의</h2>
                                    </div>
                                </div>
                                <div class="css-185m8ch e1153ede0">
                                    <form>
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
                                                                <option value="test1">test1</option>
                                                                <option value="test2">test2</option>
                                                                <option value="test3">test3</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="css-1a8mkrv e1u0xj870">
                                                        <div>
                                                            <select name="det_type" class="inquiry_detType">
                                                                <option value="test1">test1</option>
                                                                <option value="test2">test2</option>
                                                                <option value="test3">test3</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
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
                                        </div>
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
                                                                class="css-5etceh e1tjt2bn1"></textarea>
                                                            <div class="placeholder css-1ofzfyp e1tjt2bn6">
                                                                <div class="css-168e7y9 e1fgvk593"><strong
                                                                        class="css-c2iqrm e1fgvk592">1:1 문의 작성 전
                                                                        확인해주세요!</strong>
                                                                    <p class="css-nlv18q e1fgvk590">전화번호, 이메일, 주소, 계좌번호
                                                                        등의 상세 개인정보가 문의 내용에 저장되지 않도록 주의해 주시기 바랍니다.</p>
                                                                    <strong class="css-1sz9zst e1fgvk592">주문취소</strong>
                                                                    <p class="css-1vtbu89 e1fgvk591">[주문완료] 상태일 경우에만 주문
                                                                        취소 가능합니다. (배송준비중 이후 취소불가)</p>
                                                                    <p class="css-1vtbu89 e1fgvk591">[마이컬리 &gt; 주문내역
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
                                                            <div class="css-0"><label for="photo-picker"
                                                                    class="css-0 e1l8vpkx2"><button type="button"
                                                                        class="css-j9ybaa e1l8vpkx0"><span
                                                                            class="css-113ip0v e1tcjz8t0"></span></button><input
                                                                        multiple="" type="file"
                                                                        accept="image/jpg, image/jpeg, image/png, image/bmp"
                                                                        class="css-eivff4 e1l8vpkx1"></label></div>
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
                                        <div class="css-1spu0j4 ebvrvv11"><button type="submit" disabled=""
                                                class="css-13kn1it ebvrvv10">등록</button></div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%@include file="../include/footer.jspf" %>
            </body>

            </html>