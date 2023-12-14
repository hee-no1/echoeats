<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- FAQ 관리자 페이지 (등록,수정,삭제버튼) -->
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>EcoEats</title>
  <%@ include file="../include/bootstrap.jspf" %>
  <style>
    .list-group-item a {
      text-decoration: none;
      color: black;
    }
    .list-group-item:hover>a {
      font-weight: bold;
      text-decoration: none;
      color: #B03FE3;
    }
    .list-group-item:hover>span {
      font-weight: bold;
      text-decoration: none;
      color: #B03FE3;
    }
    .list-group-item a {
      width: 100%;
      display: block;
    }

    h2 {
      font-weight: bold;
    }
    h4 {
      font-weight: bolder;
    }
    h4 span {
      vertical-align: middle;
      font-size: small;
    }
    .card {
      border: white;
    }
    .card-header {
      background-color: white;
      height: 55px;
      padding-top: 13px;
    }
    .card-header a {
      color: black;
      text-decoration: none;
      vertical-align: middle;
    }
    .card-header span {
      text-align: center;
      font-size: 10.5pt;
    }
    .card-header:hover {
      color: black;
      text-decoration: none;
      background-color: white;
    }
    .card-body {
      border-top-color: white;
    }
    .card_answer {
      padding: 30px 30px 30px 70px;
      font-size: 14px;
    }
    .faq_btn {
      padding: 0px 10px;
      text-align: center;
      overflow: hidden;
      width: 120px;
      height: 44px;
      border-radius: 3px;
      color: rgb(255, 255, 255);
      background-color: #4CAF50;
      border: 0px none;
      font-size: small;
      float: right;
    }
  </style>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/projectPratice.css">
</head>

<body>
<header>
  <%@ include file="../include/header.jspf" %>
