<%@page import="java.util.Date"%>
<%@page import="com.itwill.watch.domain.UserInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="user_regist_loginchk.jspf"%>
<%

String msg = (String) request.getAttribute("msg");
if (msg == null)
	msg = "";
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
	function registUser() {
		if (document.userReg.userId.value == "") {
			alert("사용자 아이디를 입력하십시요.");
			userReg.userId.focus();
			return false;
		}
		if (userReg.userPassword.value == "") {
			alert("비밀번호를 입력하십시요.");
			userReg.userPassword.focus();
			return false;
		}
		if (userReg.userPassword2.value == "") {
			alert("비밀번호확인을 입력하십시요.");
			userReg.userPassword2.focus();
			return false;
		}
		if (userReg.email.value == "") {
			alert("이메일 주소를 입력하십시요.");
			userReg.email.focus();
			return false;
		}
		if (userReg.phone.value == "") {
			alert("전화번호를 입력하십시요.");
			userReg.phone.focus();
			return false;
		}
		if (userReg.zipCode.value == "") {
			alert("우편번호를 입력하십시요.");
			userReg.zipCode.focus();
			return false;
		}
		if (userReg.address.value == "") {
			alert("주소를 입력하십시요.");
			userReg.address.focus();
			return false;
		}
		if (userReg.userPaymentPassword.value == "") {
			alert("결제비밀번호를 입력하십시요.");
			userReg.userPaymentPassword.focus();
			return false;
		}
		if (userReg.userPassword.value != userReg.userPassword2.value) {
			alert("비밀번호와 비밀번호확인은 일치하여야합니다.");
			userReg.userPassword.focus();
			userReg.userPassword.select();
			return false;
		}

		document.userReg.action = "user_regist_action.jsp";
		document.userReg.method = "POST";
		document.userReg.submit();
	}
	function cancel() {
		document.userReg.action = "login.jsp";
		document.userReg.submit();
	}
	function checkNumber(event) {
		if (event.key === '.' || event.key === '-' || event.key >= 0
				&& event.key <= 9) {
			return true;
		}

		return false;
	}

	function openIdChk(){
		if (document.userReg.value=="") {
			alert("아이디를 입력하세요.");
			document.userReg.focus();
			return false;
		}
		var param="?userId="+document.userReg.userId.value;
		window.name = "parentForm";
		window.open("user_idCheck.jsp"+param,"chkForm", "width=500, height=300, resizable = no,scrollbars = no");	
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
		<div class="section-top-border">
			<div class="row">
				<div class="col-lg-8 col-md-8">
					<h3 class="mb-30">회원 가입</h3>
					<form name="userReg" method="post">
						<div class="mt-10">
							<input type="text" name="userId" placeholder="아이디"
								onfocus="this.placeholder = ''"
								onblur="this.placeholder = '아이디'" required class="single-input"
								value=""> &nbsp;
							<input type="button" value="중복확인" onclick="openIdChk()">
						</div>
						<div class="mt-10">
							<input type="password" name="userPassword" placeholder="비밀번호"
								onfocus="this.placeholder = ''"
								onblur="this.placeholder = '비밀번호'" required class="single-input"
								value="">
						</div>
						<div class="mt-10">
							<input type="password" name="userPassword2" placeholder="비밀번호확인"
								onfocus="this.placeholder = ''"
								onblur="this.placeholder = '비밀번호확인'" required
								class="single-input" value="">
						</div>
						<div class="mt-10">
							<input type="text" name="email" placeholder="EMAIL"
								onfocus="this.placeholder = ''"
								onblur="this.placeholder = 'EMAIL'" required
								class="single-input" value="">
						</div>
						<div class="mt-10">
							<input type="text" name="phone" placeholder="전화번호"
								onfocus="this.placeholder = ''"
								onkeypress="return checkNumber(event)"
								onblur="this.placeholder = '전화번호'" required class="single-input"
								value="">
						</div>
						<div class="mt-10">
							<input type="text" name="zipCode" placeholder="우편번호"
								onfocus="this.placeholder = ''"
								onkeypress="return checkNumber(event)"
								onblur="this.placeholder = '우편번호'" required class="single-input"
								value="">
						</div>
						<div class="mt-10">
							<input type="text" name="address" placeholder="주소"
								onfocus="this.placeholder = ''" onblur="this.placeholder = '주소'"
								required class="single-input" value="">
						</div>

						<div class="mt-10">
							<input type="password" name="userPaymentPassword"
								placeholder="결제비밀번호" onkeypress="return checkNumber(event)"
								onfocus="this.placeholder = ''"
								onblur="this.placeholder = '결제비밀번호'" required
								class="single-input" >
						</div>
						<table width=590 border=0 cellpadding=0 cellspacing=0>
							<tr>
								<td align=center><br /> <input type="button" value="등록"
									onClick="registUser()"> &nbsp; <input type="button"
									value="취소" onClick="cancel()"></td>
							</tr>
						</table>
					</form>




				</div>
			</div>
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