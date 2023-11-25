<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="../resources/css/admin/prodEnroll.css">

    <script
            src="https://code.jquery.com/jquery-3.4.1.js"
            integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
            crossorigin="anonymous"></script>
</head>
</head>
<body>

<div class="wrapper">
    <div class="wrap">
        <!-- gnv_area -->
        <div class="top_gnb_area">
            <ul class="list">
                <li><a href="/main">메인 페이지</a></li>
                <li><a href="/member/logout.do">로그아웃</a></li>
                <li>고객센터</li>
            </ul>
        </div>
        <!-- top_subject_area -->
        <div class="admin_top_wrap">
            <span>관리자 페이지</span>

        </div>
        <!-- contents-area -->
        <div class="admin_wrap">
            <!-- 네비영역 -->
            <div class="admin_navi_wrap">
                <ul>
                    <li >
                        <a class="admin_list_01" href="/admin/prodEnroll">상품 등록</a>
                    </li>
                </ul>
            </div>
            <div class="admin_content_wrap">
                <div class="admin_content_subject"><span>상품 등록</span></div>
                <div class="admin_content_main">
                    <form action="/admin/prodEnroll" method="post" id="enrollForm">
                        <div class="form_section">
                            <div class="form_section_title">
                                <label>책 제목</label>
                            </div>
                            <div class="form_section_content">
                                <input name="bookName">
                            </div>
                        </div>
                        <div class="form_section">
                            <div class="form_section_title">
                                <label>작가</label>
                            </div>
                            <div class="form_section_content">
                                <input name="authorId" value="0">
                            </div>
                        </div>
                        <div class="form_section">
                            <div class="form_section_title">
                                <label>출판일</label>
                            </div>
                            <div class="form_section_content">
                                <input name="publeYear">
                            </div>
                        </div>
                        <div class="form_section">
                            <div class="form_section_title">
                                <label>출판사</label>
                            </div>
                            <div class="form_section_content">
                                <input name="publisher">
                            </div>
                        </div>
                        <div class="form_section">
                            <div class="form_section_title">
                                <label>책 카테고리</label>
                            </div>
                            <div class="form_section_content">
                                <input name="cateCode">
                            </div>
                        </div>
                        <div class="form_section">
                            <div class="form_section_title">
                                <label>상품 가격</label>
                            </div>
                            <div class="form_section_content">
                                <input name="bookPrice" value="0">
                            </div>
                        </div>
                        <div class="form_section">
                            <div class="form_section_title">
                                <label>상품 재고</label>
                            </div>
                            <div class="form_section_content">
                                <input name="bookStock" value="0">
                            </div>
                        </div>
                        <div class="form_section">
                            <div class="form_section_title">
                                <label>상품 할인율</label>
                            </div>
                            <div class="form_section_content">
                                <input name="bookDiscount" value="0">
                            </div>
                        </div>
                        <div class="form_section">
                            <div class="form_section_title">
                                <label>책 소개</label>
                            </div>
                            <div class="form_section_content">
                                <input name="bookIntro">
                            </div>
                        </div>
                        <div class="form_section">
                            <div class="form_section_title">
                                <label>책 목차</label>
                            </div>
                            <div class="form_section_content">
                                <input name="bookContents">
                            </div>
                        </div>
                    </form>
                    <div class="btn_section">
                        <button id="cancelBtn" class="btn">취 소</button>
                        <button id="enrollBtn" class="btn enroll_btn">등 록</button>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
</body>
</html>
