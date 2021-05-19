<%@page import="com.itwill.watch.domain.UserInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String referer = request.getHeader("Referer");

String sUserId = (String) session.getAttribute("sUserId");
UserInfo sUser = (UserInfo) session.getAttribute("sUser");
if (sUserId != null) {
	response.sendRedirect("index.jsp");
	return;
}
String msg1 = request.getParameter("msg1");
String msg2 = request.getParameter("msg2");
if (msg1 == null)
	msg1 = "";
if (msg2 == null)
	msg2 = "";
%>
<!doctype html>
<html lang="zxx">
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
</head>
<script type="text/javascript">
	function login() {
		f.action = "login_action.jsp";
		f.method = 'POST';
		f.submit();
	}
	function goRegistForm() {
		location.href = "user_regist_form.jsp"
	}
</script>
<body>
	<header>
		<!-- Header Start -->
		<jsp:include page="include_common_top.jsp" />
		<!-- Header End -->
	</header>
	<main>
		<!-- Hero Area Start-->
		<div class="slider-area ">
			<div class="single-slider slider-height2 d-flex align-items-center">
				<div class="container">
					<div class="row">
						<div class="col-xl-12">
							<div class="hero-cap text-center">
								<h2>Login</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Hero Area End-->
		<!--================login_part Area =================-->
		<section class="login_part section_padding ">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-lg-6 col-md-6">
						<div class="login_part_text text-center">
							<div class="login_part_text_iner">
								<h2>New to our Shop?</h2>
								<p>There are advances being made in science and technology
									everyday, and a good example of this is the</p>
								<a href="user_regist_form.jsp" class="btn_3">Create an
									Account</a>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-6">
						<div class="login_part_form">
							<div class="login_part_form_iner">
								<h3>
									Welcome Back ! <br> Please Sign in now
								</h3>
								<form class="row contact_form" action="login_action.jsp"
									method="post" novalidate="novalidate">
									<div class="col-md-12 form-group p_star">
										<input type="text" class="form-control" name="userId" value=""
											placeholder="Username"> &nbsp;<font color="red"><%=msg1%></font>
									</div>
									<div class="col-md-12 form-group p_star">
										<input type="password" class="form-control" name="password"
											value="" placeholder="Password"> &nbsp;<font
											color="red"><%=msg2%></font>
									</div>
									<div class="col-md-12 form-group">
										<input type="hidden" name="referer" value="<%=referer%>">
										<button type="submit" value="submit" class="btn_3">
											log in</button>
										<a class="lost_pass" href="#">forget password?</a>
									</div>


								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--================login_part end =================-->
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

	<!-- Scroll up, nice-select, sticky -->
	<script src="./assets/js/jquery.scrollUp.min.js"></script>
	<script src="./assets/js/jquery.nice-select.min.js"></script>
	<script src="./assets/js/jquery.sticky.js"></script>
	<script src="./assets/js/jquery.magnific-popup.js"></script>

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