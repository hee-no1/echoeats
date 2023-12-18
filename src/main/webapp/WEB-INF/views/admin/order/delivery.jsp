<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>orderList</title>
    <!-- <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" /> -->
    <link href="<c:url value='/resources/common/css/styles.css' />" rel="stylesheet" />
    <link href="<c:url value='/resources/admin/order/css/delivery.css' />" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <script type="module" src="https://cdn.jsdelivr.net/npm/@duetds/date-picker@1.4.0/dist/duet/duet.esm.js"></script>
    <script nomodule src="https://cdn.jsdelivr.net/npm/@duetds/date-picker@1.4.0/dist/duet/duet.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@duetds/date-picker@1.4.0/dist/duet/themes/default.css" />
    <script>
        <%--$(function(){--%>
        <%--    $('.start_date').val(fullDate(0));--%>
        <%--    $('.end_date').val(fullDate(0));--%>
        <%--    $('select[name=rows]').val('${ph.sc.pageSize}');--%>

        <%--    SearchCondition();--%>

        <%--    $('.btnPrep').click(function(){--%>
        <%--        let code = $(this).data('code_name');--%>
        <%--        let cnt = 0;--%>
        <%--        $('input.allChk').each(function(){--%>

        <%--            if($(this).data('chk')){--%>
        <%--                cnt++;--%>
        <%--                let id = $(this).closest('td').data('id');--%>
        <%--                let cd = $(this).closest('td').data('code');--%>
        <%--                if(code === cd){--%>
        <%--                    alert("[주문상세번호]:"+id+"\n상태가 같습니다");--%>
        <%--                    return false;--%>
        <%--                }--%>
        <%--                if(code === 'DELIVERY_PREPARING'){--%>
        <%--                    let real_prod_qty = parseInt($(this).closest('tr').find('.real_prod_qty').text(),10);--%>
        <%--                    let prod_qty = parseInt ($(this).closest('tr').find('.prod_qty').text(),10);--%>

        <%--                    if(real_prod_qty < prod_qty ){--%>
        <%--                        alert("재고가 부족합니다\n(재고수량:"+real_prod_qty+",주문수량:"+prod_qty+")");--%>
        <%--                        return false;--%>
        <%--                    }--%>
        <%--                }--%>

        <%--                $.ajax({--%>
        <%--                    type:'PATCH',--%>
        <%--                    url:"/admin/orderDetail/modify?ord_det_id="+id+"&code_name="+code,--%>
        <%--                    success:function(result){--%>
        <%--                        console.log('orderDetail modefiy ok:', result);--%>
        <%--                        location.reload();--%>
        <%--                    },--%>
        <%--                    error:function(error){--%>
        <%--                        console.error('orderDetail modefiy error:', error);--%>
        <%--                    },--%>
        <%--                });--%>
        <%--            }--%>
        <%--        });--%>
        <%--        if(cnt ==0)--%>
        <%--            alert("변경할 데이터를 선택해 주세요");--%>
        <%--    });--%>

        <%--    $('input.allChk').click(function(){--%>

        <%--        let all = $(this).hasClass('all');--%>
        <%--        let v = $(this).data('chk');--%>
        <%--        if(!all){--%>
        <%--            if(v)--%>
        <%--                $(this).css('background-position', '0 0');--%>
        <%--            else--%>
        <%--                $(this).css('background-position', '-50px 0');--%>
        <%--            $(this).data('chk', !v);--%>
        <%--        }else{--%>
        <%--            if(v)--%>
        <%--                $('input.allChk').css('background-position', '0 0');--%>
        <%--            else--%>
        <%--                $('input.allChk').css('background-position', '-50px 0');--%>
        <%--            $('input.allChk').data('chk', !v);--%>
        <%--        }--%>

        <%--    });--%>

        <%--    $('select[name=rows]').change(function(){--%>
        <%--        const ps = $('select[name=rows]').val();--%>
        <%--        &lt;%&ndash;location.href = "/admin/orderDetail/list${ph.sc.queryStringWithoutPS}&pageSize="+ps;&ndash;%&gt;--%>
        <%--    });--%>

        <%--    $('.btnDate').click(function(e) {--%>
        <%--        e.preventDefault();--%>
        <%--        $('.btnDate').removeClass('selected');--%>
        <%--        $(this).addClass('selected');--%>

        <%--        let interval = e.target.closest('a.btnDate').getAttribute('date-interval');--%>

        <%--        $('.start_date').val(fullDate(-interval));--%>
        <%--        $('.end_date').val(fullDate(0));--%>
        <%--    });--%>

        <%--    $('#search_button').click(function(e){--%>
        <%--        e.preventDefault();--%>
        <%--        if($('select[name=keyword_type]').val()=='choice'){--%>
        <%--            alert("검색어 항목을 선택해주세요.")--%>
        <%--            return;--%>
        <%--        }--%>
        <%--        $('.optionArea').submit();--%>
        <%--    });--%>

        <%--    $('.duet-date-picker-grid').click(function(e){--%>
        <%--        $('.btnDate').removeClass('selected');--%>
        <%--    });--%>
        <%--});--%>
        <%--const SearchCondition = () => {--%>
        <%--    if('${ph.sc.date_type}'!=''){--%>
        <%--        $('select[name=date_type]').val('${ph.sc.date_type}').prop("selected", true);--%>
        <%--    }--%>
        <%--    if('${ph.sc.keyword_type}'!=''){--%>
        <%--        $('select[name=keyword_type]').val('${ph.sc.keyword_type}').prop("selected", true);--%>
        <%--    }--%>
        <%--    if('${ph.sc.keyword}'!=''){--%>
        <%--        $('input[name=keyword]').val('${ph.sc.keyword}');--%>
        <%--    }--%>
        <%--    if('${ph.sc.start_date}'!=''){--%>
        <%--        const startDate = "<fmt:formatDate value='${ph.sc.start_date}' pattern='yyyy-MM-dd' type='date'/>";--%>
        <%--        $('duet-date-picker[name=start_date]').val(startDate);--%>
        <%--    }--%>
        <%--    if('${ph.sc.end_date}'!=''){--%>
        <%--        const endtDate = "<fmt:formatDate value='${ph.sc.end_date}' pattern='yyyy-MM-dd' type='date'/>";--%>
        <%--        $('duet-date-picker[name=end_date]').val(endtDate);--%>
        <%--    }--%>
        <%--}--%>

        // const fullDate = (d) => {
        //     const today = new Date();
        //     today.setDate(today.getDate() + d);
        //     const day = today.getDate();
        //     const month = today.getMonth() + 1;
        //     const year = today.getFullYear();
        //     return year + "-" + (month < 10 ? "0" + month : month) + "-" + (day < 10 ? "0" + day : day);
        // }
    </script>
    <style>
        .pagination, .datatable-pagination ul {
            --bs-pagination-padding-x: 0.75rem;
            --bs-pagination-padding-y: 0.375rem;
            --bs-pagination-font-size: 1rem;
            --bs-pagination-color: #6c757d;
            --bs-pagination-bg: #fff;
            --bs-pagination-border-width: 1px;
            --bs-pagination-border-color: #dee2e6;
            --bs-pagination-border-radius: 0.375rem;
            --bs-pagination-hover-color: #1b1e26;
            --bs-pagination-hover-bg: #e9ecef;
            --bs-pagination-hover-border-color: #dee2e6;
            --bs-pagination-focus-color: #1b1e26;
            --bs-pagination-focus-bg: #e9ecef;
            --bs-pagination-focus-box-shadow: 0 0 0 0.25rem rgba(13, 110, 253, 0.25);
            --bs-pagination-active-color: #fff;
            --bs-pagination-active-bg: #1b1e26;
            --bs-pagination-active-border-color: #1b1e26;
            --bs-pagination-disabled-color: #6c757d;
            --bs-pagination-disabled-bg: #fff;
            --bs-pagination-disabled-border-color: #dee2e6;
            display: flex;
            padding-left: 0;
            list-style: none;
        }
        .page-item .page-link {
            font-size: 12px;
        }
    </style>
