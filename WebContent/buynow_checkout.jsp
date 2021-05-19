<%@page import="java.nio.file.attribute.UserPrincipalNotFoundException"%>
<%@page import="java.sql.Date"%>
<%@page import="com.itwill.watch.service.UserInfoService"%>
<%@page import="com.itwill.watch.domain.Card"%>
<%@page import="com.itwill.watch.service.CardService"%>
<%@page import="com.itwill.watch.dao.UserInfoDaoImpl"%>
<%@page import="com.itwill.watch.dao.UserInfoDao"%>
<%@page import="com.itwill.watch.domain.UserInfo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itwill.watch.domain.Product"%>
<%@page import="com.itwill.watch.service.ProductService"%>
<%@page import="com.itwill.watch.domain.Cart"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.itwill.watch.service.CartService"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="login_check.jspf" %> 	
<%
	if(request.getParameter("productNo")==null || request.getParameter("productQty")==null){
		response.sendRedirect("index.jsp");
		return;
	}
	int productNo=Integer.parseInt(request.getParameter("productNo"));
	int productQty=Integer.parseInt(request.getParameter("productQty"));
	System.out.println("productNo:"+productNo);
	System.out.println("productQty:"+productQty);
	int total2=0;
	CartService cartService=new CartService();
	ProductService productService=new ProductService();
	Product product=productService.findProductByNo(productNo);
	CardService cardService=new CardService();
	UserInfoService userInfoService=new UserInfoService();
	UserInfo user=userInfoService.findUser(sUserId);
	List<Card> cardList	=cardService.cardListByUserNo(user.getUserNo());
	int userCardPassword=user.getUserPaymentPassword();
	if(cardList.size()==0){
		out.println("<script>");
		out.println("alert('카드를 등록해주세요');");
		out.println("location.href='card.jsp';");
		out.println("</script>");
		return;
	}
	total2=product.getProductPrice()*productQty;
	

	System.out.println("userCardPassword"+userCardPassword);
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


function submit(userCardPassword) {
	
		var password = prompt('결제비밀번호를 입력해주세요');
		if(password!=userCardPassword){
			alert("결제비밀번호가 일치하지 않습니다");
			return;
		}
	   document.getElementById("submitForm2").submit();
		
	
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
								<h2>Checkout</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--================Checkout Area =================-->
		<section class="checkout_area section_padding">
			<div class="container">
			
				<div class="billing_details">
					<div class="row">
						<div class="col-lg-8">
							<h3>Billing Details</h3>
	
						
							<form class="row contact_form" action="buynow_checkout_action.jsp" method="post"
								novalidate="novalidate" name="submitForm2" id="submitForm2">
								<div class="col-md-6 form-group p_star">
								<div class="col-md-6 form-group p_star">아이디</div>
									<input type="text"  class="form-control" id="id" name="id" value="<%=user.getUserId() %>" readonly="readonly"  />
								</div>
							
								<div class="col-md-6 form-group p_star">
								<div class="col-md-6 form-group p_star">전화번호</div>
									<input type="text" class="form-control" id="number"
										name="number" value="<%=user.getPhone() %>"/> 
								</div>
								<div class="col-md-6 form-group p_star">
								<div class="col-md-6 form-group p_star">이메일</div>
									<input type="text" class="form-control" id="email"
										name="compemailany" value="<%=user.getEmail() %>"/> 
								</div>
								<div class="col-md-12 form-group p_star">
								<div class="col-md-6 form-group p_star">주소</div>
									<input type="text" class="form-control" id="add1" name="add1" value="<%=user.getAddress() %>"/>
									
								</div>
									<div class="col-md-12 form-group">
									<div class="col-md-6 form-group p_star">ZIP-CODE</div>
									<input type="text" class="form-control" id="zip" name="zip" value="<%=user.getZipCode() %>"/>
								</div>
							
								<div class="col-md-12 form-group p_star">
								<h3>Payment card</h3>
									<select class="card" id="card" name="card">
									<%for(Card card:cardList){ %>
										<option value="<%=card.getCardNo() %>"> <%=card.getCardId() %></option>
									<%} %>	
									</select>
									<div hidden="hidden">
									<input type="text" id="userNo" class="userNo" name="userNo" value="<%=user.getUserNo()%>">	
									<input type="text" id="total2" class="total2" name ="total2" value="<%=total2%>">	
									<input type="text" id="productNo" class="productNo" name ="productNo" value="<%=productNo%>">	
									<input type="text" id="productQty" class="productQty" name ="productQty" value="<%=productQty%>">	
												
									</div>
								</div>

							</form>
						</div>
						<div class="col-lg-4">
							<div class="order_box">
								<h2>Your Order</h2>
								<ul class="list">
									<li><a>Product <span>Total</span>
									</a></li>
									
									<li><a><%=product.getProductName()%>
									 <span class="middle" ></span>
									<span class="last">x<%=productQty %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=product.getProductPrice()*productQty %></span>
									</a></li>
								
									
								</ul>
								<ul class="list list_2">
									<li><a>Total <span><%=total2 %></span>
									</a></li>
								</ul>
								<div class="payment_item">
									<p>Please send a check to Store Name, Store Street, Store
										Town, Store State / County, Store Postcode.</p>
								</div>
							
								<div class="creat_account">
									<label
										for="f-option4">I’ve read and accept the </label> <a href="#">terms
										& conditions*</a>
								</div>
								<a class="btn_3" href="javascript:submit(<%=userCardPassword %>);">Purchase decision</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--================End Checkout Area =================-->
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

	<!-- Scroll up, nice-select, sticky -->
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