</header>
<div class="content-page">
  <div class="customer-service-center">
    <div class="center-left-menu"> <!--고객센터 메뉴(화면 왼쪽)-->
      <div class="center-left-header">고객센터</div> <!--메뉴 제목-->
      <ul class="left-menu-alllists">
        <li>
          <a class="left-menu-list">
            공지사항
            <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
              <defs>
                <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
              </defs>
              <g fill="none" fill-rule="evenodd">
                <g>
                  <g>
                    <g>
                      <g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                        <use stroke="#5f0080" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round"
                             transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use>
                      </g>
                    </g>
                  </g>
                </g>
              </g>
            </svg>
          </a>
        </li>
        <li>
          <a class="active left-menu-list">
            자주하는 질문
            <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
              <defs>
                <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
              </defs>
              <g fill="none" fill-rule="evenodd">
                <g>
                  <g>
                    <g>
                      <g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                        <use stroke="#5f0080" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round"
                             transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use>
                      </g>
                    </g>
                  </g>
                </g>
              </g>
            </svg>
          </a>
        </li>
        <li>
          <a class="left-menu-list">
            1:1문의
            <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
              <defs>
                <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
              </defs>
              <g fill="none" fill-rule="evenodd">
                <g>
                  <g>
                    <g>
                      <g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                        <use stroke="#5f0080" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round"
                             transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use>
                      </g>
                    </g>
                  </g>
                </g>
              </g>
            </svg>
          </a>
        </li>
        <li>
          <a class="left-menu-list">
            대량주문 문의
            <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
              <defs>
                <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
              </defs>
              <g fill="none" fill-rule="evenodd">
                <g>
                  <g>
                    <g>
                      <g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                        <use stroke="#5f0080" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round"
                             transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use>
                      </g>
                    </g>
                  </g>
                </g>
              </g>
            </svg>
          </a>
        </li>
      </ul>
      <a href="" class="center-left-footer">
        <div clss="left-footer-list">
          <span class="left-footer-list1">도움이 필요하신가요?</span>
          <span class="left-footer-list2">1:1 문의하기</span>
        </div>
        <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
          <defs>
            <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
          </defs>
          <g fill="none" fill-rule="evenodd">
            <g>
              <g>
                <g>
                  <g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                    <use stroke="#333" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round"
                         transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use>
                  </g>
                </g>
              </g>
            </g>
          </g>
        </svg>
      </a>
    </div>
    <div class="board"> <!--게시판 (화면 중앙)-->
      <div class="board-top"> <!--게시판 상단1-->
        <div class="board-top-content">
          <h2 class="Notice1">자주하는 질문
            <span class="Notice2">고객님들께서 가장 자주하시는 질문을 모두 모았습니다.</span>
            <div id="option" class="dropdown" style="width: 180px; border-radius: 0; float: right; padding-bottom: 0.5cm;" >
              <select name="location" class="form-control">
                <option value="전체" selected="selected">전체</option>
                <option value="회원">회원</option>
                <option value="주문/결제/대량주문">주문/결제/대량주문</option>
                <option value="배송">배송</option>
                <option value="상품">상품</option>
              </select>
            </div>
          </h2>
        </div>
      </div>
      <div class="css-e23nfx e16adls21"> <!--게시판 상단2-->
        <div width="70" class="css-hyfxhw e16adls20">번호</div>
        <div width="135" class="css-1cn1979 e16adls20">카테고리</div>
        <div class="css-1ym8aqm e16adls20">제목</div>
      </div>
      <!-- ajax로 데이터를 전달할 공간 -->
      <div class="faq_a">
        <div id="accordion">
          <div class="card" id="type_faq">

          </div>
        </div>
      </div>
      <script>
        function faq_delete(faq_id) {
          if (confirm("정말 삭제하시겠습니까??") == true) {
            location.href="deleteFaq?faq_id="+faq_id
          } else {
            return false;
          }
        }

        $(document).ready(function() {
          getFaqList();
        });
        // FAQ 목록 비동기적으로 가져오기 -> AJAX 이용하여 서버에 요청, 받아와서 화면에 출력
        function getFaqList() {
          var dataSend = {
            faq_type: $("select[name=location]").val(), // 선택된 카테고리 가져옴.
          };
          $.ajax({
            type: "POST",
            data: JSON.stringify(dataSend),
            url: "/board/faqlist",
            dataType: "json",
            contentType: "application/json; charset=utf-8",

            // 콜백함수 -> 성공시 받은 데이터를 이용하여 FAQ 목록을 동적으로 생성하여 화면에 출력
            success: function (data) {

              console.log(data);

              // dispHtml 변수에 HTML 코드 문자열로 누적
              let dispHtml = "";

              // for 루프를 통해 서버에서 받아온 FAQ 데이터 순회하며 HTML 코드 생성
              for (let FaqDto of data) {

                // FAQ 세부 내용을 접을 수 있는 collapse -> BootStrap 사용
                dispHtml += "<div class='card-header'>";
                dispHtml += "<a class='card-link' data-toggle='collapse' href='#collapseOne" + FaqDto.faq_id + "'>";
                dispHtml += "<span style='width: 75px; display: inline-block;'>" + FaqDto.faq_id + "</span>";
                dispHtml += "<span style='width: 150px; display: inline-block;' class='" + FaqDto.faq_type + "'>" + FaqDto.faq_type + "</span>";
                dispHtml += "<span style='width: 840px; display: inline-block;'>" + FaqDto.faq_title + "</span></a>";
                dispHtml += "</div>";
                dispHtml += "<div id='collapseOne" + FaqDto.faq_id + "' class='collapse' data-parent='#accordion'>";
                dispHtml += "<div class='card-body'>";
                dispHtml += "<div class='card_answer'>";
                dispHtml += FaqDto.faq_con
                dispHtml += "</div>";

                dispHtml += "<div style='text-align: right;'>";
                dispHtml += "<a href='faq_modify?faq_id=" + FaqDto.faq_id + "' style='font-size:9pt; color: darkgray; text-decoration: none;'>수정 |</a>";
                dispHtml += "<a onclick='faq_delete(" + FaqDto.faq_id + ")' style='font-size:9pt; color: red; text-decoration: none;'> 삭제</a>";
                dispHtml += "</div></div></div>";
              }

              // FAQ 목록은 id= #type_faq 엘리먼트에 추가
              $("#type_faq").html(dispHtml);

            },

            // 콜백함수 -> 실패 시 경고창 출력
            error: function () {
            }
          });
        }

        // 카테고리가 변경(새롭게 선택)될 때마다 change 이벤트 발생
        $("select[name=location]").change(function(){
          console.log($(this).val()); //value값 가져오기

          // 카테고리가 변경되었으므로, 새로운 FAQ 목록을 가져옴
          getFaqList();
        });

      </script>
      <div class="board-footer"> <!--게시판 하단-->
        <div class="board-footer-button">
          <button type="button" class="left-button">
            <div class="left-button1">이전</div>
          </button>
          <button type="button" class="right-button">
            <div class="right-button1">이후</div>
          </button>
        </div>
      </div>

      <button class="faq_btn" type="button" onclick="location.href='faq_write'">등록하기</button>

    </div>
  </div>
</div>
</body>
<footer>
  <%@ include file="../include/footer.jspf" %>
</footer>
</html>
