<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="../resources/css/admin/productEnroll.css">
    <%-- 달력 위젯을 위한 스타일 시트 --%>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />

    <script
            src="https://code.jquery.com/jquery-3.4.1.js"
            integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
            crossorigin="anonymous"></script>
    <%-- 위지윅을 위한 script src --%>
    <script src="https://cdn.ckeditor.com/ckeditor5/40.1.0/classic/ckeditor.js"></script>
    <%-- 달력위젯을 위한 script src --%>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
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
                    <li>
                        <a class="admin_list_01" href="/admin/productEnroll">상품 등록</a>
                    </li>
                </ul>
            </div>
            <div class="admin_content_wrap">
                <div class="admin_content_subject"><span>상품 등록</span></div>
                <div class="admin_content_main">
                    <form action="/admin/productEnroll" method="post" id="enrollForm">
                        <div class="form_section">
                            <div class="form_section_title">
                                <label>카테고리</label>
                            </div>
                            <div class="form_section_content">
                                <input name="cat_code">
                            </div>
                        </div>
                        <div class="form_section">
                            <div class="form_section_title">
                                <label>상품명</label>
                            </div>
                            <div class="form_section_content">
                                <input name="prod_name" value="상품명을 입력하세요.">
                            </div>
                        </div>
                        <div class="form_section">
                            <div class="form_section_title">
                                <label>판매가</label>
                            </div>
                            <div class="form_section_content">
                                <input name="prod_price" value="숫자만 입력">
                            </div>
                        </div>
                        <div class="form_section">
                            <div class="form_section_title">
                                <label>재고수량</label>
                            </div>
                            <div class="form_section_content">
                                <input name="prod_qty" value="0">
                            </div>
                        </div>
                        <div class="form_section">
                            <div class="form_section_title">
                                <label>옵션</label>
                            </div>
                            <div class="form_section_content">
                                <input name="is_opt" value="N">
                            </div>
                        </div>
                        <div class="form_section">
                            <div class="form_section_title">
                                <label>상품이미지</label>
                            </div>
                            <div class="form_section_content">
                                <input name="prod_img_id" value="이미지 업로드">
                            </div>
                        </div>
                        <div class="form_section">
                            <div class="form_section_title">
                                <label>소개글</label>
                            </div>
                            <div class="form_section_content">
                                <textarea name="short_desc" id="short_desc_textarea"></textarea>
                            </div>
                        </div>
                        <div class="form_section">
                            <div class="form_section_title">
                                <label>상세설명</label>
                            </div>
                            <div class="form_section_content">
                                <textarea name="long_desc" id="long_desc_textarea"></textarea>
                            </div>
                        </div>
                        <div class="form_section">
                            <div class="form_section_title">
                                <label>상품주요정보</label>
                            </div>
                            <div class="form_section_content">
                                <input name="sel_str_date" autocomplete="off" readonly="readonly">
                            </div>
                        </div>
                        <div class="form_section">
                            <div class="form_section_title">
                                <label>전시상태</label>
                            </div>
                            <div class="form_section_content">
                                <input name="disp_sts" value="N">
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
<script>

    // 위지윅 적용
    // 상품 소개글
    ClassicEditor
        .create(document.querySelector('#short_desc_textarea'))
        .catch(error => {
            console.error(error);
        });

    // 상품 상세설명
    ClassicEditor
        .create(document.querySelector('#long_desc_textarea'))
        .catch(error => {
            console.error(error);
        });

    // 달력 위젯 적용
    $(function() {
        $( "input[name='sel_str_date']" ).datepicker();
    });

    let enrollForm = $('#enrollForm');

    // 취소버튼
    $('#cancelBtn').click(function () {
        location.href = '/admin/productManage';
        enrollForm.submit();
    });

    // 등록 버튼
    $('#enrollBtn').click(function (e) {
        e.preventDefault();
        enrollForm.submit();
    });

</script>
</body>
</html>
