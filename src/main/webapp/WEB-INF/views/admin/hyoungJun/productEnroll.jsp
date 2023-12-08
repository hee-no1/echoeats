<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="shortcut icon" href="../resources/icons/favicon.ico" type="image/x-icon">
    <title>상품등록페이지</title>
    <link rel="stylesheet" href="../resources/css/admin/productEnroll.css">
    <%-- 달력 위젯을 위한 스타일 시트 --%>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"/>

    <script src="https://code.jquery.com/jquery-3.4.1.js"
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
                                <div class="cate_wrap">
                                    <span>대분류</span>
                                    <select class="cate1">
                                        <option selected value="none">선택</option>
                                    </select>
                                </div>
                                <div class="cate_wrap">
                                    <span>중분류</span>
                                    <select class="cate2">
                                        <option selected value="none">선택</option>
                                    </select>
                                </div>
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
                                <div class="price_wrap">
                                    <span>판매가</span>
                                    <input name="prod_price" value="숫자만 입력">
                                    <span>원</span>
                                </div>
                                <div class="discount_rate_wrap">
                                    <span>할인율</span>
                                    <input id="discount_interface" maxlength="2" value="0">
                                    <input name="discount_rate" type="hidden" value="0">
                                    <span>%</span>
                                    <span class="discounted_price">할인된 가격 : <span class="span_discount"></span></span>
                                    <span>판매기간</span>
                                    <div class="sel_date">
                                        <div class="sel_str_date">
                                            <input name="sel_str_date" autocomplete="off" readonly="readonly">
                                        </div>
                                        <span>~</span>
                                        <div class="sel_end_date">
                                            <input name="sel_end_date" autocomplete="off" readonly="readonly">
                                        </div>
                                    </div>
                                </div>
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
                                <div class="form-section-sub">
                                    <div class="form-sub-wrap">
                                        <label class="control-label">선택형</label>
                                        <div class="input-content">
                                            <div class="form-inline">
                                                <div class="form-group">
                                                    <div class="seller-input-toggle">
                                                        <input type="radio" id="option_choice_type_true"
                                                               name="option_choice_type" value="true">
                                                        <label for="option_choice_type_true">설정함</label>
                                                        <input type="radio" id="option_choice_type_false"
                                                               name="option_choice_type" value="false">
                                                        <label for="option_choice_type_false">설정안함</label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-sub-detail">
                                        <div class="form-sub-detail-wrap">
                                            <label class="control-label">옵션입력</label>
                                            <div class="input-content">
                                                <div class="seller-option-input">
                                                    <div class="option-wrap">
                                                        <div class="col-sm-3">
                                                            <label for="choice_option_name0">옵션명</label>
                                                            <div class="seller-input-wrap">
                                                                <input type="text" id="choice_option_name0"
                                                                       name="choice_option_name" value=""
                                                                       class="form-control" placeholder="예시:컬러">
                                                                <a role="button" class="btn-clear" tabindex="-1" style="display: none;">
                                                                    <span aria-label="삭제">x</span>
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-6">
                                                            <label for="choice_option_value0">옵션값</label>
                                                            <div class="seller-input-wrap">
                                                                <input type="text" id="choice_option_value0"
                                                                       name="choice_option_value" value=""
                                                                       class="form-control" placeholder="예시:빨강,노랑 ( , 로 구분 )">
                                                                <a role="button" class="btn-clear" tabindex="-1" style="display: none;">
                                                                    <span aria-label="삭제">x</span>
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <label class="hidden-xs"></label>
                                                            <a role="button">
                                                                <i class="seller-icon" aria-label="삭제"></i>
                                                            </a>
                                                            <a role="button">
                                                                <i class="seller-icon" aria-label="추가"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="option-wrap"></div>
                                                    <div class="option-wrap"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-sub-detail-wrap"></div>
                                    </div>
                                    <%-- <input name="is_opt" value="N"> --%>
                                </div>
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
    $(function () {
        $("input[name='sel_str_date']").datepicker();
    });

    $(function () {
        $("input[name='sel_end_date']").datepicker();
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

    // 카테고리 리스트
    let categoryList = JSON.parse('${categoryList}');

    let cate1Array = [];
    let cate2Array = [];
    let cate1Object = {};
    let cate2Object = {};

    let cate1Select = $('.cate1');
    let cate2Select = $('.cate2');

    for (let i = 0; i < categoryList.length; i++) {
        if (categoryList[i].tier === '1') {
            cate1Object = {};
            cate1Object.cat_name = categoryList[i].cat_name;
            cate1Object.cat_code = categoryList[i].cat_code;
            cate1Object.parent_code = categoryList[i].parent_code;

            cate1Array.push(cate1Object);
        }
    }

    // 카테고리 배열 초기화 메서드
    function makeCategoryArray(obj, array, categoryList, tier) {
        for (let i = 0; i < categoryList.length; i++) {
            if (categoryList[i].tier === tier) {
                obj = {};
                obj.cat_name = categoryList[i].cat_name;
                obj.cat_code = categoryList[i].cat_code;
                obj.parent_code = categoryList[i].parent_code;

                array.push(obj);
            }
        }
    }

    // 배열 초기화
    makeCategoryArray(cate1Object, cate1Array, categoryList, '1');
    makeCategoryArray(cate2Object, cate2Array, categoryList, '2');

    // 대분류 목록
    for (let i = 0; i < cate1Array.length; i++) {
        cate1Select.append('<option value="' + cate1Array[i].cat_code + '">' + cate1Array[i].cat_name + '</option>');
    }

    // 대분류 선택시 중분류 목록
    $(cate1Select).on("change", function () {
        let selectVal = $(this).find("option:selected").val();
        cate2Select.children().remove();
        cate2Select.append('<option selected value="none">선택</option>');
        for (let i = 0; i < cate2Array.length; i++) {
            if (cate2Array[i].parent_code === selectVal) {
                cate2Select.append('<option value="' + cate2Array[i].cat_code + '">' + cate2Array[i].cat_name + '</option>');
            }
        }
    });

    // 할인율 input설정
    $('#discount_interface').on("PropertyChange change keyup paste input", function () {
        let userInput = $('#discount_interface');
        let discountInput = $('input[name="discount_rate"]');

        // 사용자가 입력할 할인값
        let discountRate = userInput.val();
        // 서버에 전송할 할인값
        let sendDiscountRate = discountRate / 100;
        // 원래 가격
        let productPrice = $("input[name='prod_price']").val();
        // 할인된 가격
        let discountedPrice = Math.floor(productPrice * (1 - sendDiscountRate));

        $('.span_discount').html(discountedPrice);

        discountInput.val(sendDiscountRate);
    });

    // 가격을 다시 입력했을 때 할인된 가격이 바뀌는 이벤트
    $('input[name="prod_price"]').on("PropertyChange change keyup paste input", function () {
        let userInput = $('#discount_interface');
        let discountInput = $('input[name="discount_rate"]');

        // 사용자가 입력할 할인값
        let discountRate = userInput.val();
        // 서버에 전송할 할인값
        let sendDiscountRate = discountRate / 100;
        // 원래 가격
        let productPrice = $("input[name='prod_price']").val();
        // 할인된 가격
        let discountedPrice = Math.floor(productPrice * (1 - sendDiscountRate));

        $('.span_discount').html(discountedPrice);
    });

</script>
</body>
</html>
