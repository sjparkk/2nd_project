<%@page import="java.util.List"%>
<%@page import="com.itwill.watch.service.BoardFileService"%>
<%@page import="com.itwill.watch.domain.BoardFile"%>
<%@page import="com.itwill.watch.domain.Board"%>
<%@page import="com.itwill.watch.service.BoardService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="login_check.jspf" %>
<%
try{
	String boardNo = request.getParameter("boardNo");
	if(boardNo.equals("") || boardNo==null){
		response.sendRedirect("board_list.jsp");
		return;
	}
	
	//원글에 대한 정보
	BoardService boardService = new BoardService();
	Board board = boardService.findBoardByNo(Integer.parseInt(boardNo));
	if(board==null){
		response.sendRedirect("board_list.jsp");
		return;
	}
%>
	<!doctype html>
	<html class="no-js" lang="zxx">
	<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>Watch shop | eCommers</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="manifest" href="site.webmanifest">
	<link rel="shortcut icon" type="image/x-icon"
		href="assets/img/favicon.ico">
	
	<!-- CSS here -->
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
	<link rel="stylesheet" href="assets/css/flaticon.css">
	<link rel="stylesheet" href="assets/css/slicknav.css">
	<link rel="stylesheet" href="assets/css/animate.min.css">
	<link rel="stylesheet" href="assets/css/magnific-popup.css">
	<link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
	<link rel="stylesheet" href="assets/css/themify-icons.css">
	<link rel="stylesheet" href="assets/css/slick.css">
	<link rel="stylesheet" href="assets/css/nice-select.css">
	<link rel="stylesheet" href="assets/css/style.css">
	<script type="text/javascript">
	 function loadOrderNo() {
		//나의 주문번호가 있다면 불러오고 없다면 title로 포커스
		var url ="board_orderNo_Popup.jsp";
		var name = "orderNo";
		window.open(url,name,"width=800, height=500, toolbar=no,status=no,location=no,scrollbars=no,menubar=no,resizable=yes,left=50,right=50");
		
	 }
	 
	 function commCreate() {
		 if(f.title.value == ""){
			 alert("제목을 입력하세요.");
			 f.title.focus();
			 return false;
		 }
		 if(f.content.value == ""){
			 alert("내용을 입력하세요.");
			 f.content.focus();
			 return false;
		 }
		 f.action = "board_comm_write_action.jsp";
		 f.method = "POST";
		 f.submit();
	 }
	 
	 function cancel() {
		 f.action = "board_list.jsp";
		 f.submit();
	 }
	
	</script>
	</head>
	<body>
		<!--? Preloader Start -->
		<div id="preloader-active">
			<div
				class="preloader d-flex align-items-center justify-content-center">
				<div class="preloader-inner position-relative">
					<div class="preloader-circle"></div>
					<div class="preloader-img pere-text">
						<img src="assets/img/logo/logo.png" alt="">
					</div>
				</div>
			</div>
		</div>
		<!-- Preloader Start -->
		<header>
			<!-- Header Start -->
			<jsp:include page="include_common_top.jsp" />
			<!-- Header End -->
		</header>
		<main>
	<br/>
	<br/>
	<br/>
	<br/>
	<div class="container">
	  <h2>Q&A 수정</h2>
	  <form name="f" method="post">
			<table border="0" cellpadding="0" cellspacing="1" width="590" bgcolor="BBBBBB">
				<tr>
					<td width=100 align=center bgcolor="E6ECDE" height="22">문의 유형</td>
					<td width=490 bgcolor="ffffff" style="padding-left: 10px" align="left">
						<textarea id="type" style="height:30px" name="type" readonly><%=board.getBoardType() %></textarea>
						</td>
				</tr>
				<tr>
					<td width=100 align=center bgcolor="E6ECDE" height="22">주문번호</td>
					<td width=490 bgcolor="ffffff" style="padding-left: 10px" align="left">
						<textarea id="orderNo" style="height:30px" name="orderNo" readonly></textarea>
						<input type="button" value="주문번호" onClick="loadOrderNo()">
						</td>
				</tr>
				<tr>
					<td width=100 align=center bgcolor="E6ECDE" height="22">제목</td>
					<td width=490 bgcolor="ffffff" style="padding-left: 10px" align="left">
					<input type="text" style="width: 450px" name="title" value="[RE]:<%=board.getBoardTitle() %>"></td>
				</tr>
				<tr>
					<td width=100 align=center bgcolor="E6ECDE" height="22">내용</td>
					<td width=490 bgcolor="ffffff" style="padding-left: 10px" align="left">
						<textarea name="content" class="textarea" style="width: 450px" rows="10"></textarea></td>
				</tr>
				<tr>
				<td>
					<input type="hidden" value="<%=board.getBoardNo()%>" id="boardNo" name="boardNo">
					<input type="hidden" value="<%=board.getGroupNo()%>" id="groupNo" name="groupNo">
				</td>
				</tr>
				<!--  
				<tr>
					<td width=100 align=center bgcolor="E6ECDE" height="22">파일첨부</td>
					<td width=490 bgcolor="ffffff" style="padding-left: 10px" align="left">
						<textarea id="orderNo" style="height:30px" name="fileName" readonly></textarea>
						<input type="button" value="파일첨부" onClick="fileUpload()">
						</td>
				</tr>
				-->
				<table width=590 border=0 cellpadding=0 cellspacing=0>
					<tr>
						<td align=center><br/>
						<input type="button" value="답글쓰기" onClick="commCreate()"> &nbsp; 
						<input type="button" value="취소" onClick="cancel()">
						</td>
					</tr>
				</table>
			</table>
		</form>
	</div>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
		</main>
		<footer>
			<!-- Footer Start-->
			<jsp:include page="include_common_bottom.jsp" />
			<!-- Footer End-->
		</footer>
		<!--? Search model Begin -->
		<div class="search-model-box">
			<div class="h-100 d-flex align-items-center justify-content-center">
				<div class="search-close-btn">+</div>
				<form class="search-model-form">
					<input type="text" id="search-input"
						placeholder="Searching key.....">
				</form>
			</div>
		</div>
		<!-- Search model end -->
	
		<!-- JS here -->
	
		<script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
		<!-- Jquery, Popper, Bootstrap -->
		<script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
		<script src="./assets/js/popper.min.js"></script>
		<script src="./assets/js/bootstrap.min.js"></script>
		<!-- Jquery Mobile Menu -->
		<script src="./assets/js/jquery.slicknav.min.js"></script>
	
		<!-- Jquery Slick , Owl-Carousel Plugins -->
		<script src="./assets/js/owl.carousel.min.js"></script>
		<script src="./assets/js/slick.min.js"></script>
	
		<!-- One Page, Animated-HeadLin -->
		<script src="./assets/js/wow.min.js"></script>
		<script src="./assets/js/animated.headline.js"></script>
		<script src="./assets/js/jquery.magnific-popup.js"></script>
	
		<!-- Scrollup, nice-select, sticky -->
		<script src="./assets/js/jquery.scrollUp.min.js"></script>
		<script src="./assets/js/jquery.nice-select.min.js"></script>
		<script src="./assets/js/jquery.sticky.js"></script>
	
		<!-- contact js -->
		<script src="./assets/js/contact.js"></script>
		<script src="./assets/js/jquery.form.js"></script>
		<script src="./assets/js/jquery.validate.min.js"></script>
		<script src="./assets/js/mail-script.js"></script>
		<script src="./assets/js/jquery.ajaxchimp.min.js"></script>
	
		<!-- Jquery Plugins, main Jquery -->
		<script src="./assets/js/plugins.js"></script>
		<script src="./assets/js/main.js"></script>
	<%
		}catch(Exception e){
			e.printStackTrace();
			response.sendRedirect("board_list.jsp");
		}
	%>
	</body>
	</html>