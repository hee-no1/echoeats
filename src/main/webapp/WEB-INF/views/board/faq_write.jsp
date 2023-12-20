<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- FAQ 등록 페이지 -->
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>EcoEats</title>
  <link rel="stylesheet" href="/resources/product/css/main-css.css">
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

    .main {
      padding-bottom: 24px;
      padding-top: 10px;
    }

    .table {
      width: 100%;
      text-align: center;
    }

    .title {
      width: 100%;
      vertical-align: middle;
      padding-bottom: 9px;
      border-color: lightgray;
      border-width: 1px;
    }

    .back_btn {
      padding: 0px 10px;
      text-align: center;
      overflow: hidden;
      width: 120px;
      height: 44px;
      border-radius: 3px;
      color: rgb(255, 255, 255);
      background-color: #9A30AE;
      border: 0px none;
      font-size: small;
    }

    .notice_btn {
      padding: 0px 10px;
      text-align: center;
      overflow: hidden;
      width: 120px;
      height: 44px;
      border-radius: 3px;
      color: rgb(255, 255, 255);
      background-color: #9A30AE;
      border: 0px none;
      font-size: small;
    }
  </style>
</head>
<header>
  <%@ include file="../include/header.jspf" %>
</header>
<body>
<div class="container-fluid">
  <div class="row" style="padding-top:50px; padding-bottom: 50px">
    <div class="col-sm-2"></div>
    <div class="col-sm-2">
    </div>
    <div class="col-sm-6">
      <div class="main" style="border-bottom:2px solid black">
        <h4>자주하는 질문 등록</h4>
      </div>
      <div>
        <form name="frm" method="post" action="${pageContext.request.contextPath}/board/insertFaq">
          <table class="table">
            <thead>
            <tr style="height: 60px;">
              <th style="width: 10%; vertical-align: middle; border-color: white;">제목</th>
              <th style="vertical-align: middle; border-bottom-color: white;">
                <input type="text" class="title" name="faq_title" placeholder=" 제목을 입력하세요.">
              </th>
            </tr>
            <tr>
              <th style="width: 10%; vertical-align: middle; border-color: white;">카테고리</th>
              <th style="vertical-align: middle; border-bottom-color: white;">
                <select class="form-control" name="faq_type">
                  <option value="회원">회원</option>
                  <option value="주문/결제">주문/결제/대량주문</option>
                  <option value="배송">배송</option>
                  <option value="상품">상품</option>
                </select>
              </th>
            </tr>
            </thead>
            <tbody>
            <tr>
              <td style="font-weight: bolder;">내용</td>
              <td>
                    <textarea class="form-control" rows="18" id="comment" name="faq_con"
                              placeholder="내용을 입력하세요."></textarea>
                <span style="color:#aaa; float: right;" id="counter">(0 /2000자)</span>
              </td>
            </tr>
            </tbody>
          </table>
          <div style="text-align: right;">
            <button class="back_btn" type="button" onclick="location.href='${pageContext.request.contextPath}/board/faq_admin'">취소</button>
            <button class="notice_btn" type="submit" onclick="check_faq(event)">등록</button>
          </div>
        </form>
      </div>
    </div>
  </div>
  <div class="col-sm-2"></div>
</div>
</body>
<footer>
  <%@ include file="../include/footer.jspf" %>
</footer>
<script>
  //textarea 글자수 제한
  $('.form-control').keyup(function (e) {
    var content = $(this).val();
    $('#counter').html("(" + content.length + "자 / 2000자)");    //글자수 실시간 카운팅

    if (content.length > 2000) {
      alert("최대 2000자까지 입력 가능합니다.");
      $(this).val(content.substring(0, 2000));
      $('#counter').html("(2000 / 2000자)");
    }
  });

  //제목,내용 미입력시 알림
  function check_faq(event) {
      event.preventDefault();

      var frm = document.frm;

      if (frm.faq_title.value.trim() === "" || frm.faq_con.value.trim() === "") {
          if (frm.faq_title.value.trim() === "") {
              alert("제목을 입력해주세요.");
          } else if (frm.faq_con.value.trim() === "") {
              alert("내용을 입력해주세요.");
          }
      } else {
          frm.action = "insertFaq";
          frm.submit();
      }
  }
</script>
</html>
