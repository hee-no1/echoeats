<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>에코잇츠</title>
    <link rel="stylesheet" href="/resources/product/css/header-css.css">
    <link rel="stylesheet" href="/resources/product/css/footer.css">
    <link rel="stylesheet" href="/resources/order/css/mypageOrder.css">
    <link rel="stylesheet" href="/resources/css/board/review.css">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <style>
        /*데이터없을경우*/
        .noData {
            padding-top: 50px;
        }
        #fillbtn {
            background-color: #692498;
            color: white;
            width: 200px;
            height: 56px;
        }
        .modal {
            display: none;
        }
    </style>
</head>

<body>
<header>
    <%@ include file="../include/header.jspf" %>
</header>
<!-- 마이페이지네비메뉴 -->
<%--<%@include file="../include/mypageOrder_Include.jsp" %>--%>
<div class = "css-2b29tl">
    <div class = "css-1jgbowa epggjnz4">
        <div class = "css-1oynwoh epggjnz3">
            <div class = "css-1nmq3i1 epggjnz2">
                <div class = "css-zjik7">
                    <div class = "welcome">웰컴</div>
                    <div class = "css-38n0u7">
                        <strong class = "name">
                            이희원님
                        </strong>
                        <div class = "css-70qvj9">
                            <button class = "css-rlyyl8">다음 달 등급 확인</button>
                            <span class = "css-i9bkc4"></span>
                            <button class = css-rlyyl8>전체 등급 확인</button>
                        </div>
                    </div>
                </div>

                <div class = "css-1rqh7gg">
                    <p class = "css-1nwlk71">적립 5%</p>
                    <p class = "css-1nwlk71">최소 1회 무료배송</p>
                    <a href="/member/membership" class="css-1qcjshh">
                            <span class="css-1fid7vq">
                                <span class="css-3a5cil">NEW</span>
                                <span class="css-1kxzrwz">컬리멤버스</span>
                                <span class="css-10yg44e">월 1,900원으로 10배 쿠폰 받기</span>
                            </span>
                    </a>
                </div>
            </div>


            <div class="css-1jemrvf epggjnz1">
                <div class="css-1lomzjv epggjnz0">
                    <button class="css-1bm0yf4 e1ugk4rt6">
                        <div class="css-157zkrj e1ugk4rt5">적립금 · 컬리캐시
                            <span class="css-14phxgn e1ugk4rt4"></span>
                        </div>
                        <div class="css-1omzzwx e1ugk4rt3">바로가기
                            <span class="css-mmvz9h e1ugk4rt0"></span>
                        </div>
                    </button>
                </div>
                <div class="css-1lomzjv epggjnz0">
                    <button class="css-1bm0yf4 e1ugk4rt6">
                        <div class="css-157zkrj e1ugk4rt5">쿠폰
                            <span class="css-14phxgn e1ugk4rt4"></span>
                        </div>
                        <div class="css-1omzzwx e1ugk4rt3">0
                            <span class="css-mmvz9h e1ugk4rt0">개</span>
                        </div>
                    </button>
                </div>
                <div class="css-1lomzjv epggjnz0">
                    <button class="css-1bm0yf4 e1ugk4rt6">
                        <div class="css-157zkrj e1ugk4rt5">나의 컬리 스타일
                            <span class="css-14phxgn e1ugk4rt4"></span>
                        </div>
                        <div class="css-1omzzwx e1ugk4rt3">등록하기
                        </div>
                    </button>
                </div>
            </div>


            <div class="css-1jemrvf epggjnz1">
                <div class="css-1lomzjv epggjnz0">
                    <button class="css-13d66fq e1ugk4rt6">
                        <div class="css-157zkrj e1ugk4rt5">컬리 퍼플 박스
                            <span class="css-14phxgn e1ugk4rt4"></span>
                        </div>
                        <div class="css-17cmttl e1ugk4rt3">알아보기</div>
                    </button>
                </div>
                <div class="css-1lomzjv epggjnz0">
                    <button class="css-13d66fq e1ugk4rt6">
                        <div class="css-157zkrj e1ugk4rt5">컬리멤버스
                            <span class="css-14phxgn e1ugk4rt4"></span>
                        </div>
                        <div class="css-17cmttl e1ugk4rt3">혜택받기</div>
                    </button>
                </div>
            </div>
        </div>
        <a href="https://www.kurly.com/m2/event/kurlyEventV2.php?lego=event/2023/0911/join/coupon" class="css-1khmcew eyulecr1">
            <img src="https://product-image.kurly.com/banner/da-banner/55b64dac-7373-4bb5-b44d-7a2eecde375a.jpg" alt="230713 신규1만원 쿠폰 웰컴 PC" class="css-1th0ley eyulecr0">
        </a>
    </div>


    <div class="css-luwwab eug5r8l1">
        <div class="css-833hqy ecbxmj3">
            <div class="css-1v4whg ecbxmj2">마이컬리</div>
            <ul class="css-1x9bshx ecbxmj1">
                <li>
                    <a class="active css-g4g0eu ecbxmj0">주문내역
                        <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
                            <defs>
                                <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
                            </defs>
                            <g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                                <use stroke="#5f0080" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use>
                            </g></g></g></g></g>
                        </svg>
                    </a>
                </li>

                <li>
                    <a class=" css-g4g0eu ecbxmj0">선물내역
                        <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
                            <defs>
                                <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
                            </defs>
                            <g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                                <use stroke="#999" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use>
                            </g></g></g></g></g>
                        </svg>
                    </a>
                </li>

                <li>
                    <a class=" css-g4g0eu ecbxmj0">찜한상품
                        <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
                            <defs>
                                <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
                            </defs>
                            <g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                                <use stroke="#999" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use>
                            </g></g></g></g></g>
                        </svg>
                    </a>
                </li>

                <li>
                    <a class=" css-g4g0eu ecbxmj0">배송지 관리
                        <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
                            <defs>
                                <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
                            </defs>
                            <g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                                <use stroke="#999" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use>
                            </g></g></g></g></g>
                        </svg>
                    </a>
                </li>

                <li>
                    <a class=" css-g4g0eu ecbxmj0">상품후기
                        <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
                            <defs>
                                <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
                            </defs>
                            <g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                                <use stroke="#999" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use>
                            </g></g></g></g></g>
                        </svg>
                    </a>
                </li>

                <li>
                    <a class=" css-g4g0eu ecbxmj0">결제수단 · 컬리페이
                        <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
                            <defs>
                                <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
                            </defs>
                            <g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                                <use stroke="#999" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use>
                            </g></g></g></g></g>
                        </svg>
                    </a>
                </li>

                <li>
                    <a href="/mypage/myqna" class=" css-g4g0eu ecbxmj0">상품 문의
                        <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
                            <defs>
                                <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
                            </defs>
                            <g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                                <use stroke="#999" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use>
                            </g></g></g></g></g>
                        </svg>
                    </a>
                </li>

                <li>
                    <a class=" css-g4g0eu ecbxmj0">적립금 · 컬리캐시
                        <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
                            <defs>
                                <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
                            </defs>
                            <g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                                <use stroke="#999" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use>
                            </g></g></g></g></g>
                        </svg>
                    </a>
                </li>

                <li>
                    <a class=" css-g4g0eu ecbxmj0">쿠폰
                        <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
                            <defs>
                                <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
                            </defs>
                            <g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                                <use stroke="#999" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use>
                            </g></g></g></g></g>
                        </svg>
                    </a>
                </li>

                <li>
                    <a class=" css-g4g0eu ecbxmj0">나의 컬리 스타일
                        <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
                            <defs>
                                <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
                            </defs>
                            <g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                                <use stroke="#999" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use>
                            </g></g></g></g></g>
                        </svg>
                    </a>
                </li>

                <li>
                    <a class=" css-g4g0eu ecbxmj0">개인 정보 수정
                        <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
                            <defs>
                                <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
                            </defs>
                            <g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                                <use stroke="#999" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use>
                            </g></g></g></g></g>
                        </svg>
                    </a>
                </li>
            </ul>

            <a href="/mypage/inquiry/list" class="css-196gwz9 e19l01ug3">
                <div class="css-rmee6s e19l01ug2">
                    <span class="css-1sdidca e19l01ug1">도움이 필요하신가요 ?</span>
                    <span class="css-rnnx2x e19l01ug0">1:1 문의하기</span>
                </div>
                <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
                    <defs>
                        <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
                    </defs>
                    <g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                        <use stroke="#333" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use>
                    </g></g></g></g></g>
                </svg>
            </a>
        </div>

        <div class="css-171zbec eug5r8l0 content">
            <div class="col-sm-6">
                <div class="mypage-top3">
                    <div>
                        <div id="category-name" style="display: inline-block; margin-bottom: 9px;">
                            <h4 style="margin-right: 20px;">상품후기</h4>
                        </div>
                        <div>
                            <ul class="menuInfoList">
                                <li class="menuInfo">상품에 대한 후기를 남기는 공간입니다.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- 내용 -->
                <div class="mypage-top4">
                    <!-- 버튼 메뉴 영역 -->
                    <div role="tablist" aria-orientation="horizontal" class="d-flex align-content-between" data-reach-tab-list="">
                        <button class="reviewBtn chk " id="beforeWrite" type="button">작성 가능 후기</button>
                        <button class="reviewBtn chk " id="written" type="button">작성한 후기</button>
                    </div>
                    <!-- 작성가능 후기 영역 (tab1)-->
                    <div class="beforeWriteArea hide">
                        <div class="d-flex align-content-lg-between" style="padding:10px 0px; border-bottom: 1px solid black;">
                            <div style="width: 780px; font-weight: bold;">총 <span id="reviewCnt"></span>개</div>
                            <div style="float: right; color: #666666; font-size: small; margin-top: 5px; font-weight: bold;"><a>작성시 유의사항<i class="bi-question-circle"></i></a></div> <!--클릭시 모달창-->
                        </div>
                        <div id="reviewArea">
                            <!-- 작성가능 후기 -->
                        </div>
                    </div> <!-- beforeWriteArea -->
                    <!-- !!!작성한 후기 영역(tab2) -->
                    <div class="writtenArea hide">
                        <div class="d-flex align-content-lg-between" style="padding:10px 0px; border-bottom: 1px solid black;">
                            <div style="width: 780px; font-weight: bold;">총 <span id="writeReviewCnt"></span>개</div>
                            <div style="float: right; color: #666666; font-size: small; margin-top: 5px; font-weight: bold;"><a>작성시 유의사항<i class="bi-question-circle"></i></a></div> <!--클릭시 모달창-->
                        </div>
                        <div id="writeReviewArea">
                            <!-- 작성한 후기 -->
                        </div><!-- writeReviewArea 반복종료 -->
                    </div> <!-- writtenArea 닫힘 -->
                </div>	   <!-- mypage-top4 -->
            </div> <!-- col-sm-6 -->
        </div>
    </div>
    <!-- 마이페이지 콘텐츠 영역 -->

