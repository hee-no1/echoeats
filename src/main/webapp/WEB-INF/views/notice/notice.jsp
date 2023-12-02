<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>공지사항 - 컬리</title>
<%--	<link rel="icon" href="${pageContext.request.contextPath}/resources/favicon.ico">--%>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/kurly_main.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/projectPratice.css">
</head>
<body>
<div id="wrap">
	<div id="wrap-center">
		<div id="top">
			<div id="header">
				<div id="homeInfo">
					<a>회원가입</a>
					<div class="stick"></div>
					<a>로그인</a>
					<div class="stick"></div>
					<div>
						<a>고객센터<span></span></a>
					</div>
					<div class="menu">
						<div>공지사항</div>
						<div>자주하는 질문</div>
						<div>1:1 문의</div>
						<div>대량주문 문의</div>
					</div>
				</div>
				<div id="search">
					<div id="search-bar">
						<img src="/resources/icons/kurly_logo.svg" alt="마켓컬리 로고">
						<a>마켓컬리</a>
						<div class="stick"></div>
						<a>뷰티컬리</a>
						<div id="search-center">
							<input id="search-input" type="text" placeholder="검색어를 입력하세요.">
							<button id="search-button">
								<div><span class="blind">검색</span></div>
							</button>
						</div>
						<div id="search-right">
							<button href="#">
								<span class="blind">배송지등록</span>
							</button>
							<button href="#">
								<span class="blind">찜하기</span>
							</button>
							<button href="#">
								<span class="blind">장바구니</span>
							</button>
						</div>
					</div>
				</div>
			</div>
			<div id="nev">
				<div id="category">
					<span></span>
					<span>카테고리</span>
				</div>
				<div id="menu">
					<ul>
						<li>
							<span href="#">신상품</span>
						</li>
						<li>
							<span href="#">베스트</span>
						</li>
						<li>
							<span href="#">알뜰쇼핑</span>
						</li>
						<li>
							<span href="#">특가/혜택</span>
						</li>
					</ul>
				</div>
				<div id="nev-right">
					<div>
						<span>샛별・택배</span>
						<span>배송안내</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="content-page">
	<div class="customer-service-center">
		<div class="center-left-menu"> <!--고객센터 메뉴(화면 왼쪽)-->
			<div class="center-left-header">고객센터</div> <!--메뉴 제목-->
			<ul class="left-menu-alllists">
				<li>
					<a class="active left-menu-list" >
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
					<a class="left-menu-list" href="/board/faq">
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
					<h2 class="Notice1">공지사항</h2>
					<span class="Notice2">컬리의 새로운 소식들과 유용한 정보들을 한곳에서 확인하세요.</span>
				</div>
			</div>
			<div class="board-header"> <!--게시판 상단2-->
				<div class="board-header-number">번호</div>
				<div class="board-header-title">제목</div>
				<div class="board-header-writer">작성자</div>
				<div class="board-header-date">작성일</div>
			</div>
			<ul class="board-content"> <!--게시판 글 목록-->
				<li>
					<a href="#">
						<div class="center-board-allLists">
							<div class="center-board-list1">111</div>
							<div class="center-board-list2">11111111111111111111111111111</div>
							<div class="center-board-list3">111</div>
							<div class="center-board-list4">1111.11.11</div>
						</div>
					</a>
				</li>
				<li>
					<a href="#">
						<div class="center-board-allLists">
							<div class="center-board-list1">111</div>
							<div class="center-board-list2">11111111111111111111111111111</div>
							<div class="center-board-list3">111</div>
							<div class="center-board-list4">1111.11.11</div>
						</div>
					</a>
				</li>
				<li>
					<a href="#">
						<div class="center-board-allLists">
							<div class="center-board-list1">111</div>
							<div class="center-board-list2">11111111111111111111111111111</div>
							<div class="center-board-list3">111</div>
							<div class="center-board-list4">1111.11.11</div>
						</div>
					</a>
				</li>
				<li>
					<a href="#">
						<div class="center-board-allLists">
							<div class="center-board-list1">111</div>
							<div class="center-board-list2">11111111111111111111111111111</div>
							<div class="center-board-list3">111</div>
							<div class="center-board-list4">1111.11.11</div>
						</div>
					</a>
				</li>
				<li>
					<a href="#">
						<div class="center-board-allLists">
							<div class="center-board-list1">111</div>
							<div class="center-board-list2">11111111111111111111111111111</div>
							<div class="center-board-list3">111</div>
							<div class="center-board-list4">1111.11.11</div>
						</div>
					</a>
				</li>
				<li>
					<a href="#">
						<div class="center-board-allLists">
							<div class="center-board-list1">111</div>
							<div class="center-board-list2">11111111111111111111111111111</div>
							<div class="center-board-list3">111</div>
							<div class="center-board-list4">1111.11.11</div>
						</div>
					</a>
				</li>
				<li>
					<a href="#">
						<div class="center-board-allLists">
							<div class="center-board-list1">111</div>
							<div class="center-board-list2">11111111111111111111111111111</div>
							<div class="center-board-list3">111</div>
							<div class="center-board-list4">1111.11.11</div>
						</div>
					</a>
				</li>
				<li>
					<a href="#">
						<div class="center-board-allLists">
							<div class="center-board-list1">111</div>
							<div class="center-board-list2">11111111111111111111111111111</div>
							<div class="center-board-list3">111</div>
							<div class="center-board-list4">1111.11.11</div>
						</div>
					</a>
				</li>
				<li>
					<a href="#">
						<div class="center-board-allLists">
							<div class="center-board-list1">111</div>
							<div class="center-board-list2">11111111111111111111111111111</div>
							<div class="center-board-list3">111</div>
							<div class="center-board-list4">1111.11.11</div>
						</div>
					</a>
				</li>
				<li>
					<a href="#">
						<div class="center-board-allLists">
							<div class="center-board-list1">111</div>
							<div class="center-board-list2">11111111111111111111111111111</div>
							<div class="center-board-list3">111</div>
							<div class="center-board-list4">1111.11.11</div>
						</div>
					</a>
				</li>
				<li>
					<a href="#">
						<div class="center-board-allLists">
							<div class="center-board-list1">111</div>
							<div class="center-board-list2">11111111111111111111111111111</div>
							<div class="center-board-list3">111</div>
							<div class="center-board-list4">1111.11.11</div>
						</div>
					</a>
				</li>
				<li>
					<a href="#">
						<div class="center-board-allLists">
							<div class="center-board-list1">111</div>
							<div class="center-board-list2">11111111111111111111111111111</div>
							<div class="center-board-list3">111</div>
							<div class="center-board-list4">1111.11.11</div>
						</div>
					</a>
				</li>
				<li>
					<a href="#">
						<div class="center-board-allLists">
							<div class="center-board-list1">111</div>
							<div class="center-board-list2">11111111111111111111111111111</div>
							<div class="center-board-list3">111</div>
							<div class="center-board-list4">1111.11.11</div>
						</div>
					</a>
				</li>
				<li>
					<a href="#">
						<div class="center-board-allLists">
							<div class="center-board-list1">111</div>
							<div class="center-board-list2">11111111111111111111111111111</div>
							<div class="center-board-list3">111</div>
							<div class="center-board-list4">1111.11.11</div>
						</div>
					</a>
				</li>
				<li>
					<a href="#">
						<div class="center-board-allLists">
							<div class="center-board-list1">111</div>
							<div class="center-board-list2">11111111111111111111111111111</div>
							<div class="center-board-list3">111</div>
							<div class="center-board-list4">1111.11.11</div>
						</div>
					</a>
				</li>
			</ul>
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
		</div>
	</div>
