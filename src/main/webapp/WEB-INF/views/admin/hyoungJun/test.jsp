<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link rel="shortcut icon" href="/resources/icons/favicon.ico" type="image/x-icon">
    <title>상품등록페이지</title>
    <!-- <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" /> -->
    <link href="<c:url value='/resources/common/css/styles.css' />" rel="stylesheet"/>
    <link href="<c:url value='/resources/admin/order/css/orderList.css' />" rel="stylesheet"/>
    <link rel="stylesheet" href="/resources/css/admin/test.css">
    <%-- 달력 위젯을 위한 스타일 시트 --%>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"/>

    <script src="https://code.jquery.com/jquery-3.4.1.js"
            integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
            crossorigin="anonymous"></script>
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <script type="module" src="https://cdn.jsdelivr.net/npm/@duetds/date-picker@1.4.0/dist/duet/duet.esm.js"></script>
    <script nomodule src="https://cdn.jsdelivr.net/npm/@duetds/date-picker@1.4.0/dist/duet/duet.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@duetds/date-picker@1.4.0/dist/duet/themes/default.css"/>
    <%-- 위지윅을 위한 script src --%>
    <script src="https://cdn.ckeditor.com/ckeditor5/40.1.0/classic/ckeditor.js"></script>
    <%-- 달력위젯을 위한 script src --%>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