</head>
<body class="sb-nav-fixed">
<%@include file="../include/top_side_nav.jspf" %>
<div id="layoutSidenav_content">
    <div class="container">
        <h2 class="mTitle">전체 배송 조회</h2>
        <form action="<c:url value=''/>" class="optionArea" method="get">
            <div class="mOption">
                <table border="1">
                    <colgroup>
                        <col style="width:170px">
                        <col style="width:600px">
                        <col style="width:170px">
                        <col style="width:auto">
                    </colgroup>
                    <tbody>
                    <tr>
                        <th scope="row">기간</th>
                        <td colspan="3">
                            <select name="date_type" style="width:115px;" class="fSelect disabled">
<%--                                <c:forEach var="ct" items="${dtList}">--%>
<%--                                    <option value="${ct.code_name}">${ct.column_sts}</option>--%>
<%--                                </c:forEach>--%>
                            </select>
<%--                            <c:forEach var="ct" items="${diList}">--%>
<%--                                <a href="#none" class="btnDate" date-interval="${ct.code_name}"><span>${ct.column_sts}</span></a>--%>
<%--                            </c:forEach>--%>
                            <div class="duet-date-picker-grid  duet-date-theme-ec-new  sun">
                                <duet-date-picker first-day-of-week="0" name="start_date" identifier="startDate"
                                                  class="duet-date-picker start hydrated changePicker start_date" ></duet-date-picker>
                                <span>~</span>
                                <duet-date-picker first-day-of-week="0" name="end_date" identifier="endDate"
                                                  class="duet-date-picker end hydrated changePicker end_date" direction="left"></duet-date-picker>
                            </div>

                        </td>
                    </tr>
                    <tr>
                        <th scope="row">검색어</th>
                        <td colspan="3">
                            <div id="mainSearch">
                                <div class="keywordSearchSelect">
                                    <select class="fSelect" name="keyword_type" style="width:163px;">
