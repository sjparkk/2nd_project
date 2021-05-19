<%@page import="com.itwill.watch.domain.UserInfo"%>
<%@page import="com.itwill.watch.service.UserInfoService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="login_check.jspf"%>

<%
UserInfoService userService = new UserInfoService();
UserInfo userInfo = userService.findUser(sUserId);
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
	function updateUser() {
		document.modifyUser.action = "user_modify_action.jsp";
		document.modifyUser.method = "POST";
		document.modifyUser.submit();
	}
	function cancel() {
		document.modifyUser.action = "login.jsp";
		document.modifyUser.submit();
	}
	function unRegistUser() {
		document.modifyUser.action = "user_unregist_action.jsp";
		document.modifyUser.method = "POST";
		document.modifyUser.submit();
	}
	function checkNumber(event) {
		  if(event.key === '.' 
		     || event.key === '-'
		     || event.key >= 0 && event.key <= 9) {
		    return true;
		  }
		  
		  return false;
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
		<section class="login_part section_padding ">
			<div class="container">
				<div class="row align-items-center">

					<div class="col-lg-12 col-md-12">
						<div class="login_part_form">
							<div class="login_part_form_iner">
								<h3>회원정보수정</h3>
								<form name="modifyUser" class="row contact_form"
									action="user_modify_action.jsp" method="post"
									novalidate="novalidate">
									<div class="col-md-8 form-group p_star">
									<input type="hidden" class="form-control" name="userId"
											value="<%=userInfo.getUserId()%>" placeholder="아이디">
										&nbsp;<font color="red"></font>
									</div>
									<div class="col-md-8 form-group p_star">
									비밀번호:<input type="password" class="form-control" name="userPassword"
											value="<%=userInfo.getUserPassword()%>" placeholder="비밀번호">
										&nbsp;<font color="red"></font>
									</div>
									<div class="col-md-8 form-group p_star">
									이메일:<input type="text" class="form-control" name="email"
											value="<%=userInfo.getEmail()%>" placeholder="이메일">
										&nbsp;<font color="red"></font>
									</div>
									<div class="col-md-8 form-group p_star">
									전화번호:<input type="text" class="form-control" name="phone"
											onkeypress="return checkNumber(event)"
											value="<%=userInfo.getPhone()%>" placeholder="전화번호">
										&nbsp;<font color="red"></font>
									</div>
									<div class="col-md-8 form-group p_star">
									우편번호:<input type="text" class="form-control" name="zipCode"
											onkeypress="return checkNumber(event)" 
											value="<%=userInfo.getZipCode()%> " placeholder="우편번호">
										&nbsp;<font color="red"></font>
									</div>
									<div class="col-md-8 form-group p_star">
									주소:<input type="text" class="form-control" name="address"
											value="<%=userInfo.getAddress()%>" placeholder="주소">
										&nbsp;<font color="red"></font>
									</div>
									<div class="col-md-8 form-group p_star">
									가입일:<input type="hidden" class="form-control" name="userJoinDate"
											value="<%=userInfo.getUserJoinDate()%>" placeholder="가입일">
										&nbsp;<font color="red"></font>
									</div>
									<div class="col-md-8 form-group p_star">
									결제비밀번호:<input type="password" class="form-control"
											name="userPaymentPassword" onkeypress="return checkNumber(event)"
											value="<%=userInfo.getUserPaymentPassword()%>"
											placeholder="결제비밀번호"> &nbsp;<font color="red"></font>
									</div>

									<div class="col-md-8 form-group"></div>
									<input type="submit" value="수정" onClick="updateUser()">
									&nbsp; <input type="button" value="취소" onClick="cancel()">
									&nbsp; <input type="button" value="탈퇴" onClick="unRegistUser()">
							</div>


							</form>
						</div>
					</div>
				</div>
			</div>
			</div>
		</section>
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