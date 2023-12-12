<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
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
			
        	/* $('.content').html(
                
            ); */
        	
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
        .css-g4g0eu.active, .css-g4g0eu:hover {
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
    </head>
    <body class="sb-nav-fixed">
    	<%@include file="../include/header.jspf" %>
    	<div class="css-luwwab eug5r8l1">
    	<div class="css-833hqy ecbxmj3"><div class="css-1v4whg ecbxmj2">고객센터</div>
        <ul class="css-1x9bshx ecbxmj1"><li>
            <a class=" css-g4g0eu ecbxmj0">공지사항<svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24"><defs><path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path></defs><g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)"><use stroke="#999" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use></g></g></g></g></g></svg></a></li><li>
            <a class=" css-g4g0eu ecbxmj0">자주하는 질문<svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24"><defs><path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path></defs><g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)"><use stroke="#999" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use></g></g></g></g></g></svg></a></li><li>
            <a class="active css-g4g0eu ecbxmj0">1:1 문의<svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24"><defs><path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path></defs><g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)"><use stroke="#5f0080" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use></g></g></g></g></g></svg></a></li><li>
            <a class=" css-g4g0eu ecbxmj0">대량주문 문의<svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24"><defs><path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path></defs><g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)"><use stroke="#999" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use></g></g></g></g></g></svg></a></li></ul><a href="/mypage/inquiry/list" class="css-196gwz9 e19l01ug3">
            <div class="css-rmee6s e19l01ug2"><span class="css-1sdidca e19l01ug1">도움이 필요하신가요 ?</span><span class="css-rnnx2x e19l01ug0">1:1 문의하기</span></div>
            <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24"><defs><path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path></defs><g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)"><use stroke="#333" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use></g></g></g></g></g></svg></a></div>
    	</div>
    	<%@include file="../include/footer.jspf" %>
    </body>
</html>