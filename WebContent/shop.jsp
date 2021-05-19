<%@page import="com.itwill.watch.service.ProductService"%>
<%@page import="com.itwill.watch.domain.Product"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String kind = request.getParameter("kind");
	String searchStr = request.getParameter("search");
	System.out.println(searchStr);
	
	if(kind == null) {
		kind="genenal";
	}
	ProductService productService = new ProductService();	
	List<Product> productList =null;
	List<Product> productListOrderByDesc = null;
	List<Product> productListOrderByAsc = null;
	List<Product> productListBySearchWord = null;
	List<Product> selectedList=null;
	String kindStr = null;
	if(searchStr != null) {
		selectedList = productService.findProductBySearchWord(searchStr);
		kindStr = "검색 결과";
	} else if (kind.equals("asc")) {
		selectedList =productService.productListByPriceOrderAsc();
		kindStr = "낮은 가격순";
	} else if (kind.equals("desc")){
		selectedList =productService.productListByPriceOrderDesc();
		kindStr = "높은 가격순";
	} else {
		selectedList = productService.productAllList();
		kindStr ="상품 전체";
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
		<!-- Latest Products Start -->
		<section class="popular-items latest-padding">
			<div class="container">
				<div class="row product-btn justify-content-between mb-40">
					<div class="properties__button">
						<!--Nav Button  -->
						<nav>
							<div class="nav nav-tabs" id="nav-tab" role="tablist"
								float="left">
								<a class="nav-item nav-link active" id="nav-home-tab"
									data-toggle="tab" href="#nav-home" role="tab"
									aria-controls="nav-home" aria-selected="true">TimeZone -
									상품 리스트</a>
							</div>

						</nav>
						<!--End Nav Button  -->

						<!-- Grid and List view -->
						<div class="grid-list-view"></div>
						<br>
						<div><h2>&nbsp<b><%=kindStr%></b></h2></div>
					</div>
					<div align="right">
						<select id="sort" onchange="productSort();">
							<option value="">- 상품 정렬 -</option>
							<option value="XHTML">상품 전체보기</option>
							<option value="javaScript">낮은 가격순</option>
							<option value="CSS">높은 가격순</option>
						</select>
					</div>
				</div>

				<!-- Nav Card -->
				<div class="tab-content" id="nav-tabContent">
					<!-- card one -->
					<div class="tab-pane fade show active" id="nav-home"
						role="tabpanel" aria-labelledby="nav-home-tab">
						<div class="row">

							<%
							for (Product product : selectedList) {
							%>
							<form name="onlyOneCart"
								id="onlyOneCart<%=product.getProductNo()%>" method="post">
								<input type="hidden" name="productNo"
									value="<%=product.getProductNo()%>">
							</form>
							<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
								<div class="single-popular-items mb-50 text-center">
									<div class="popular-img">
										<a
											href="product_details.jsp?productNo=<%=product.getProductNo()%>">
											<img src="assets/img/gallery/<%=product.getProductImage()%>"
											alt="">
										</a>
										<div class="img-cap">
											<span><a
												onClick="AddToCart('onlyOneCart<%=product.getProductNo()%>')">Add
													to cart</a></span>
										</div>
										<div class="favorit-items">
											<span class="flaticon-heart"></span>
										</div>
									</div>
									<div class="popular-caption">
										<h3>
											<a
												href="product_details.jsp?productNo=<%=product.getProductNo()%>"><%=product.getProductName()%></a>
										</h3>
										<span><%=new DecimalFormat("#,##0").format(product.getProductPrice())%>원</span>

									</div>
								</div>
							</div>
							<%
							}
							%>

						</div>
					</div>
				</div>
				<!-- End Nav Card -->
			</div>
		</section>
		<!-- Latest Products End -->
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
	<!-- All JS Custom Plugins Link Here here -->
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