</div>
<div class="right-menu">
	<div class="right-menu-list">
		<div class="right-menu-list1">
			<a href="#">
          <span
				  style="box-sizing:border-box;display:inline-block;overflow:hidden;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0;position:relative;max-width:100%">
            <span>
              <img src="" alt="">
            </span>
            <img class="shipping-img" src="/resources/images/deliveryInfo.png" alt="샛별, 택배 배송 안내">
          </span>
			</a>
		</div>
		<div class="right-menu-list2">
			<a href="#">
				<div class="right-list2-11">등급별 혜택</div>
			</a>
			<a href="#">
				<div class="right-list2-11">레시피</div>
			</a>
		</div>
		<div class="right-menu-list3">
			<button type="button" class="top-button">
				<svg width="20" height="20" viewBox="0 0 18 18" fill="none" stroke="#ddd" xmlns="http://www.w3.org/2000/svg">
					<path d="M5 11L9 7L13 11" stroke="#666" stroke-width="1.3"></path>
				</svg>
			</button>
			최근 본 상품
			<div>
				<ul>
					<li>
              <span>

              </span>
					</li>
					<li>
              <span>

              </span>
					</li>
					<li>
              <span>

              </span>
					</li>
					<li>
              <span>

              </span>
					</li>
					<li>
              <span>

              </span>
					</li>
				</ul>
			</div>
			<button type="button" class="bottom-button">
				<svg width="20" height="20" viewBox="0 0 18 18" fill="none" stroke="#ddd" xmlns="http://www.w3.org/2000/svg">
					<path d="M13 7L9 11L5 7" stroke="#666" stroke-width="1.3"></path>
				</svg>
			</button>
		</div>
	</div>

</div>
<div id="footer">
	<div id="footer1">
		<div class="footer1-1">
			<div>

			</div>
			<div>

			</div>
		</div>
		<div>

		</div>
	</div>
	<div id="footer2">footer2</div>
	<!-- footer -->
</div>
</body>
</html>
