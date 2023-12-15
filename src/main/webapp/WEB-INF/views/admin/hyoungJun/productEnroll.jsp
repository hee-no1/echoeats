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
    <link rel="stylesheet" href="/resources/css/admin/productEnroll.css">
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
    <form action="<c:url value='/admin/hyoungJun/productEnroll'/>" method="post" id="enrollForm" enctype="multipart/form-data">
<%--        <form action="<c:url value='/admin/hyoungJun/productEnroll'/>" method="post" enctype="multipart/form-data">--%>
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
                                        <input name="prod_name" type="text"
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
                                                    <input name="prod_price" class="form-control" placeholder="숫자만 입력">
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
                                                            <input id="discount-interface" class="form-control"
                                                                   placeholder="판매가에서" max="99" min="0"
                                                                   minlength="1" maxlength="2"
                                                                   value="0" name="disc_rate">
                                                            <input name="discount-rate" type="hidden" value="0">
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
                                                        <span class="span_discount" name="disc_price">0</span>
                                                        <em>원</em> (<span class="span_discounting">0</span> 할인)
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
                                               name="sales_sts" value="Y">
                                        <label for="salePeriod-choice-type-true">설정함</label>
                                        <input type="radio" id="salePeriod-choice-type-false"
                                               name="sales_sts" value="N">
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
                                                                <input name="sel_str_date" autocomplete="off"
                                                                       readonly="readonly" class="form-control">
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
                                                                <input name="sel_end_date" autocomplete="off"
                                                                       readonly="readonly" class="form-control">
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
                                                    <input name="prod_qty" class="form-control" type="text"
                                                           placeholder="숫자만 입력">
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
                                               name="is_opt" value="Y">
                                        <label for="option-choice-type-true">설정함</label>
                                        <input type="radio" id="option-choice-type-false"
                                               name="is_opt" value="N">
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
                                                        <input type="text" class="form-control"
                                                               id="choice_option_value0"
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
                                                                        aria-expanded="false">+ <span
                                                                        class="caret"></span>
                                                                </button>
                                                            </div>
                                                            <div class="seller-input-wrap">
                                                                <input type="tel" class="form-control input-sm"
                                                                       maxlength="12">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">재고수량</div>
                                                    <div class="form-group">
                                                        <div class="input-group">
                                                            <div class="seller-input-wrap">
                                                                <input type="tel" class="form-control input-sm"
                                                                       maxlength="12">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">사용여부</div>
                                                    <div class="form-group">
                                                        <div class="input-group">
                                                            <div class="input-group-btn">
                                                                <button class="btn btn-default
                                                        btn-sm dropdown-toggle"
                                                                        data-toggle="dropdown" type="button"
                                                                        aria-expanded="false">Y <span
                                                                        class="caret"></span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <a role="button" href class="btn btn-default2 btn-sm">선택목록
                                                            일괄수정</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="seller-grid-area ag-theme-fresh has-space-top"
                                             style="width:100%; height: 300px;">
                                            <table id="myTable">
                                                <thead>
                                                <tr>
                                                    <th><input type="checkbox" id="checkAll" checked>
                                                        <label for="checkAll"></label></th>
                                                    <th>옵션명</th>
                                                    <th>옵션가</th>
                                                    <th>재고수량</th>
                                                    <th>판매상태</th>
                                                    <th>사용여부</th>
                                                    <th>삭제</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td><input type="checkbox"></td>
                                                    <td><input type="text"></td>
                                                    <td><input type="text"></td>
                                                    <td><input type="text"></td>
                                                    <td><input type="text"></td>
                                                    <td><input type="text"></td>
                                                    <td>
                                                        <button class="deleteBtn">Delete</button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox"></td>
                                                    <td><input type="text"></td>
                                                    <td><input type="text"></td>
                                                    <td><input type="text"></td>
                                                    <td><input type="text"></td>
                                                    <td><input type="text"></td>
                                                    <td>
                                                        <button class="deleteBtn">Delete</button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox"></td>
                                                    <td><input type="text"></td>
                                                    <td><input type="text"></td>
                                                    <td><input type="text"></td>
                                                    <td><input type="text"></td>
                                                    <td><input type="text"></td>
                                                    <td>
                                                        <button class="deleteBtn">Delete</button>
                                                    </td>
                                                </tr>
                                                </tbody>
                                            </table>

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
                        <div class="form-section-sub">
                            <div class="form-sub-wrap" id="img-wrap-wrap">
                                <div class="input-content" id="img-wrap">
                                    <input type="file" id="fileItem" name="prod_img" style="height: 30px;"
                                           accept="image/jpg, image/jpeg, image/png, image/bmp"
                                            class="img-input" onchange="handleFiles(this.files)">
                                    <div id="upload-result">
                                        <div id="result-card">
                                            <div class="img-delete-btn"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-section">
                        <div class="title-line" role="button">
                            <label class="col-sm-2 control-label">소개글</label>
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
                                                <textarea name="short_desc" id="short_desc_textarea"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-section">
                        <div class="title-line" role="button">
                            <label class="col-sm-2 control-label">상세설명</label>
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
                                                <textarea name="long_desc" id="long_desc_textarea"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-section">
                        <div class="title-line" role="button">
                            <label class="col-sm-2 control-label">상품 주요정보</label>
                            <div class="set-option">
                                <a href class="btn active"></a>
                            </div>
                        </div>
                        <div class="form-section-sub">
                            <div class="form-sub-wrap">
                                <label class="control-label">브랜드</label>
                                <div class="input-content">
                                    <div class="form-inline">
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="brand-input-wrap">
                                                    <input name="brand" class="form-control" type="text"
                                                           placeholder="상품의 브랜드를 정확하게 입력해주세요.">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-sub-wrap">
                                <label class="control-label">원산지</label>
                                <div class="input-content">
                                    <div class="form-inline">
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="seller-input-wrap">
                                                    <input name="origin" class="form-control" type="text"
                                                           placeholder="ex) 국산 , 필리핀">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-sub-wrap">
                                <label class="control-label">배송 타입</label>
                                <div class="input-content">
                                    <div class="form-inline">
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="seller-input-wrap">
                                                    <input name="dlvy_type" class="form-control" type="text"
                                                           placeholder="ex) 샛별배송">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-sub-wrap">
                                <label class="control-label">판매자</label>
                                <div class="input-content">
                                    <div class="form-inline">
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="seller-input-wrap">
                                                    <input name="seller" class="form-control" type="text"
                                                           placeholder="ex) 컬리">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-sub-wrap">
                                <label class="control-label">포장타입</label>
                                <div class="input-content">
                                    <div class="form-inline">
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="seller-input-wrap">
                                                    <input name="pack_type" class="form-control" type="text"
                                                           placeholder="ex) 냉동 or 냉장">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-sub-wrap">
                                <label class="control-label">판매단위</label>
                                <div class="input-content">
                                    <div class="form-inline">
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="seller-input-wrap">
                                                    <input name="sales_unit" class="form-control" type="text"
                                                           placeholder="팩이면 1팩, 낱개면 1개">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-sub-wrap">
                                <label class="control-label">중량/용량</label>
                                <div class="input-content">
                                    <div class="form-inline">
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="seller-input-wrap">
                                                    <input name="weight" class="form-control" type="text"
                                                           placeholder="단위까지 정확하게 입력">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-sub-wrap">
                                <label class="control-label">유통기한</label>
                                <div class="input-content">
                                    <div class="form-inline">
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="seller-input-wrap">
                                                    <input name="exp_date" class="form-control"
                                                           autocomplete="off" readonly="readonly">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-sub-wrap">
                                <label class="control-label">안내사항</label>
                                <div class="input-content">
                                    <div class="form-inline">
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="seller-input-wrap">
                                                    <input name="as_guide" class="form-control" type="text"
                                                           placeholder="안내할 사항을 입력">
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
                            <label class="col-sm-2 control-label">전시상태</label>
                            <div class="set-option">
                                <a href class="btn active"></a>
                            </div>
                        </div>
                        <div class="form-section-sub">
                            <div class="form-sub-wrap">
                                <label class="control-label">전시상태</label>
                                <div class="input-content">
                                    <div class="seller-input-toggle">
                                        <input type="radio" id="display-choice-type-true"
                                               name="disp_sts" value="Y">
                                        <label for="display-choice-type-true">설정함</label>
                                        <input type="radio" id="display-choice-type-false"
                                               name="disp_sts" value="N">
                                        <label for="display-choice-type-false">설정안함</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="seller-btn-area btn-group-xlg">
                    <button type="button" class="btn btn-default" id="cancelBtn">취소</button>
                    <button type="submit" class="btn btn-primary">
                        <span class="content" id="enrollBtn">저장하기</span>
                    </button>
                </div>
            </div>
        </form>
