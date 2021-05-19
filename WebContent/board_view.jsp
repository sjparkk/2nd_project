<%@page import="java.util.List"%>
<%@page import="com.itwill.watch.domain.BoardFile"%>
<%@page import="com.itwill.watch.service.BoardFileService"%>
<%@page import="com.itwill.watch.domain.Board"%>
<%@page import="com.itwill.watch.service.BoardService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="login_check.jspf" %>
<%
	request.setCharacterEncoding("UTF-8");
	String boardNo = request.getParameter("boardNo");
	if(boardNo.equals("") || boardNo == null){
		response.sendRedirect("board_list.jsp");
		return;
	}
	
	BoardService boardService = new BoardService();
	Board board = boardService.findBoardByNo(Integer.parseInt(boardNo));
	if(board == null){
		out.println("<script>");
		out.println("alert('존재하지않는 게시물입니다.');");
		out.println("location.href='board_list.jsp';");
		out.println("</script>");
		return;
	}
	
	/*
	BoardFileService boardFileService = new BoardFileService();
	List<BoardFile> boardFileList = boardFileService.findBoardFileAllByBoardNo(Integer.parseInt(boardNo));
	*/
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
	function boardUpdate(){
		f.action="board_modify_form.jsp";
		f.submit();
	}
	function boardRemove(){
		if(confirm("삭제하시겠습니까?")){
			f.action="board_remove_action.jsp";
			f.submit();
		}
	}
	function boardCommCreate(){
		f.action="board_comm_write_form.jsp";
		f.submit();
	}
	function boardList(){
		f.action="board_list.jsp";
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

			<div id="content">
				<table border=0 cellpadding=0 cellspacing=0>
					<tr>
						<td><br />
							<table style="padding-left: 10px" border=0 cellpadding=0
								cellspacing=0>
								<tr>
									<td bgcolor="white" height="22">&nbsp;&nbsp; <b> 문의 내용 </b>
									</td>
								</tr>
							</table> <br> 
							<form name="f" method="post">
								<input type="hidden" name="boardNo" value="<%=board.getBoardNo()%>">
								<input type="hidden" name="groupNo" value="<%=board.getGroupNo()%>">
								<input type="hidden" name="step" value="<%=board.getStep()%>">
								<table border="0" cellpadding="0" cellspacing="1" width="590"
									bgcolor="BBBBBB">

									<tr>
										<td width=100 align=center bgcolor="E6ECDE" height="22">문의유형</td>
										<td width=490 bgcolor="ffffff" style="padding-left: 10px" align="left"><%=board.getBoardType() %></td>
									</tr>
									<tr>
										<td width=100 align=center bgcolor="E6ECDE" height="22">주문번호</td>
									<% 	if(board.getOrderNo()==0){ %>
										<td width=490 bgcolor="ffffff" style="padding-left: 10px"
											align="left"></td>
									<%} else{ %>
										<td width=490 bgcolor="ffffff" style="padding-left: 10px"
											align="left"><%=board.getOrderNo() %></td>
									</tr>
									
									<%} 	%>
									<tr>
										<td width=100 align=center bgcolor="E6ECDE" height="22">제목</td>
										<td width=490 bgcolor="ffffff" style="padding-left: 10px"
											align="left"><%=board.getBoardTitle() %></td>
									</tr>
									<tr>
										<td width=100 align=center bgcolor="E6ECDE" height="22">내용</td>
										<td width=490 bgcolor="ffffff" height="180px"
											style="padding-left: 10px" align="left"><%=board.getBoardContent() %><br/>
										</td>
									</tr>
									<!--  
									<tr>
									<td rowspan="%=boardFileList.size() %>" width=100 align=center bgcolor="E6ECDE" height="22">파일</td>
									%for(BoardFile boardFile : boardFileList) {%>
										<td width=490 bgcolor="ffffff" style="padding-left: 10px"
											align="left">%=boardFile.getFileName()%></td><br/>
									%} %>
									</tr>
									-->
									<tr>
										<td width=100 align=center bgcolor="E6ECDE" height="22">작성 날짜</td>
										<td width=490 bgcolor="ffffff" style="padding-left: 10px"
											align="left"><%=board.getBoardDate() %></td>
									</tr>

								</table>

							</form> <br>
							<table width=590 border=0 cellpadding=0 cellspacing=0>
								<tr>
								
									<td align=center>
									<%if(sUser.getUserNo() == board.getUserNo()) {%>
									<input type="button" value="수정" onClick="boardUpdate()">&nbsp; 
									<input type="button" value="삭제" onClick="boardRemove()"> 
									<%} %>
										<input type="button" value="답글쓰기" onClick="boardCommCreate()">
										&nbsp; <input type="button" value="목록" onClick="boardList()"></td>
								</tr>
							</table></td>
					</tr>
				</table>
			</div>
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