<%--                                        <c:forEach var="ct" items="${ksList}">--%>
<%--                                            <option value="${ct.code_name}">${ct.column_sts}</option>--%>
<%--                                        </c:forEach>--%>
                                    </select>
                                    <input type="text" class="fText sBaseSearchBox eSearchText" name="keyword"
                                           id="sBaseSearchBox" style="width:400px;" placeholder="검색어를 입력해 주세요">
                                    <a href="#none" class="btnIcon icoPlus"><span>추가</span></a>

                                </div>
                            </div>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>

            <div class="mOptionToogle">
                <div class="ctrl" style="float:right;position:relative;">
                    <span class=""><button type="button" class="eOrdToogle" textopen="상세검색 열기" textclose="상세검색 닫기">상세검색 열기</button></span>
                </div>
            </div>
            <div class="mButton gCenter">
                <a href="#none" id="search_button" class="btnSearch"><span>검색</span></a>
                <a href="#none" id="eSaveSearchForm" class="btnSearch save"><span>검색 조건 저장</span></a>
                <a href="#none" id="eBtnInit" class="btnSearch reset"><span>초기화</span></a>
            </div>
        </form> <!--option -->
        <div id="tabNumber" class="tabCont">
            <div class="mState typeHeader">
                <div class="gLeft">
                    <div class="total">검색결과 : <strong><!--$ph.totalCnt}--></strong>건
                    </div>
                </div>
            </div>
            <div class="mCtrl typeHeader">
                <div class="gTop">
                    <input type="button" data-status="eShipStartBtn" id="deliveringBtn"
                       class="btnCtrl btnPrep" data-code_name="DELIVERING" value="배송중 처리">
                    <input type="button" data-status="eSaveAllInvoiceNo" id="deliveryCompleteBtn"
                       class="btnNormal btnPrep" data-code_name="DELIVERY_COMPLETE" value="배송완료 처리">
                </div>
            </div>
            <div class="mCtrl typeSetting setting">
                <div class="gLeft"></div>
                <div class="gRight">
                    <label><input type="checkbox" id="eResponseInfo" class="fChk"> 수령자 정보 표시</label>
                    <select name="searchSorting" class="fSelect">
                        <option value="order_asc" selected="">주문일순</option>
                        <option value="order_desc">주문일역순</option>
                        <option value="settle_price_asc">총 실결제금액순</option>
                        <option value="settle_price_desc">총 실결제금액역순</option>
                    </select>
                    <select name="rows" class="fSelect">
                        <option value="10">10개씩보기</option>
                        <option value="20">20개씩보기</option>
                        <option value="30">30개씩보기</option>
                        <option value="50">50개씩보기</option>
                        <option value="100">100개씩보기</option>
                        <option value="200">200개씩보기</option>
                        <option value="300">300개씩보기</option>
                        <option value="500">500개씩보기</option>
                    </select>
                </div>
                <div class="gSetting">
                    <div class="mOpen">
                        <a href="#listSubject" class="btnSetting eOpenClick"><span>설정</span></a>
                    </div>
                </div>

            </div>
            <div id="searchResultList" class="mBoard typeOrder typeList gScroll gCellSingle">
                <table border="1" summary="" class="thead">
                    <caption>전체주문 조회 목록</caption>
                    <tbody>
                    <tr>
                        <th scope="col" class="w24"><input type="checkbox" class="allChk all"></th>
                        <th scope="col" class="w120" style="">상품주문번호</th>
                        <th scope="col" class="w120" style="">주문번호</th>
                        <th scope="col" class="w100" style="">주문자</th>
                        <th scope="col" class="w120" style="">택배사</th>
                        <th scope="col" class="w210" style="">상품명</th>
                        <th scope="col" class="w75" style="">포장타입</th>
                        <th scope="col" class="w200" style="">운송장번호</th>
                        <th scope="col" class="w190" style="">배송상태</th>
                        <th scope="col" class="w140" style="">배송시작일</th>
                        <th scope="col" class="w140" style="">베송완료일</th>
                        <th scope="col" class="w80" style="">배송속성</th>
                    </tr>
                    </tbody>
                </table>
                <table border="1">
                    <c:if test="${not empty list}">
                        <tbody>
                    <c:forEach var="item" items="${list}">
                        <tr>
                            <td scope="col" class="w24" data-id="${item.ord_det_id}" >
                                <input type="checkbox" name="dlvyChk" class="allChk" data-id="${item.ord_det_id}" data-packtype="${item.pack_type}" data-status="${item.code_name}"></td> <!-- dataset속성은 소문자로만-->
                            <td scope="col" class="w120" style="">${item.ord_det_id}</td>
                            <td scope="col" class="w120" style="">${item.ord_id}</td>
                            <td scope="col" class="w100" style="">${item.mem_name}</td>
                            <td scope="col" class="w120" style="">에코딜리버리</td>
                            <td scope="col" class="w210" style="">${item.prod_name}</td>
                            <td scope="col" class="w75 packType" style="">${item.pack_type}</td>
                            <td scope="col" class="w200" style=""> <!--운송장번호-->