<%--    </form>--%>
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
    /* 설정 */
    const config = {
        dateFormat: 'yy-mm-dd'
    }

    $(function () {
        $("input[name='sel_str_date']").datepicker(config);
    });

    $(function () {
        $("input[name='sel_end_date']").datepicker(config);
    });

    $(function () {
        $("input[name='exp_date']").datepicker(config);
    });

    let enrollForm = document.getElementById('enrollForm');

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
    $('#discount-interface').on("PropertyChange change keyup paste input", function () {
        let userInput = $('#discount-interface');
        let discountInput = $('input[name="discount-rate"]');

        // 사용자가 입력할 할인값
        let discountRate = userInput.val();
        // 서버에 전송할 할인값
        let sendDiscountRate = discountRate / 100;
        // 원래 가격
        let productPrice = $("input[name='prod_price']").val();
        // 할인된 가격
        let discountedPrice = Math.floor(productPrice * (1 - sendDiscountRate));
        // 할인 얼마나 됐는지
        let discountingPrice = productPrice - discountedPrice;

        $('.span_discount').html(discountedPrice);

        $('.span_discounting').html(discountingPrice);

        discountInput.val(sendDiscountRate);
    });

    // 가격을 다시 입력했을 때 할인된 가격이 바뀌는 이벤트
    $('input[name="prod_price"]').on("PropertyChange change keyup paste input", function () {
        let userInput = $('#discount-interface');
        let discountInput = $('input[name="discount-rate"]');

        // 사용자가 입력할 할인값
        let discountRate = userInput.val();
        // 서버에 전송할 할인값
        let sendDiscountRate = discountRate / 100;
        // 원래 가격
        let productPrice = $("input[name='prod_price']").val();
        // 할인된 가격
        let discountedPrice = Math.floor(productPrice * (1 - sendDiscountRate));
        // 할인 얼마나 됐는지
        let discountingPrice = productPrice - discountedPrice;

        $('.span_discount').html(discountedPrice);

        $('.span_discounting').html(discountingPrice);

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

    document.addEventListener('DOMContentLoaded', function () {
        document.getElementById('checkAll').addEventListener('change', function () {
            console.log('Checkbox state changed');
            let checkboxes = document.querySelectorAll('#myTable tbody input[type="checkbox"]');
            console.log(checkboxes);
            for (let checkbox of checkboxes) {
                checkbox.checked = this.checked;
                console.log(checkbox.checked = this.checked);
            }
        });
    });

    let table = document.getElementById('myTable');
    table.addEventListener('click', function (e) {
        if (e.target.classList.contains('deleteBtn')) {
            let row = e.target.closest('tr');
            table.deleteRow(row.rowIndex);
        }
    });

    /* 이미지 업로드 */
    $("input[type='file']").on("change", function (e) {

        let formData = new FormData();
        let fileInput = $('input[name="prod_img"]');
        let fileList = fileInput[0].files;
        let fileObj = fileList[0];

        if(!fileCheck(fileObj.name, fileObj.size)){
            return false;
        }

        formData.append("uploadFile", fileObj);

        $.ajax({
            url: '/admin/uploadAjaxAction',
            processData : false,
            contentType : false,
            data : formData,
            type : 'POST',
            dataType : 'json'
        });

    });

    let regex = new RegExp("(.*?)\.(jpg|png|jpeg)$");
    let maxSize = 1048576; //1MB

    function fileCheck(fileName, fileSize){

        if(fileSize >= maxSize){
            alert("파일 사이즈 초과");
            return false;
        }

        if(!regex.test(fileName)){
            alert("해당 종류의 파일은 업로드할 수 없습니다.");
            return false;
        }

        return true;

    }

    let formData = new FormData();

    function handleFiles(files) { // files를 핸들링한다
        let list = $('#img-wrap-wrap'); // id가 img-wrap-wrap인 모든 요소를 선택하고 변수 list에 저장한다.
        let last = $('#img-wrap'); // id가 img-wrap인 모든 요소를 선택하고 변수 last에 저장한다.
        for (let i = 0; i < files.length; i++) { // files의 길이만큼 반복한다.

            // 클래스 이름이 css-o4030c e5xt3dr1인 div태그를 생성한다.
            const div = $('<div>', {
                class: 'css-o4030c e5xt3dr1',
            });

            // 클래스 이름이 css-idj2s4 e5xt3dr4인 img태그를 생성하고 src에 window.URL.createObjectURL(files[i])를 저장
            const img = $('<img>', {
                src: window.URL.createObjectURL(files[i]),
                class: 'css-idj2s4 e5xt3dr4',
            });

            // img 변수에 'file'이란 이름을 가진 key값을 주고 files값을 각각 저장한다.
            img.data('file', files[i]);

            // revokeObjectURL메서드가 URL.createObjectURL(files[i])으로 생성된 URL을 해제하고
            // this.src는 현재 이미지 요소의 'src'속성을 참조한다.
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

</script>
</body>
</html>
