<%@page import="com.itwill.watch.service.UserInfoService"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="com.itwill.watch.domain.Product"%>
<%@page import="com.itwill.watch.service.ProductService"%>
<%@page import="com.itwill.watch.domain.Cart"%>
<%@page import="java.util.List"%>
<%@page import="com.itwill.watch.service.CartService"%>
<%@page import="com.itwill.watch.domain.UserInfo"%>
<%@page import="com.itwill.watch.dao.UserInfoDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="login_check.jspf"%>
<!doctype html>
<%
String productNoStr = request.getParameter("productNo");
String productQtyStr = request.getParameter("productQty");

int userno = sUser.getUserNo();
CartService cartService = new CartService();
ProductService productService = new ProductService();
int totalPrice = 0;
List<Cart> cartList = cartService.findCartListByUserNo(userno);

%>
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

<script type="text/javascript">
	function buy() {
		if (
<%=session.getAttribute("sUserId") == null%>
	) {
			alert('로그인 하세요');
			location.href = 'login.jsp';
		} else {
			location.href = 'payment.jsp';
		}
	}
</script>
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
<body>
	<%
	for (Cart cart : cartList) {
		Product productNo = productService.findProductByNo(cart.getProductno());
		int cartQty = cartService.findCartQtyByCartNo(cart.getCartno());
		
	%>
		<form name="cartForm" id="cartForm<%=cart.getCartno()%>">
			<input type="hidden" name="cartNo" value="<%=cart.getCartno() %>" >
			<input type="hidden" name="userNo" value="<%=userno %>" >
			<input type="hidden" name="cartQty" value="<%=cartQty%>">
			<input type="hidden" name="productNo" value="<%=cart.getProductno()%>">
		</form>
	<%
	}
	%>
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
								<h2>Cart List</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--================Cart Area =================-->
		<section class="cart_area section_padding">
			<div class="container">
				<div class="cart_inner">
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th scope="col">상품목록</th>
									<th scope="col">가격</th>
									<th scope="col">수량</th>
									<th scope="col">총 가격</th>
								</tr>
							</thead>
							<tbody>
								<%
								for (Cart cart : cartList) {
									Product productNo = productService.findProductByNo(cart.getProductno());
									int cartQty = cartService.findCartQtyByCartNo(cart.getCartno());
									totalPrice += productNo.getProductPrice() * cartQty;
								%>

								<tr>
									<td>
										<div class="media">
											<div class="d-flex">
												<img
													src="assets/img/gallery/<%=productNo.getProductImage()%>"
													alt="" />
											</div>
											<div class="media-body">
												<p><%=productNo.getProductName()%></p>
											</div>
										</div>
									</td>
									<td>
										<h5><%=new DecimalFormat("#,###").format(productNo.getProductPrice())%>원
										</h5>
									</td>
									<td>
										<!-- 수량조정버튼 -->
										<div class="product_count">
											<div class="product_count d-inline-block">
												<span class="product_count_item inumber-decrement" > <i
													class="ti-minus"></i>
												</span> <input id="cartQtyInput<%=cart.getCartno()%>"
													class="product_count_item input-number" type="text"
													value="<%=cart.getProductqty()%>" min="0" max="10">
												<span class="product_count_item number-increment"> <i
													class="ti-plus"></i>
												</span>
											</div>
										</div>
									</td>
									<td>
										<h5><%=new DecimalFormat("#,###").format(productNo.getProductPrice() * cartQty)%></h5>
									</td>
								</tr>
								<!------------------ form -------------------->
								<!-- 원본작업 시작 -->


								<!-- @@@@@@@@@@@@@@@@@@@USERNO VALUE수정해야됨 -->

								<tr class="bottom_button">
									<td><button type="button" class="btn_1"
											onclick="updateCartSubmit('cartForm<%=cart.getCartno()%>','cartQtyInput<%=cart.getCartno()%>')">수정하기</button>
									<button type="button" class="btn_1"
											onclick="deleteCartSubmit('cartForm<%=cart.getCartno()%>')">삭제하기</button></td>

									<td></td>
									<td></td>
									<td></td>
									<%
									}
									%>


									<!--  
									<div class="cupon_text float-right">
										<button type="button" class="btn_1" onclick="cart_delete_action.jsp">
											장바구니 비우기</a>
									</div>
									-->
									
							<form name="deleteCartForm" action="cart_delete_action.jsp" method="POST">
                        <!-- @@@@@@@@@@@@@@@@@@@@@@@USERNO VALUE수정해야됨 세션으로 userno받아오기-->
                              <input type="hidden" name="userNo" value="<%=userno%>">
                              <div class="cupon_text float-right">
                                 <button type = "submit" class="btn_1" >장바구니 비우기</a>
                              </div>
                        </form>


								</tr>
								<tr>
									<td></td>
									<td></td>
									<td>
										<h5>총 결제금액</h5>
									</td>
									<td>
										<h5>
											￦<%=new DecimalFormat("#,###").format(totalPrice)%></h5>
									</td>
								</tr>
							</tbody>
						</table>
						<div class="checkout_btn_inner float-right">
							<a class="btn_1" href="shop.jsp">계속 쇼핑하기</a> <a
								class="btn_1 checkout_btn_1" href="checkout.jsp">결제하기</a>
						</div>
					</div>
				</div>
		</section>
		<!--================End Cart Area =================-->
	</main>
	>
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

	<!-- Scrollup, nice-select, sticky -->
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
	<script src="Doc/js/cart.js"></script>
</body>
</html>