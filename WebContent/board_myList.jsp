<%@page import="java.util.List"%>
<%@page import="com.itwill.watch.domain.Board"%>
<%@page import="com.itwill.watch.service.BoardService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="login_check.jspf" %>
<%
	BoardService boardService = new BoardService();
	List<Board> myBoardList = boardService.findBoardByUserNo(sUser.getUserNo());

%>
<%!
public String getTitleString(Board board) {
	StringBuilder title = new StringBuilder(128);
	String t = board.getBoardTitle();
	if (t.length() > 15) {
		t = String.format("%s...", t.substring(0, 15));
	}
	for (int i = 0; i < board.getDepth(); i++) {
		title.append("&nbsp;&nbsp;");
	}
	if (board.getDepth() > 0) {
		title.append("<img border='0' src='assets/img/re.gif'/>");
	}
	title.append(t.replace(" ", "&nbsp;"));
	return title.toString();
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	function boardCreate() {
		location.href="board_write_form.jsp";
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
		<div class="container mt-3">
		  <h2>고객문의</h2>
		  <p>문의사항이 있으시다면 글을 작성하여 주세요.</p>
		  <ul class="list-group">
		  	<li class="list-group-item d-flex justify-content-between align-items-center">
		      <span class="no">글번호</span>
		      <span class="title">제목</span>
		      <span class="customer">고객명</span>
		      <span class="date">날짜</span>
		    </li>
		<!-- 본문 시작-->
		<%for(Board board : myBoardList) {  %>
		    <li class="list-group-item d-flex justify-content-between align-items-center">
		      <span class="no"><%=board.getBoardNo() %></span>
		      <span class="title" ><a style="color:black;" href='board_view.jsp?boardNo=<%=board.getBoardNo() %>'><%=this.getTitleString(board) %></a></span>
		      <span class="customer"><%=sUser.getUserId() %></span>
		      <span class="date"><%=board.getBoardDate() %></span>
		    </li>
		    <%} %>
		<!-- 본문 끝 -->
		  </ul>
		  
		  <div class="row">
		  <!-- 페이지 스크롤 -->
				<div class="col offset-5">
						<a href=""></a>
				</div>
		  <!-- 페이지 스크롤 -->
		  <br/>
		
			 	<div class="col offset-12">  
			 	<br/>
					<input type="button" class="btn  btn-sm" id ='writeFrm' value='작성하기' onclick='boardCreate();'
							style=" width: 80px;height: 20px;font-size: 17px;padding:0px;">
			   </div>
			   
		</div>
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

</body>
</html>