</div>
<script>
    $(function() {
        // 작성가능후기 + 작성한후기 구분
        let beforeWriteArea = document.querySelector('.beforeWriteArea');
        let writtenArea = document.querySelector('.writtenArea');
        console.log("before writeArea" + beforeWriteArea);
        beforeWriteArea.classList.remove('hide');
        writtenArea.classList.add('hide');

        // 작성가능후기, 작성한후기 버튼 속성지정
        $('#beforeWrite').attr('style', "border-bottom:none; color: #00C73C");
        $('#written').attr('style', "background-color: #00C73C");

        var reviewInfo = {
            <%--mem_id : ${loginMember.get ~~},--%>
            mem_id: 'user123',
            reviewStatus: 'N'
        }
        console.log("reviewInfo: " + reviewInfo.mem_id);
        showBeforeWrite(reviewInfo);

        // 작성 가능한 리뷰
        $('#beforeWrite').click(function() {
            console.log("작성 가능한리뷰 클릭");
            beforeWriteArea.classList.remove('hide'); // 보이기
            writtenArea.classList.add('hide');  // 숨김
            $('#beforeWrite').attr('style', "border-bottom:none; color:  #00C73C");
            $('#written').attr('style', "background-color:  #00C73C");
            var reviewInfo = {
                mem_id: 'user123',
                reviewStatus : 'N'
            }
            console.log("reviewInfo :" + reviewInfo.mem_id)
            showBeforeWrite(reviewInfo);
        });

        function showBeforeWrite(reviewInfo) {
            $.ajax({
                type: "POST",
                data: JSON.stringify(reviewInfo),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                url: "/mypage1/getMemberReview",
                success: function(data) {
                    console.log("리뷰목록 불러오기");
                    console.log(data);

                    let htmlTag = "";
                    let reviewCnt = data.length;
                    console.log("작성 가능한 리뷰 개수 :" + reviewCnt);

                    if(data.length == 0) {
                        console.log("작성 가능한 리뷰가 없습니다");
                        htmlTag += '<div class="orderList">';
                        htmlTag += '<div class="text-center noData "><h4><b>작성 가능한 리뷰가 없습니다.</b></h4>';
                        htmlTag += '<br>';
                        htmlTag += '</div>';
                        htmlTag += '</div>';
                    } else {
                        $.each(data, function(index, reviewList){
                            htmlTag += '<div class="reviewGrp">';
                            htmlTag += '<div class="review-container" id="review" style="">';
                            htmlTag += '<div id="reviewContent">';
                            htmlTag += '<li class="d-flex inquiryPro-row" style="padding: 20px;">';
                            htmlTag +=      '<div class="pro_img"><img src="${pageContext.request.contextPath }/resources/images/'+ reviewList.thumOriFilename +'" style="width: 60px; height: 60px; border-radius: 5px;"></div>';
                            htmlTag += 		'<div class="pro_title" style="width: 560px; text-align: left;padding-left:20px" >';
                            htmlTag += 		'<div class="pro_name font-weight-bold">'+ reviewList.prod_name + '</div>';
                            htmlTag += 		'<div class="">' + reviewList.deliveryStatus + '</div>';
                            htmlTag += '</div>';
                            htmlTag += '<div class="review-deadline minusPoint" style="width: 135px; margin-top: 20px; margin-right:20px;"></div>';
                            htmlTag += '<div class="write_review" style="margin-top: 13px;">';
                            htmlTag += '<button type="button" class="trigger btn font-weight-bold" id = "writeReviewBtn" data-toggle="modal" data-target="#reviewModal'+index+'" style="border: 1px solid lightgray; width: 100px; height: 36px; font-size: small; color: #666666;">후기작성</button>';

                            htmlTag += '</div>';
                            htmlTag += '</li>';
                            htmlTag += '</div>';
                            htmlTag += '</div>';

                            // 모달창
                            htmlTag += '<div class="modal fade" id="reviewModal'+index+'">';
                            htmlTag += '<div class="modal-dialog modal-dialog-centered">';
                            htmlTag += '<div class="modal-content">';
                            htmlTag += '<div class="modal-header">';
                            htmlTag += '<h4 class="modal-title">상품 후기</h4>';
                            // htmlTag += '<button type="button" class="close" data-dismiss="modal">&times;</button>';
                            htmlTag += '</div>';
                            htmlTag += '<div class="modal-body">';

                            htmlTag += '<form name="reviewFrm" id="reviewFrm" method="post" style="margin: 0px;" enctype="multipart/form-data">';
                            htmlTag += '<input type="hidden" name="ord_id" id="ord_id" value="'+reviewList.ord_id+'">';
                            htmlTag += '<input type="hidden" name="prod_id" id="prod_id" value="'+reviewList.prod_id+'">';
                            htmlTag += '<input type="hidden" name="mem_id" id="mem_id" value="'+reviewList.mem_id+'">';

                            htmlTag += '<div class="productInfo d-flex align-content-between" style="margin-bottom: 20px;">';

                            htmlTag += '<div class="writeProImg" style="border:none;margin: 0px 20px"><img src="${pageContext.request.contextPath }/resources/images/'+ reviewList.thumOriFilename +'" style="width: 60px; height: 60px; border-radius: 5px;"></div>';
                            htmlTag += '<div class="writeProName">'+ reviewList.prod_name + '</div>';
                            htmlTag += '</div>';
                            htmlTag += '<div class="writeArea d-flex">';
                            htmlTag += '<div>'
                            htmlTag += 		'<label for="review_content"style="width: 80px; text-align: left;  margin: 0px; margin-right: 20px;">내용</label> ';
                            htmlTag += '</div>';
                            htmlTag += '<div>'
                            htmlTag += '<textarea type="text" name="review_content" placeholder="상품 특성에 맞는 후기를 작성해주세요. 예)레시피, 겉포장 속 실제 구성품 사진, 플레이팅, 화장품 사용자의 피부타입 등 " required="required"></textarea>';
                            htmlTag += '</div>';
                            htmlTag += ' </div>';
                            htmlTag += '<div class="filebox d-flex align-content-between" style="margin-top:20px">';
                            htmlTag += '<div style="width: 90px; text-align: left; margin-top: 15px; ">사진첨부</div>';

                            htmlTag += '<div class="fileIconBox" style="margin-right: 20px;">';
                            htmlTag += '<label for="file"><img src="https://cdn-icons-png.flaticon.com/512/1829/1829371.png" style="width: 60px; height: 60px;" alt="카메라" ></label>';
                            htmlTag += '</div>';
                            htmlTag += '<div><input type="file" id="file"  name="ori_filename" onchange="setThumbnail(event)"></div>';
                            htmlTag += '<div border:1px solid #00C73C">';
                            htmlTag += '<label for="thumb"><img class="thumb" src="${pageContext.request.contextPath }/resources/images/" style="width: 60px; height: 60px;"></label>';
                            htmlTag += '<div id="preview"></div>';
                            htmlTag += '</div>';
                            htmlTag += '</div>';

                            htmlTag += '<div class="buttonBox" style="text-align: center;">';
                            htmlTag += '<input type="button" id="write_review" value="작성하기" onclick="writeProReview()"> ';
                            htmlTag += '<button type="button" class="closeReviewModal" style="border: 1px solid lightgray; margin-left: 5px; background-color: gray; color: white; width: 60px; height: 36px; font-size: small;">닫기</button>';

                            htmlTag += '</div>';

                            htmlTag += '</form>';
                            htmlTag += '</div>';
                            htmlTag += '</div>';
                            htmlTag += '</div>';
                            htmlTag += '</div>';

                        });
                    } // else 끝
                    $("#reviewArea").html(htmlTag);
                    $("#reviewCnt").html(reviewCnt);
                },
                error: function() {
                    alert("리뷰 목록 불러오기 실패");
                }
            }); // ajax 끝
        };

        $(document).on("click", "#writeReviewBtn", function() {
            // 모달 창을 표시하는 코드
            $(".modal").show();
        });
        $(document).on("click", ".closeReviewModal", function() {
            // 모달을 찾아서 숨깁니다. 모달의 정확한 선택자는 상황에 따라 다를 수 있습니다.
            $(this).closest('.modal').hide();
        });




        // 작성한 리뷰
        $('#written').click(function() {
            console.log("작성한리뷰 클릭");
            writtenArea.classList.remove('hide'); // 보이기
            beforeWriteArea.classList.add('hide'); // 숨김
            $('#written').attr('style', "border-bottom:none; color: #00C73C");
            $('#beforeWrite').attr('style', "background-color: #00C73C;");

            var reviewInfo = {
                mem_id: 'user123',
                reviewStatus: 'Y'
            }
            console.log("reviewInfo: " + reviewInfo.mem_id);
            showWritten(reviewInfo);
        });

        function showWritten(reviewInfo) {
            $.ajax({
                type: "POST",
                data: JSON.stringify(reviewInfo),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                url: "/mypage1/seeMyReview",

                success: function(data) {
                    console.log("작성한리뷰목록불러오기");

                    console.log(data);
                    let writeReviewCnt = data.length;
                    console.log ("작성한 리뷰 갯수 : " + writeReviewCnt)

                    let htmlTag = "";
                    if (data.length == 0) {
                        console.log("작성한 리뷰 없음")
                        htmlTag += '<div class="orderList">';
                        htmlTag += '<div class="text-center noData "><h4><b>작성한 리뷰가 없습니다.</b></h4>';
                        htmlTag += '<br><br>';
                        htmlTag += '</div>';
                        htmlTag += '</div>';
                    } else {
                        $.each(data, function(index, reviewList){
                            htmlTag += '<div class="review-container" style="">';
                            htmlTag += '<li class="d-flex inquiryPro-row" style="padding: 20px;">';
                            htmlTag += '<div class="pro_img"><img src="${pageContext.request.contextPath }/resources/images/'+ reviewList.thumOriFilename +'" style="width: 60px; height: 60px; border-radius: 5px;"></div>';

                            htmlTag += '<div class="pro_title" style="width: 560px; text-align: left;padding-left:20px">';
                            htmlTag += '<div class="pro_name font-weight-bold">' + reviewList.prod_id + '</div>';
                            htmlTag += 		'<div>' + reviewList.deliveryStatus + '</div>';
                            htmlTag += '</div>';
                            htmlTag += '<div class="review-deadline minusPoint" style="width: 135px; margin-top: 20px; margin-right:20px;"></div>';

                            htmlTag += '<div class="write_review" style="margin-top: 13px;">'
                                + '<button type="button" class="trigger btn font-weight-bold reviewMdfyBtn" id = "writeReviewBtn" data-toggle="modal" data-target="#wtReviewModal'+index+'" style="border: 1px solid lightgray; width: 100px; height: 36px; font-size: small; color: #666666;">후기수정</button>'
                                + '</div>';
                            htmlTag += '</li>';
                            htmlTag += '</div>';

                            // 모달창
                            htmlTag += '<div class="modal fade" id="wtReviewModal'+index+'">';
                            htmlTag += '<div class="modal-dialog modal-dialog-centered">';
                            htmlTag += '<div class="modal-content">';
                            htmlTag += '<div class="modal-header">';
                            htmlTag += '<h4 class="modal-title">작성한 후기</h4>';
                            htmlTag += '<button type="button" class="close" data-dismiss="modal">&times;</button>';
                            htmlTag += '</div>';

                            htmlTag += '<div class="modal-body">';

                            htmlTag += '<form name="mdfyReviewFrm" id="mdfyReviewFrm" method="post" style="margin: 0px;">';
                            htmlTag += `<input type="hidden" name="review_id" id="review_id" value="${reviewList.review_id}">`;
                            htmlTag += `<input type="hidden" name="ord_id" id="ord_id" value="${reviewList.ord_id}">`;
                            htmlTag += `<input type="hidden" name="prod_id" id="prod_id" value="${reviewList.prod_id}">`;
                            htmlTag += `<input type="hidden" name="mem_id" id="mem_id" value="${reviewList.mem_id}">`;


                            htmlTag += '<div class="productInfo d-flex align-content-between" style="margin-bottom: 20px;">';
                            htmlTag += '<div class="writeProImg" style="border:none;margin: 0px 20px"><img src="${pageContext.request.contextPath }/resources/images/'+ reviewList.thumOriFilename +'" style="width: 60px; height: 60px; border-radius: 5px;"></div>';
                            htmlTag += '<div class="writeProName">'+ reviewList.prod_id + '</div>';
                            htmlTag += '</div>';

                            htmlTag += '<div class="writeArea d-flex">';
                            htmlTag += '<div>'
                            htmlTag += 		'<label for="R_content"style="width: 80px; text-align: left;  margin: 0px; margin-right: 20px;" >내용</label> ';
                            htmlTag += '</div>';

                            htmlTag += '<div>'
                            htmlTag += '<textarea type="text" id="writtenReview" name="reivew_content" style="background-color:white;" readonly>'+ reviewList.reivew_content +'</textarea>';
                            htmlTag += '</div>';
                            htmlTag += '</div>';

                            htmlTag += '<div class="filebox d-flex align-content-between" style="margin-top:20px">';
                            htmlTag += '<div style="width: 100px; text-align: left; margin-top: 15px;">사진첨부</div>';

                            htmlTag += '<div class="fileIconBox">';
                            htmlTag += '<label for="thumb"><img class="thumb" src="${pageContext.request.contextPath }/resources/images/" style="width: 60px; height: 60px;"></label>';
                            htmlTag += '</div>';

                            htmlTag += '<div class="buttonBox" style="text-align: center; margin-left:60px">';
                            htmlTag +=  '<input type="button" id="write_review" value="수정하기" onclick="modifyReview()"> ';
                            htmlTag +=  '<input type="button" id="write_review" value="저장하기" onclick="saveReview()"> ';
                            htmlTag += '</div>';

                            htmlTag += '</form>';
                            htmlTag += '</div>'; // modalbody

                            htmlTag += '</div>';
                            htmlTag += '</div>';
                            htmlTag += '</div>';
                            htmlTag += '</div>';

                        });
                    }
                    $("#writeReviewArea").html(htmlTag);
                    $("#writeReviewCnt").html(writeReviewCnt);
                }, // success
                error: function() {
                    alert("작성리뷰 불러오기 실패");
                }
            }); // ajax 끝
        }

    });

    $(document).on("click", ".reviewMdfyBtn", function () {
        //alert("리뷰수정 클릭")

    });

    // //썸네일 이미지 변경
    // function setThumbnail(event) {
    //     var reader = new FileReader();
    //     reader.onload = function(event) {
    //         var img = $(".thumb");
    //         img.setAttribute("src", event.target.result); //이미지 주소를 변경해줌
    //     };
    //     reader.readAsDataURL(event.target.files[0]);
    // }
    function showPreview(event) {
        var reader = new FileReader();
        reader.onload = function() {
            var output = document.getElementById('preview');
            output.innerHTML = '<img src="' + reader.result + '" style="width: 100px; height: 100px;"/>'; // 썸네일 크기 조정
        };
        reader.readAsDataURL(event.target.files[0]);
    }

    function writeProReview() {
        //alert("리뷰 작성 실행");
        var reviewFrm = document.getElementById("reviewFrm");
        reviewFrm.action = "writeProReview";
        reviewFrm.submit();
    }

    function modifyReview(){
        //수정활성화
        $('#writtenReview').removeAttr('readonly');
        $('#writtenReview').css('border', '3px solid #692498')
    }

    function saveReview(){
        //alert("리뷰 수정 실행");
        mdfyReviewFrm = document.getElementById("mdfyReviewFrm");
        mdfyReviewFrm.action ="modifyProReview";
        mdfyReviewFrm.submit();
    }
</script>
</body>

<footer>
    <%@include file="../include/footer.jspf" %>
</footer>
</html>