</head>
<body class="sb-nav-fixed">
<%@include file="../include/top_side_nav.jspf" %>
<div id="layoutSidenav_content">

    <!-- contents-area -->
    <div class="seller-content">
        <div id="productFormNavbar" class="seller-sub-title">
            <div class="pull-left">
                <h2 class="title">상품등록</h2>
            </div>
        </div>
        <div class="seller-sub-content">
            <div class="form-section">
                <div class="title-line" role="button">
                    <label class="col-sm-2 control-label">카테고리</label>
                    <div class="set-option">
                        <a href class="btn active"></a>
                    </div>
                </div>
                <div class="form-section-sub">
                    <div class="form-sub-wrap">
                        <span>대분류</span>
                        <select class="cate1">
                            <option selected value="none">선택</option>
                        </select>
                    </div>
                    <div class="form-sub-wrap">
                        <span>중분류</span>
                        <select class="cate2">
                            <option selected value="none">선택</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="form-section">
                <div class="title-line" role="button">
                    <label class="col-sm-2 control-label">상품명</label>
                    <div class="set-option">
                        <a href class="btn active"></a>
                    </div>
                </div>
                <div class="form-section-sub">
                    <div class="form-sub-wrap">
                        <div class="input-group">
                            <div class="seller-input-wrap">
                                <input name="product.name" type="text"
                                       class="form-control" maxlength="99"
                                       title="상품명 입력">
                            </div>
                            <span class="input-group-addon"><span class="text-primary">0</span>/100</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-section">
                <div class="title-line" role="button">
                    <label class="col-sm-2 control-label">판매가</label>
                    <div class="set-option">
                        <a href class="btn active"></a>
                    </div>
                </div>
                <div class="form-section-sub">
                    <div class="form-sub-wrap">
                        <label class="control-label">판매가</label>
                        <div class="input-content">
                            <div class="form-inline">
                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="seller-input-wrap">
                                            <input class="form-control" type="text" placeholder="숫자만 입력">
                                        </div>
                                        <span class="input-group-addon">원</span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <span class="text-sub">원</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-sub-wrap">
                        <label class="control-label">할인</label>
                        <div class="input-content">
                            <div class="seller-input-toggle">
                                <input type="radio" id="discount-choice-type-true"
                                       name="discount-choice-type" value="true">
                                <label for="discount-choice-type-true">설정함</label>
                                <input type="radio" id="discount-choice-type-false"
                                       name="discount-choice-type" value="false">
                                <label for="discount-choice-type-false">설정안함</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-sub-detail">
                        <div class="form-sub-detail-wrap">
                            <label class="control-label">기본할인</label>
                            <div class="input-content">
                                <div class="form-control-static">
                                    <span class="sub-text text-primary">판매가에서 즉시 할인이 가능하고 할인된 가격으로 상품을 판매할 수 있습니다.</span>
                                </div>
                                <div>
                                    <div class="form-inline">
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="seller-input-wrap">
                                                    <input class="form-control" type="text"
                                                           placeholder="판매가에서" max="99" min="0"
                                                           minlength="1" maxlength="2">
                                                </div>
                                                <span class="input-group-addon">%</span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <span class="text-sub">할인</span>
                                        </div>
                                    </div>
                                    <hr class="line">
                                    <div class="total-price">
                                        <label class="control-label">
                                            <span class="text info">할인가</span>
                                        </label>
                                        <div class="input-content">
                                            <p class="text-info text-price">
                                                <span>0 </span>
                                                <em>원</em> (0원 할인)
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-sub-wrap">
                        <label class="control-label">판매기간</label>
                        <div class="input-content">
                            <div class="seller-input-toggle">
                                <input type="radio" id="salePeriod-choice-type-true"
                                       name="salePeriod-choice-type" value="true">
                                <label for="salePeriod-choice-type-true">설정함</label>
                                <input type="radio" id="salePeriod-choice-type-false"
                                       name="salePeriod-choice-type" value="false">
                                <label for="salePeriod-choice-type-false">설정안함</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-sub-detail">
                        <div class="form-sub-detail-wrap">
                            <label class="control-label">기간설정</label>
                            <div class="input-content">
                                <div class="form-inline">
                                    <div class="form-group">
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-primary2">3일</button>
                                            <button type="button" class="btn btn-primary2">5일</button>
                                            <button type="button" class="btn btn-primary2">7일</button>
                                            <button type="button" class="btn btn-primary2">15일</button>
                                            <button type="button" class="btn btn-primary2">30일</button>
                                            <button type="button" class="btn btn-primary2">60일</button>
                                            <button type="button" class="btn btn-primary2">90일</button>
                                            <button type="button" class="btn btn-primary2">120일</button>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="seller-calendar">
                                            <div class="form-inline">
                                                <div class="form-group">
                                                    <div class="input-group">
                                                        <input type="text" class="form-control">
                                                        <span class="input-group-addon">
                                                            <a role="button" href></a>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="form-group dash">
                                                    <div class="input-group">
                                                        <span class="input-group-addon">~</span>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="input-group">
                                                        <input type="text" class="form-control">
                                                        <span class="input-group-addon">
                                                            <a role="button" href></a>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-section">
                <div class="title-line" role="button">
                    <label class="col-sm-2 control-label">재고수량</label>
                    <div class="set-option">
                        <a href class="btn active"></a>
                    </div>
                </div>
                <div class="form-section-sub">
                    <div class="form-sub-wrap">
                        <div class="input-content">
                            <div class="form-inline">
                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="seller-input-wrap">
                                            <input class="form-control" type="text" placeholder="숫자만 입력">
                                        </div>
                                        <span class="input-group-addon">개</span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <p class="sub-text text-primary mg-reset">옵션 재고수량을 사용하면, 옵션의 재고수량으로 적용되어
                                        자동으로 입력됩니다.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-section">
                <div class="title-line" role="button">
                    <label class="col-sm-2 control-label">옵션</label>
                    <div class="set-option">
                        <a href class="btn active"></a>
                    </div>
                </div>
                <div class="form-section-sub">
                    <div class="form-sub-wrap">
                        <label class="control-label">옵션 유무</label>
                        <div class="input-content">
                            <div class="seller-input-toggle">
                                <input type="radio" id="option-choice-type-true"
                                       name="option-choice-type" value="true">
                                <label for="option-choice-type-true">설정함</label>
                                <input type="radio" id="option-choice-type-false"
                                       name="option-choice-type" value="false">
                                <label for="option-choice-type-false">설정안함</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-sub-detail">
                        <div class="form-sub-detail-wrap">
                            <label class="control-label">옵션 입력</label>
                            <div class="input-content">
                                <div class="seller-option-input">
                                    <div class="option-wrap">
                                        <div class="col-sm-3">
                                            <label for="choice_option_name0">옵션명</label>
                                            <div class="seller-input-wrap">
                                                <input type="text" class="form-control" id="choice_option_name0"
                                                       placeholder="예시:컬러" maxlength="25">
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <label for="choice_option_value0">옵션값</label>
                                            <div class="seller-input-wrap">
                                                <input type="text" class="form-control" id="choice_option_value0"
                                                       placeholder="예시 : 빨강, 노랑(,로 구분)">
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <label class="hidden-xs"></label>
                                            <a role="button" href class="btn btn-default">
                                                <i class="seller-icon icon-minus"></i>
                                            </a>
                                            <a role="button" href class="btn btn-single">
                                                <i class="seller-icon icon-plus"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="option-wrap">
                                        <div class="col-sm-3">
                                            <a role="button" href class="btn btn-primary btn-block">
                                                옵션목록으로 적용 ↓
                                            </a>
                                        </div>
                                        <div class="col-sm-9"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-sub-detail-wrap seller-option-list">
                            <div class="form-inline">
                                <div class="form-group">
                                    <label class="control-label">옵션 목록</label>
                                </div>
                            </div>
                            <div class="col-sm-12 input-content">
                                <div class="clearfix">
                                    <div class="pull-left">
                                        <a role="button" href
                                           class="btn btn-default btn-sm">
                                            선택삭제
                                        </a>
                                    </div>
                                    <div class="pull-right">
                                        <div class="form-inline">
                                            <div class="form-group">
                                                옵션가
                                            </div>
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <div class="input-group-btn">
                                                        <button class="btn btn-default
                                                        btn-sm dropdown-toggle"
                                                        data-toggle="dropdown" type="button"
                                                        aria-expanded="false">+ <span class="caret"></span></button>
                                                    </div>
                                                    <div class="seller-input-wrap">
                                                        <input type="tel" class="form-control input-sm" maxlength="12">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">재고수량</div>
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <div class="seller-input-wrap">
                                                        <input type="tel" class="form-control input-sm" maxlength="12">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">사용여부</div>
                                            <div class="form-group"></div>
                                            <div class="form-group"></div>
                                            <div class="form-group"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="seller-grid-area" style="width: 100%; height: 300px">

                                </div>
                                <div class="btn-block"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-section">
                <div class="title-line" role="button">
                    <label class="col-sm-2 control-label">상품 이미지</label>
                    <div class="set-option">
                        <a href class="btn active"></a>
                    </div>
                </div>
                <div class="form-section-sub"></div>
            </div>
            <div class="form-section">
                <div class="title-line" role="button">
                    <label class="col-sm-2 control-label">상세설명</label>
                    <div class="set-option">
                        <a href class="btn active"></a>
                    </div>
                </div>
                <div class="form-section-sub"></div>
            </div>
            <div class="form-section">
                <div class="title-line" role="button">
                    <label class="col-sm-2 control-label">상품 주요정보</label>
                    <div class="set-option">
                        <a href class="btn active"></a>
                    </div>
                </div>
                <div class="form-section-sub"></div>
            </div>
            <div class="form-section">
                <div class="title-line" role="button">
                    <label class="col-sm-2 control-label">전시상태</label>
                    <div class="set-option">
                        <a href class="btn active"></a>
                    </div>
                </div>
                <div class="form-section-sub"></div>
            </div>
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

    // 제목을 눌렀을때 내용 칸이 드러나지는 이벤트
    $(document).ready(function () {
        $('.set-option').click(function (event) {
            // <a> 태그의 기본 동작 방지
            event.preventDefault();
            // 'active' 클래스 토글
            $(this).find('.btn').toggleClass('active');
            // 현재 클릭된 set-option의 다음 형제 요소(form-section-sub)를 찾아서 토글
            $(this).closest('.form-section').find('.form-section-sub').slideToggle();
        });
    });

    // 상품명 글자수 표시
    $(document).ready(function () {
        $('.form-control').on('input', function () {
            let textLength = $(this).val().length;
            $(this).closest('.input-group').find('.text-primary').text(textLength);
        });
    });

</script>
</body>
</html>
