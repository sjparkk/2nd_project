<%@page import="java.text.DecimalFormat"%>
<%@page import="com.itwill.watch.domain.OrderDetail"%>
<%@page import="com.itwill.watch.domain.Card"%>
<%@page import="com.itwill.watch.service.CardService"%>
<%@page import="com.itwill.watch.domain.OrderInfo"%>
<%@page import="java.util.List"%>
<%@page import="com.itwill.watch.domain.UserInfo"%>
<%@page import="com.itwill.watch.service.UserInfoService"%>
<%@page import="com.itwill.watch.service.OrderInfoService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="login_check.jspf" %> 	
<%
CardService cardService=new CardService();
OrderInfoService orderInfoService=new OrderInfoService();
UserInfoService userInfoService=new UserInfoService();
UserInfo user=userInfoService.findUser(sUserId);
List<OrderInfo> orderinfoList=orderInfoService.findOrderAllByNo(user.getUserNo());
DecimalFormat df = new DecimalFormat("#,##0");

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
function deleteOrderNo() {
	  document.getElementById("deleteForm").submit();
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
								<h2>ORDER LIST</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--================ confirmation part start =================-->
					<div class="col-lg-12">
						<div class="confirmation_tittle"  style="text-align: center;">
							<span style="font-size: 50px">Thank you. Your order .</span>
						</div>
					</div>
					<%if(orderinfoList.size()==0){ %>
					<div class="confirmation_tittle"  style="text-align: center; border: 1px solid black">
					<span style="color:red; font-size: 50px;" >no order</span>
					</div>
					<%} %>
					<%for(OrderInfo orderInfo:orderinfoList){ %>
					<form action="orderlist_action.jsp" method="post" name="deleteForm" id="deleteForm">
					<input type="hidden" id="orderNo" name="orderNo" value="<%=orderInfo.getOrderNo() %>">
					
					</form>
		<section class="confirmation_part section_padding">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-lx-4">
						<div class="single_confirmation_details" style="width: 1140px">
							<h4>order info</h4>
							<ul>
								<li>
								<form action="post">
									<p>order number</p> <span> <%=orderInfo.getOrderNo() %> </span>
									</form>
								</li>
								<li>
									<p>date</p> <span><%=orderInfo.getOrderDate() %></span>
								</li>
								<li>
									<p>total</p> <span><%=new DecimalFormat("#,##0").format(orderInfo.getOrderPrice())%></span>
								</li>
								<li>
									<p>사용카드</p> <span> <%=cardService.cardIdByCardNo(Integer.parseInt(orderInfo.getCardNo())) %></span>
								</li>
							</ul>
						</div>
					</div>
					</div>
					<details>
						<summary style="text-align: right;"><span>detail</span></summary>
					<div class="col-lg-6 col-lx-4">
						<div class="single_confirmation_details" style="width: 1140px">
							<h4>shipping Address</h4>
							<ul>
								<li>
									<p>postcode</p> <span> <%=user.getZipCode() %></span>
								</li>
								<li>
									<p>address</p> <span><%=user.getAddress() %></span>
								</li>
								<li>
									<p>phone</p> <span> <%=user.getPhone() %></span>
								</li>
								<li>
									<p>email</p> <span><%=user.getEmail() %></span>
								</li>
							</ul>
						</div>
					</div>
				
				
			
				<div class="row">
					<div class="col-lg-12">
						<div class="order_details_iner">
							<h3>Order Details</h3>
							<table class="table table-borderless">
								<thead>
									<tr>
										<th scope="col" colspan="2">Product</th>
										<th scope="col">Quantity</th>
										<th scope="col">Total</th>
									</tr>
								</thead>
								<tbody>		
								<% for(OrderDetail orderdetail:orderInfo.getOrderDetailList()){ %>					
								<tr>
										<th colspan="2"><span><%=orderdetail.getProduct().getProductName() %></span></th>
										<th>x0<%=orderdetail.getOrderQty() %></th>
										<th><span><%=df.format( orderdetail.getProduct().getProductPrice()*orderdetail.getOrderQty()) %></span></th>
									</tr>
									<%} %>
								
								</tbody>
								<tfoot>
									<tr>
										<th scope="col" colspan="3">total</th>
										<th scope="col"><%=df.format(orderInfo.getOrderPrice()) %></th>
									</tr>
								</tfoot>
								
								
								
							</table>
							<a class="btn_4" href="javascript:deleteOrderNo();">Order Cancellation</a>
						</div>
					</div>
				</div>
				</details>
			</div>
		
		</section>
								<%} %>
		<!--================ confirmation part end =================-->
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