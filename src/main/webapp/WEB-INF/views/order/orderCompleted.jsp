<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
    <title>OrderCompleted</title>
    <style>
        *, :after, :before {
            box-sizing: border-box;
            margin: 0;
        }
        *, :after, :before, legend, td, th {
            padding: 0;
        }
        div {
            display: block;
        }
        body, button, input, select, textarea {
            font-size: 14px;
            color: #333;
        }
        body {
            margin: 0;
            -webkit-touch-callout: none;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            background-color: #fff;
            -webkit-tap-highlight-color: transparent;
        }
        :root {
            --swiper-theme-color: #007aff;
        }
        html, button, input, select, textarea {
            font-family: "Noto Sans", "malgun gothic", AppleGothic, dotum, sans-serif;
        }
        html {
            touch-action: manipulation;
            -ms-text-size-adjust: 100%;
            -webkit-text-size-adjust: 100%;
        }
        html {
            line-height: 1.15;
            -webkit-tap-highlight-color: transparent;
        }
        *, :after, :before {
            box-sizing: border-box;
            margin: 0;
        }
        *, :after, :before, legend, td, th {
            padding: 0;
        }
        *, :after, :before {
            box-sizing: border-box;
            margin: 0;
        }
        *, :after, :before, legend, td, th {
            padding: 0;
        }
        .css-ugqv3j {
            background: rgb(244, 244, 244);
        }
        .css-1uom1od {
            width: 1050px;
            padding: 60px 0;
            margin: 0 auto;
        }
        .css-1icxyy0 {
            position: relative;
            width: 400px;
            padding: 30px;
            margin: 0px auto;
            background: rgb(255, 255, 255);
            text-align: center;
        }
        .css-fnh15r {
            padding: 30px 0px 20px;
            text-align: center;
        }
        .css-ypnlzr {
            width: 50px;
            height: 50px;
        }
        img, legend {
            border: 0;
            vertical-align: top;
        }
        canvas, img, video {
            max-width: 100%;
        }
        .css-yb4g98 {
            padding-top: 24px;
            font-size: 18px;
            line-height: 26px;
        }
        .css-14is9qy {
            font-size: 20px;
        }
        .css-114oz6p {
            font-size: 18px;
            font-weight: 700;
            line-height: 26px;
        }
        .css-1va7zlz {
            border-radius: 6px;
            padding: 20px 20px 17px;
            text-align: center;
            background-color: rgb(250, 250, 250);
        }
        .css-1l8u1wr {
            padding-bottom: 12px;
            font-size: 14px;
            font-weight: 400;
            text-align: center;
            line-height: 19px;
            color: rgb(51, 51, 51);
        }
        .css-qnijoc {
            margin: 0px auto 15px;
            width: 90%;
            height: 1px;
            background-color: rgb(242, 242, 242);
        }
        .css-1hh4r05 {
            display: flex;
            -webkit-box-pack: center;
            justify-content: center;
            -webkit-box-align: center;
            align-items: center;
            gap: 4px;
        }
        .css-1h6pllp {
            font-size: 13px;
            font-weight: 400;
            color: rgb(102, 102, 102);
        }
        .css-ciygyc {
            font-size: 13px;
            font-weight: 600;
            color: rgb(102, 102, 102);
        }
        .css-1ugcep1 {
            width: 16px;
            height: 16px;
            background-color: transparent;
            border: none;
        }
        svg:not(:root) {
            overflow: hidden;
        }
        .css-8qz8ia {
            padding-top: 20px;
        }
        .css-1feuezi {
            height: 69px;
            font-size: 14px;
            line-height: 19px;
            padding: 16px 20px;
            text-align: center;
            border-radius: 6px;
            background: rgb(248, 241, 255);
        }
        .css-152kj31 {
            padding-right: 4px;
            font-weight: 500;
            letter-spacing: -0.5px;
            -webkit-text-fill-color: transparent;
            background: linear-gradient(170deg, rgb(82, 31, 239), rgb(228, 30, 235));
            -webkit-background-clip: text;
        }
        .css-il3y9x {
            font-weight: 500;
            letter-spacing: -0.5px;
            color: rgb(51, 51, 51);
        }
        .css-m2n2y {
            padding-top: 2px;
            font-weight: 400;
            font-size: 12px;
            line-height: 16px;
            color: rgb(128, 128, 128);
            opacity: 0.8;
        }
        .css-1feuezi + div {
            margin-top: 8px;
        }
        .css-1wa7vj6 {
            border-top: 1px solid rgb(244, 244, 244);
            margin-top: 32px;
            padding-top: 16px;
            text-align: left;
        }
        .css-1a1jcfo {
            display: flex;
            -webkit-box-pack: justify;
            justify-content: space-between;
            padding-top: 10px;
        }
        .css-vmo0an {
            width: 100px;
            font-size: 16px;
            line-height: 24px;
            white-space: nowrap;
        }
        .css-21ugym {
            text-align: right;
            font-size: 20px;
            line-height: 24px;
            font-weight: bold;
        }
        .css-hfgifi {
            padding-left: 2px;
            font-size: 16px;
            font-weight: normal;
            vertical-align: bottom;
        }
        .css-1a1jcfo {
            display: flex;
            -webkit-box-pack: justify;
            justify-content: space-between;
            padding-top: 10px;
        }
        .css-vmo0an {
            width: 100px;
            font-size: 16px;
            line-height: 24px;
            white-space: nowrap;
        }
        .css-13515y6 {
            min-width: 162px;
            text-align: right;
        }
        .css-r9z3y0 {
            font-size: 18px;
            line-height: 24px;
            text-align: right;
            color: rgb(95, 0, 128);
        }
        .css-98lqc0 {
            text-align: right;
            color: rgb(95, 0, 128);
            display: block;
            width: auto;
            font-weight: normal;
            font-size: 12px;
            line-height: 16px;
        }
        .css-1mnvac {
            margin-top: 32px;
        }
        .css-phyjhi {
            display: flex;
            -webkit-box-pack: justify;
            justify-content: space-between;
            -webkit-box-align: center;
            align-items: center;
            position: relative;
            cursor: pointer;
            min-height: 40px;
            overflow: hidden;
            border-radius: 3px;
            background-color: rgb(244, 236, 255);
        }
        .css-1erf9v6 {
            text-align: center;
            margin: 6px 0px;
            word-break: keep-all;
            font-size: 15px;
            line-height: 20px;
            letter-spacing: -0.5px;
            font-weight: 400;
            color: rgb(51, 51, 51);
        }
        .css-1erf9v6 span {
            font-weight: 500;
            color: rgb(95, 0, 128);
        }
        .css-1pgxldh {
            text-align: center;
            margin: 6px 0px;
            word-break: keep-all;
            font-size: 11px;
            line-height: 12px;
            color: rgb(153, 153, 153);
        }
        .css-1dslxe3 {
            padding: 20px 0px;
            text-align: left;
        }
        ol, ul {
            list-style-type: none;
        }
        .css-dnq4jd {
            position: relative;
            padding-top: 4px;
            font-size: 14px;
            line-height: 19px;
            padding-left: 11px;
            color: rgb(153, 153, 153);
            text-align: left;
        }
        .css-dnq4jd::before {
            overflow: hidden;
            position: absolute;
            width: 3px;
            height: 3px;
            margin: 9px 8px 0px -10px;
            background: rgb(204, 204, 204);
            vertical-align: top;
            border-radius: 50%;
            content: "";
        }
        .css-o6ldsh {
            display: block;
            padding: 0px 10px;
            text-align: center;
            overflow: hidden;
            width: 100%;
            height: 52px;
            color: rgb(51, 51, 51);
            background-color: rgb(255, 255, 255);
            border: 1px solid rgb(221, 221, 221);
            border-radius: 3px;
        }
        .css-nytqmg {
            display: inline-block;
            font-size: 16px;
            font-weight: 500;
        }
        .css-6682oh {
            display: block;
            padding: 0px 10px;
            text-align: center;
            overflow: hidden;
            width: 100%;
            height: 52px;
            color: rgb(255, 255, 255);
            background-color: rgb(95, 0, 128);
            border: 0px none;
            border-radius: 3px;
        }
        .css-a0s0c2 button + button {
            margin-top: 10px;
        }
        .css-nytqmg {
            display: inline-block;
            font-size: 16px;
            font-weight: 500;
        }
    </style>