<%--                                <c:if test="${}">--%>
                                <input type="text" placeholder="숫자 12자리를 입력해주세요." class="w180 waybillnum" oninput="updateValue(this)">
<%--                                </c:if>--%>
                            </td>
                            <td scope="col" class="w190" style="">${item.code_name}</td>
                            <td class="w140" style=""><fmt:formatDate value="${dto.dlvy_start_date}" pattern="yyyy-MM-dd" type="date"/>
                                (<fmt:formatDate value='${dto.dlvy_start_date}' pattern='HH:mm' type='time'/>)</td>
                            <td class="w140" style=""><fmt:formatDate value="${dto.dlvy_cmplt_date}" pattern="yyyy-MM-dd" type="date"/>
                                (<fmt:formatDate value='${dto.dlvy_cmplt_date}' pattern='HH:mm' type='time'/>)</td>
                            <td scope="col" class="w80" style="">${item.dlvy_attr}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                    </c:if>
                    <c:if test="${empty list}">
                        <tbody class="empty">
                        <tr>
                            <td colspan="15">검색된 주문내역이 없습니다.</td>
                        </tr>
                        </tbody>
                    </c:if>
                </table>

            </div>
            <div class="mPaginate d-flex justify-content-center" style="width: 1000px;">
                <ul class="pagination">
<%--                    <c:if test="${ph.totalCnt!=null && ph.totalCnt!=0}">--%>
<%--                        <c:if test="${ph.showPrev}">--%>
<%--                            <li class="page-item">--%>
<%--                                <a class="page-link" href="<c:url value="/admin/orderDetail/list${ph.sc.getQueryString(ph.beginPage-1)}"/>">&lt;</a>--%>
<%--                            </li>--%>
<%--                        </c:if>--%>
<%--                        <c:forEach var="i" begin="${ph.beginPage}" end="${ph.endPage}">--%>
<%--                            <li class='page-item ${i==ph.sc.page? "active" : ""}'><a class="page-link" href="<c:url value="/admin/orderDetail/list${ph.sc.getQueryString(i)}"/>">${i}</a></li>--%>
<%--                        </c:forEach>--%>
<%--                        <c:if test="${ph.showNext}">--%>
<%--                            <li class="page-item">--%>
<%--                                <a class="page-link" href="<c:url value="/admin/orderDetail/list${ph.sc.getQueryString(ph.endPage+1)}"/>">&gt;</a>--%>
<%--                            </li>--%>
<%--                        </c:if>--%>
<%--                    </c:if>--%>
                </ul>
            </div>
        </div>
    </div> <!-- context -->

    <footer class="py-4 bg-light mt-auto">
        <div class="container-fluid px-4">
            <div class="d-flex align-items-center justify-content-between small">
                <div class="text-muted">Copyright &copy; Your Website 2023</div>
                <div>
                    <a href="#">Privacy Policy</a>
                    &middot;
                    <a href="#">Terms &amp; Conditions</a>
                </div>
            </div>
        </div>
    </footer>
</div>
</div>
<script>
    const pickers = document.querySelectorAll(".duet-date-picker")
    pickers.forEach(picker => {
        picker.localization = {
            dayNames: [
                "일", "월", "화", "수",
                "목", "금", "토"
            ],
            monthNames: [
                "1월", "2월", "3월", "4월",
                "5월", "6월", "7월", "8월",
                "9월", "10월", "11월", "12월"
            ],
            monthNamesShort: [
                "1월", "2월", "3월", "4월",
                "5월", "6월", "7월", "8월",
                "9월", "10월", "11월", "12월"
            ],
            locale: "ko-KR",
        }
    });

</script>
<script src="/resources/admin/order/js/delivery.js"></script>
</body>
</html>
