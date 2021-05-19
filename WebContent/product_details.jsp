<%@page import="java.util.List"%>
<%@page import="com.itwill.watch.domain.Product"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="com.itwill.watch.service.ProductService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String productNoStr = request.getParameter("productNo");
	if(productNoStr==null|| productNoStr.equals("")){
		response.sendRedirect("shop.jsp");
		return;
	}
	/*
	boolean isLogin = false;
	if(session.getAttribute("sUserId") != null) {
		isLogin = true;
	}
	*/
	ProductService productService=new ProductService();
	List<Product> productList = productService.productAllList();
	Product product = productService.findProductByNo(Integer.parseInt(productNoStr));
	if(product==null){
		out.println("<script>");
		out.println("alert('매진된상품입니다.');");
		out.println("location.href='shop.jsp';");
		out.println("</script>");
		return;
	}
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
<script src="Doc/js/product.js"></script>

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
								<h2>Watch Shop</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Hero Area End-->
		<!--================Single Product Area =================-->
		<div class="product_image_area">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-12">
						<div class="product_img_slide owl-carousel">
							<div class="single_product_img">
								<img src="assets/img/gallery/<%=product.getProductImage() %>"
									alt="#" class="img-fluid">
							</div>
							<!-- 아래 사진 두장까지 하여 총 3장, 화살표 버튼으로 보기 가능. -->
							<div class="single_product_img">
								<img src="assets/img/gallery/gallery01.png" alt="#"
									class="img-fluid">
							</div>
							<div class="single_product_img">
								<img src="assets/img/gallery/gallery1.png" alt="#"
									class="img-fluid">
							</div>
						</div>
					</div>
					<div class="col-lg-8">
						<div class="single_product_text text-center">
							<h3>
								<%=product.getProductName() %>
							</h3>
							<p><%=product.getProductDesc() %></p>
							<div class="card_area">
								<div class="product_count_area">
									<p>Quantity</p>
									<div class="product_count d-inline-block">
										<span class="product_count_item inumber-decrement"> 
											<i class="ti-minus"></i>
										</span> 
										<input id="product_count_item_input_number" class="product_count_item input-number" type="text" value="1" min="0" max="10"> 									
										<span class="product_count_item number-increment"> 
											<i class="ti-plus"></i>
										</span>
									</div>
									<p>
										가격:<%=new DecimalFormat("#,##0").format(product.getProductPrice())%>원
									</p>
								</div>
								<!-- 카트 담기 -->
								<form name="ManyCartForm" method="post">
									<input type="hidden" name="productNo" value="<%=product.getProductNo()%>">
									<input type="hidden" name="productQty" value="">
								</form>
								<!-- 바로 구매 -->
								<form name="directBuyForm" method="post">
									<input type="hidden" name="productNo" value="<%=product.getProductNo()%>">
									<input type="hidden" name="productQty" value="">
								</form>
								<br>
								<div class="button-group-area mt-40">
									<a href="#" class="genric-btn danger circle arrow"
										onClick="manyAddToCart()">카트 담기<span
										class="lnr lnr-arrow-right"></span></a>
								
									<a href="#" class="genric-btn danger circle arrow"
										onClick="directBuy()">바로 구매하기<span
										class="lnr lnr-arrow-right"></span></a>
										
									<a href="shop.jsp" class="genric-btn danger circle arrow"
										>상품 리스트 <span
										class="lnr lnr-arrow-right"></span></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	     <!--================End Single Product Area =================-->
        <!-- subscribe part here -->
        <section class="subscribe_part section_padding">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="subscribe_part_content">
                            <h2>Get promotions & updates!</h2>
                            <p>Seamlessly empower fully researched growth strategies and interoperable internal or “organic” sources credibly innovate granular internal .</p>
                            <div class="subscribe_form">
                                <input type="email" placeholder="Enter your mail">
                                <a href="#" class="btn_1">Subscribe</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- subscribe part end -->
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

	<!-- swiper js -->
	<script src="./assets/js/swiper.min.js"></script>
	<!-- swiper js -->
	<script src="./assets/js/mixitup.min.js"></script>
	<script src="./assets/js/jquery.counterup.min.js"></script>
	<script src="./assets/js/waypoints.min.js"></script>

</body>

</html>