</head>
<body>
<div class="css-ugqv3j e146m4rf2">
    <div class="css-1uom1od e146m4rf0">
        <div class="css-1icxyy0 e1ax7ftx3">
            <div class="css-fnh15r e190vd4y4">
                <img src="https://res.kurly.com/mobile/service/order/1909/img_success_order_end.gif" alt="" class="css-ypnlzr e1hwfd030">
                <div class="css-yb4g98 e190vd4y3">
                    <p class="css-14is9qy e190vd4y0">유재석님의 주문이 완료되었습니다.</p>
                    <p class="css-114oz6p e190vd4y2">내일 새벽에 만나요!<br></p>
                </div>
            </div>
            <div class="css-1va7zlz epyeklp6">
                <div class="css-1l8u1wr epyeklp3">서울 종로구 종로 69 (서울 YMCA) 5층 522호</div>
                <div class="css-qnijoc epyeklp2"></div>
                <div class="css-1hh4r05 epyeklp5">
                    <span class="css-1h6pllp epyeklp1">주문번호</span>
                    <p class="css-ciygyc epyeklp0">2324322320175</p>
                    <button data-testid="copy-button" width="16" height="16" class="css-1ugcep1 e1vniuq50" type="button">
                        <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" clip-rule="evenodd" d="M6.1 3.50002C6.1 3.27911 6.27909 3.10002 6.5 3.10002H12.5C12.7209 3.10002 12.9 3.27911 12.9 3.50002V9.50002C12.9 9.72093 12.7209 9.90002 12.5 9.90002H11V6.50003C11 5.6716 10.3284 5.00003 9.5 5.00003H3.5C2.67157 5.00003 2 5.6716 2 6.50003V12.5C2 13.3284 2.67157 14 3.5 14H9.5C10.3284 14 11 13.3284 11 12.5V11.1H12.5C13.3837 11.1 14.1 10.3837 14.1 9.50002V3.50002C14.1 2.61636 13.3837 1.90002 12.5 1.90002H6.5C5.61634 1.90002 4.9 2.61636 4.9 3.50002V5.00002H6.1V3.50002ZM3.2 6.50003C3.2 6.33434 3.33431 6.20003 3.5 6.20003H9.5C9.66569 6.20003 9.8 6.33434 9.8 6.50003V12.5C9.8 12.6657 9.66569 12.8 9.5 12.8H3.5C3.33431 12.8 3.2 12.6657 3.2 12.5V6.50003Z" fill="#666"></path>
                        </svg>
                    </button></div></div>
            <div class="css-8qz8ia e13kpt4l4">
                <div class="css-1feuezi e13kpt4l3">
                    <span class="css-152kj31 e13kpt4l2">첫 구매 감사혜택 1.</span>
                    <span class="css-il3y9x e13kpt4l1">무료배송</span>
                    <p class="css-m2n2y e13kpt4l0">2만원 이상 주문 시, 다음 날 오전부터 한 달간 적용</p>
                </div><div class="css-1feuezi e13kpt4l3">
                <span class="css-152kj31 e13kpt4l2">첫 구매 감사혜택 2.</span>
                <span class="css-il3y9x e13kpt4l1">결제금액 5% 적립</span>
                <p class="css-m2n2y e13kpt4l0">다음 날 오전부터 한 달간 적용</p>
            </div></div>
            <div class="css-1wa7vj6 epyeklp4">
                <div class="css-1a1jcfo ea1mry77">
                    <span class="css-vmo0an ea1mry76">결제금액</span>
                    <span class="css-21ugym ea1mry73">11,980<span class="css-hfgifi ea1mry72">원</span></span>
                </div>
                <div class="css-1a1jcfo ea1mry77">
                    <span class="css-vmo0an ea1mry76">적립금</span>
                    <span class="css-13515y6 ea1mry75"><span class="css-r9z3y0 ea1mry74">+326<span class="css-hfgifi ea1mry72">원</span></span>
                                <span class="css-98lqc0 ea1mry70">적립금은 배송완료 7일후 적립 (웰컴 5%)</span></span></div></div>
            <div class="css-1mnvac e1ax7ftx1">
                <div class="css-phyjhi ervvhjr3">
                    <div style="max-width: 67px;">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 500 429" width="500" height="429" preserveAspectRatio="xMidYMid meet" style="width: 100%; height: 100%; transform: translate3d(0px, 0px, 0px);"><defs><clipPath id="__lottie_element_2"><rect width="500" height="429" x="0" y="0"></rect></clipPath></defs><g clip-path="url(#__lottie_element_2)"><g transform="matrix(-0.9470734596252441,-0.29673585295677185,-0.638809084892273,0.7128873467445374,168.81756591796875,118.31539154052734)" opacity="1" style="display: block;"><g opacity="1" transform="matrix(1,0,0,1,140.8679962158203,-89.63200378417969)"><path fill="rgb(235,231,94)" fill-opacity="1" d=" M28.868000030517578,-28.868000030517578 C28.868000030517578,-28.868000030517578 28.868000030517578,28.868000030517578 28.868000030517578,28.868000030517578 C28.868000030517578,28.868000030517578 -28.868000030517578,28.868000030517578 -28.868000030517578,28.868000030517578 C-28.868000030517578,28.868000030517578 -28.868000030517578,-28.868000030517578 -28.868000030517578,-28.868000030517578 C-28.868000030517578,-28.868000030517578 28.868000030517578,-28.868000030517578 28.868000030517578,-28.868000030517578z"></path>
                            <path stroke-linecap="butt" stroke-linejoin="miter" fill-opacity="0" stroke-miterlimit="4" stroke="rgb(255,255,255)" stroke-opacity="1" stroke-width="0" d=" M28.868000030517578,-28.868000030517578 C28.868000030517578,-28.868000030517578 28.868000030517578,28.868000030517578 28.868000030517578,28.868000030517578 C28.868000030517578,28.868000030517578 -28.868000030517578,28.868000030517578 -28.868000030517578,28.868000030517578 C-28.868000030517578,28.868000030517578 -28.868000030517578,-28.868000030517578 -28.868000030517578,-28.868000030517578 C-28.868000030517578,-28.868000030517578 28.868000030517578,-28.868000030517578 28.868000030517578,-28.868000030517578z"></path></g></g><g transform="matrix(0.6780993342399597,-0.48581650853157043,0.2739699184894562,0.8633833527565002,256.46923828125,182.08229064941406)" opacity="1" style="display: block;"><g opacity="1" transform="matrix(1,0,0,1,140.8679962158203,-89.63200378417969)"><path fill="rgb(152,94,235)" fill-opacity="1" d=" M28.868000030517578,-28.868000030517578 C28.868000030517578,-28.868000030517578 28.868000030517578,28.868000030517578 28.868000030517578,28.868000030517578 C28.868000030517578,28.868000030517578 -28.868000030517578,28.868000030517578 -28.868000030517578,28.868000030517578 C-28.868000030517578,28.868000030517578 -28.868000030517578,-28.868000030517578 -28.868000030517578,-28.868000030517578 C-28.868000030517578,-28.868000030517578 28.868000030517578,-28.868000030517578 28.868000030517578,-28.868000030517578z"></path>
                            <path stroke-linecap="butt" stroke-linejoin="miter" fill-opacity="0" stroke-miterlimit="4" stroke="rgb(255,255,255)" stroke-opacity="1" stroke-width="0" d=" M28.868000030517578,-28.868000030517578 C28.868000030517578,-28.868000030517578 28.868000030517578,28.868000030517578 28.868000030517578,28.868000030517578 C28.868000030517578,28.868000030517578 -28.868000030517578,28.868000030517578 -28.868000030517578,28.868000030517578 C-28.868000030517578,28.868000030517578 -28.868000030517578,-28.868000030517578 -28.868000030517578,-28.868000030517578 C-28.868000030517578,-28.868000030517578 28.868000030517578,-28.868000030517578 28.868000030517578,-28.868000030517578z"></path></g></g><g transform="matrix(-0.80901700258255,0.24157197773456573,0,0.9116412997245789,289.75189208984375,189.63194274902344)" opacity="1" style="display: block;"><g opacity="1" transform="matrix(1,0,0,1,140.8679962158203,-89.63200378417969)"><path fill="rgb(217,189,255)" fill-opacity="1" d=" M28.868000030517578,-28.868000030517578 C28.868000030517578,-28.868000030517578 28.868000030517578,28.868000030517578 28.868000030517578,28.868000030517578 C28.868000030517578,28.868000030517578 -28.868000030517578,28.868000030517578 -28.868000030517578,28.868000030517578 C-28.868000030517578,28.868000030517578 -28.868000030517578,-28.868000030517578 -28.868000030517578,-28.868000030517578 C-28.868000030517578,-28.868000030517578 28.868000030517578,-28.868000030517578 28.868000030517578,-28.868000030517578z"></path><path stroke-linecap="butt" stroke-linejoin="miter" fill-opacity="0" stroke-miterlimit="4" stroke="rgb(255,255,255)" stroke-opacity="1" stroke-width="0" d=" M28.868000030517578,-28.868000030517578 C28.868000030517578,-28.868000030517578 28.868000030517578,28.868000030517578 28.868000030517578,28.868000030517578 C28.868000030517578,28.868000030517578 -28.868000030517578,28.868000030517578 -28.868000030517578,28.868000030517578 C-28.868000030517578,28.868000030517578 -28.868000030517578,-28.868000030517578 -28.868000030517578,-28.868000030517578 C-28.868000030517578,-28.868000030517578 28.868000030517578,-28.868000030517578 28.868000030517578,-28.868000030517578z"></path></g></g><g transform="matrix(-0.9828867316246033,0.11554417014122009,-0.12068331986665726,0.18451647460460663,557.6155395507812,218.4197235107422)" opacity="1" style="display: block;"><g opacity="1" transform="matrix(1,0,0,1,140.8679962158203,-89.63200378417969)"><path fill="rgb(181,128,255)" fill-opacity="1" d=" M28.868000030517578,-28.868000030517578 C28.868000030517578,-28.868000030517578 28.868000030517578,28.868000030517578 28.868000030517578,28.868000030517578 C28.868000030517578,28.868000030517578 -28.868000030517578,28.868000030517578 -28.868000030517578,28.868000030517578 C-28.868000030517578,28.868000030517578 -28.868000030517578,-28.868000030517578 -28.868000030517578,-28.868000030517578 C-28.868000030517578,-28.868000030517578 28.868000030517578,-28.868000030517578 28.868000030517578,-28.868000030517578z"></path><path stroke-linecap="butt" stroke-linejoin="miter" fill-opacity="0" stroke-miterlimit="4" stroke="rgb(255,255,255)" stroke-opacity="1" stroke-width="0" d=" M28.868000030517578,-28.868000030517578 C28.868000030517578,-28.868000030517578 28.868000030517578,28.868000030517578 28.868000030517578,28.868000030517578 C28.868000030517578,28.868000030517578 -28.868000030517578,28.868000030517578 -28.868000030517578,28.868000030517578 C-28.868000030517578,28.868000030517578 -28.868000030517578,-28.868000030517578 -28.868000030517578,-28.868000030517578 C-28.868000030517578,-28.868000030517578 28.868000030517578,-28.868000030517578 28.868000030517578,-28.868000030517578z"></path></g></g><g transform="matrix(-0.9186500310897827,0.2761130630970001,-0.24615153670310974,0.15941038727760315,216.16241455078125,396.2967834472656)" opacity="1" style="display: block;"><g opacity="1" transform="matrix(1,0,0,1,140.8679962158203,-89.63200378417969)"><path fill="rgb(158,155,32)" fill-opacity="1" d=" M28.868000030517578,-28.868000030517578 C28.868000030517578,-28.868000030517578 28.868000030517578,28.868000030517578 28.868000030517578,28.868000030517578 C28.868000030517578,28.868000030517578 -28.868000030517578,28.868000030517578 -28.868000030517578,28.868000030517578 C-28.868000030517578,28.868000030517578 -28.868000030517578,-28.868000030517578 -28.868000030517578,-28.868000030517578 C-28.868000030517578,-28.868000030517578 28.868000030517578,-28.868000030517578 28.868000030517578,-28.868000030517578z"></path><path stroke-linecap="butt" stroke-linejoin="miter" fill-opacity="0" stroke-miterlimit="4" stroke="rgb(255,255,255)" stroke-opacity="1" stroke-width="0" d=" M28.868000030517578,-28.868000030517578 C28.868000030517578,-28.868000030517578 28.868000030517578,28.868000030517578 28.868000030517578,28.868000030517578 C28.868000030517578,28.868000030517578 -28.868000030517578,28.868000030517578 -28.868000030517578,28.868000030517578 C-28.868000030517578,28.868000030517578 -28.868000030517578,-28.868000030517578 -28.868000030517578,-28.868000030517578 C-28.868000030517578,-28.868000030517578 28.868000030517578,-28.868000030517578 28.868000030517578,-28.868000030517578z"></path></g></g></g></svg></div><div><p class="css-1erf9v6 ervvhjr1">다음 주문에 <span>3만원 할인</span> 받기</p><p class="css-1pgxldh ervvhjr0">컬리카드</p></div>
                    <div style="max-width: 67px;"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 500 429" width="500" height="429" preserveAspectRatio="xMidYMid meet" style="width: 100%; height: 100%; transform: translate3d(0px, 0px, 0px);"><defs><clipPath id="__lottie_element_19"><rect width="500" height="429" x="0" y="0"></rect></clipPath></defs><g clip-path="url(#__lottie_element_19)"><g transform="matrix(-0.9470734596252441,-0.29673585295677185,-0.638809084892273,0.7128873467445374,218.2850341796875,119.78804016113281)" opacity="1" style="display: block;"><g opacity="1" transform="matrix(1,0,0,1,140.8679962158203,-89.63200378417969)"><path fill="rgb(250,98,47)" fill-opacity="1" d=" M28.868000030517578,-28.868000030517578 C28.868000030517578,-28.868000030517578 28.868000030517578,28.868000030517578 28.868000030517578,28.868000030517578 C28.868000030517578,28.868000030517578 -28.868000030517578,28.868000030517578 -28.868000030517578,28.868000030517578 C-28.868000030517578,28.868000030517578 -28.868000030517578,-28.868000030517578 -28.868000030517578,-28.868000030517578 C-28.868000030517578,-28.868000030517578 28.868000030517578,-28.868000030517578 28.868000030517578,-28.868000030517578z"></path><path stroke-linecap="butt" stroke-linejoin="miter" fill-opacity="0" stroke-miterlimit="4" stroke="rgb(255,255,255)" stroke-opacity="1" stroke-width="0" d=" M28.868000030517578,-28.868000030517578 C28.868000030517578,-28.868000030517578 28.868000030517578,28.868000030517578 28.868000030517578,28.868000030517578 C28.868000030517578,28.868000030517578 -28.868000030517578,28.868000030517578 -28.868000030517578,28.868000030517578 C-28.868000030517578,28.868000030517578 -28.868000030517578,-28.868000030517578 -28.868000030517578,-28.868000030517578 C-28.868000030517578,-28.868000030517578 28.868000030517578,-28.868000030517578 28.868000030517578,-28.868000030517578z"></path></g></g><g transform="matrix(0.6780993342399597,-0.48581650853157043,0.2739699184894562,0.8633833527565002,157.65829467773438,226.3515625)" opacity="1" style="display: block;"><g opacity="1" transform="matrix(1,0,0,1,140.8679962158203,-89.63200378417969)"><path fill="rgb(255,159,128)" fill-opacity="1" d=" M28.868000030517578,-28.868000030517578 C28.868000030517578,-28.868000030517578 28.868000030517578,28.868000030517578 28.868000030517578,28.868000030517578 C28.868000030517578,28.868000030517578 -28.868000030517578,28.868000030517578 -28.868000030517578,28.868000030517578 C-28.868000030517578,28.868000030517578 -28.868000030517578,-28.868000030517578 -28.868000030517578,-28.868000030517578 C-28.868000030517578,-28.868000030517578 28.868000030517578,-28.868000030517578 28.868000030517578,-28.868000030517578z"></path><path stroke-linecap="butt" stroke-linejoin="miter" fill-opacity="0" stroke-miterlimit="4" stroke="rgb(255,255,255)" stroke-opacity="1" stroke-width="0" d=" M28.868000030517578,-28.868000030517578 C28.868000030517578,-28.868000030517578 28.868000030517578,28.868000030517578 28.868000030517578,28.868000030517578 C28.868000030517578,28.868000030517578 -28.868000030517578,28.868000030517578 -28.868000030517578,28.868000030517578 C-28.868000030517578,28.868000030517578 -28.868000030517578,-28.868000030517578 -28.868000030517578,-28.868000030517578 C-28.868000030517578,-28.868000030517578 28.868000030517578,-28.868000030517578 28.868000030517578,-28.868000030517578z"></path></g></g><g transform="matrix(-0.80901700258255,0.24157197773456573,0,0.9116412997245789,222.9971923828125,174.07192993164062)" opacity="1" style="display: block;"><g opacity="1" transform="matrix(1,0,0,1,140.8679962158203,-89.63200378417969)">
                        <path fill="rgb(235,129,94)" fill-opacity="1" d=" M28.868000030517578,-28.868000030517578 C28.868000030517578,-28.868000030517578 28.868000030517578,28.868000030517578 28.868000030517578,28.868000030517578 C28.868000030517578,28.868000030517578 -28.868000030517578,28.868000030517578 -28.868000030517578,28.868000030517578 C-28.868000030517578,28.868000030517578 -28.868000030517578,-28.868000030517578 -28.868000030517578,-28.868000030517578 C-28.868000030517578,-28.868000030517578 28.868000030517578,-28.868000030517578 28.868000030517578,-28.868000030517578z"></path><path stroke-linecap="butt" stroke-linejoin="miter" fill-opacity="0" stroke-miterlimit="4" stroke="rgb(255,255,255)" stroke-opacity="1" stroke-width="0" d=" M28.868000030517578,-28.868000030517578 C28.868000030517578,-28.868000030517578 28.868000030517578,28.868000030517578 28.868000030517578,28.868000030517578 C28.868000030517578,28.868000030517578 -28.868000030517578,28.868000030517578 -28.868000030517578,28.868000030517578 C-28.868000030517578,28.868000030517578 -28.868000030517578,-28.868000030517578 -28.868000030517578,-28.868000030517578 C-28.868000030517578,-28.868000030517578 28.868000030517578,-28.868000030517578 28.868000030517578,-28.868000030517578z"></path></g></g><g transform="matrix(-0.9828867316246033,0.11554417014122009,-0.12068331986665726,0.18451647460460663,518.262939453125,185.45469665527344)" opacity="1" style="display: block;"><g opacity="1" transform="matrix(1,0,0,1,140.8679962158203,-89.63200378417969)"><path fill="rgb(32,158,129)" fill-opacity="1" d=" M28.868000030517578,-28.868000030517578 C28.868000030517578,-28.868000030517578 28.868000030517578,28.868000030517578 28.868000030517578,28.868000030517578 C28.868000030517578,28.868000030517578 -28.868000030517578,28.868000030517578 -28.868000030517578,28.868000030517578 C-28.868000030517578,28.868000030517578 -28.868000030517578,-28.868000030517578 -28.868000030517578,-28.868000030517578 C-28.868000030517578,-28.868000030517578 28.868000030517578,-28.868000030517578 28.868000030517578,-28.868000030517578z"></path><path stroke-linecap="butt" stroke-linejoin="miter" fill-opacity="0" stroke-miterlimit="4" stroke="rgb(255,255,255)" stroke-opacity="1" stroke-width="0" d=" M28.868000030517578,-28.868000030517578 C28.868000030517578,-28.868000030517578 28.868000030517578,28.868000030517578 28.868000030517578,28.868000030517578 C28.868000030517578,28.868000030517578 -28.868000030517578,28.868000030517578 -28.868000030517578,28.868000030517578 C-28.868000030517578,28.868000030517578 -28.868000030517578,-28.868000030517578 -28.868000030517578,-28.868000030517578 C-28.868000030517578,-28.868000030517578 28.868000030517578,-28.868000030517578 28.868000030517578,-28.868000030517578z"></path></g></g><g transform="matrix(-0.9186500310897827,0.2761130630970001,-0.24615153670310974,0.15941038727760315,308.4264831542969,401.5088806152344)" opacity="1" style="display: block;"><g opacity="1" transform="matrix(1,0,0,1,140.8679962158203,-89.63200378417969)"><path fill="rgb(94,235,202)" fill-opacity="1" d=" M28.868000030517578,-28.868000030517578 C28.868000030517578,-28.868000030517578 28.868000030517578,28.868000030517578 28.868000030517578,28.868000030517578 C28.868000030517578,28.868000030517578 -28.868000030517578,28.868000030517578 -28.868000030517578,28.868000030517578 C-28.868000030517578,28.868000030517578 -28.868000030517578,-28.868000030517578 -28.868000030517578,-28.868000030517578 C-28.868000030517578,-28.868000030517578 28.868000030517578,-28.868000030517578 28.868000030517578,-28.868000030517578z"></path><path stroke-linecap="butt" stroke-linejoin="miter" fill-opacity="0" stroke-miterlimit="4" stroke="rgb(255,255,255)" stroke-opacity="1" stroke-width="0" d=" M28.868000030517578,-28.868000030517578 C28.868000030517578,-28.868000030517578 28.868000030517578,28.868000030517578 28.868000030517578,28.868000030517578 C28.868000030517578,28.868000030517578 -28.868000030517578,28.868000030517578 -28.868000030517578,28.868000030517578 C-28.868000030517578,28.868000030517578 -28.868000030517578,-28.868000030517578 -28.868000030517578,-28.868000030517578 C-28.868000030517578,-28.868000030517578 28.868000030517578,-28.868000030517578 28.868000030517578,-28.868000030517578z"></path></g></g></g></svg></div></div></div>
            <div class="css-1dslxe3 e1ax7ftx2">
                <ul>
                    <li class="css-dnq4jd ejr204i0">[주문완료] 상태일 경우에만 주문내역 상세페이지에서 주문 취소가 가능합니다.</li>
                    <li class="css-dnq4jd ejr204i0">엘리베이터 이용이 어려운 경우 6층 이상부터는 공동 현관 앞 또는 경비실로 대응 배송 될 수 있습니다.</li>
                    <li class="css-dnq4jd ejr204i0">실제 출입 정보가 다를 경우, 부득이하게 1층 공동현관 앞 또는 경비실 앞에 배송될 수 있습니다.</li>
                    <li class="css-dnq4jd ejr204i0">주문 / 배송 및 기타 문의가 있을 경우, 1:1 문의에 남겨주시면 신속히 해결해드리겠습니다.</li>
                </ul>
            </div>
            <div class="css-a0s0c2 e1ax7ftx0">
                <button class="css-o6ldsh e4nu7ef3" type="button">
                    <span class="css-nytqmg e4nu7ef1">주문 상세보기</span></button>
                <button class="css-6682oh e4nu7ef3" type="button">
                    <span class="css-nytqmg e4nu7ef1">쇼핑 계속하기</span></button>
            </div>
        </div>
    </div>
</div>
</body>
</html>