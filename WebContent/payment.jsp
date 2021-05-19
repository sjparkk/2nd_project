<%@page import="com.itwill.watch.service.OrderInfoService"%>
<%@page import="com.itwill.watch.domain.Card"%>
<%@page import="java.util.List"%>
<%@page import="com.itwill.watch.service.CardService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
CardService cardService = new CardService();
List<Card> cardList = cardService.cardListByUserNo(2);
OrderInfoService orderInfoService = new OrderInfoService();
//orderInfoService
%>
<!doctype html>
<html>
<head>
<meta charset='UTF-8'>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<title>Snippet - BBBootstrap</title>
<link
	href='https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css'
	rel='stylesheet'>
<link
	href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'
	rel='stylesheet'>
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
<style>
body {
	background-color: #e6ebf4
}

.card {
	border: none;
	border-radius: 8px;
	box-shadow: 5px 6px 6px 2px #e9ecef
}

.heading {
	font-size: 23px;
	font-weight: 00
}

.text {
	font-size: 16px;
	font-weight: 500;
	color: #b1b6bd
}

.pricing {
	border: 2px solid #304FFE;
	background-color: #f2f5ff
}

.business {
	font-size: 20px;
	font-weight: 500
}

.plan {
	color: #aba4a4
}

.dollar {
	font-size: 16px;
	color: #6b6b6f
}

.amount {
	font-size: 50px;
	font-weight: 500
}

.year {
	font-size: 20px;
	color: #6b6b6f;
	margin-top: 19px
}

.detail {
	font-size: 22px;
	font-weight: 500
}

.cvv {
	height: 44px;
	width: 73px;
	border: 2px solid #eee
}

.cvv:focus {
	box-shadow: none;
	border: 2px solid #304FFE
}

.email-text {
	height: 55px;
	border: 2px solid #eee
}

.email-text:focus {
	box-shadow: none;
	border: 2px solid #304FFE
}

.payment-button {
	height: 70px;
	font-size: 20px
}
</style>
<script type='text/javascript' src=''></script>
<script type='text/javascript'
	src='https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js'></script>
<script type='text/javascript'></script>
</head>
<body oncontextmenu='return false' class='snippet-body'>
	<header>
		<!-- Header Start -->
		<jsp:include page="include_common_top.jsp" />
		<!-- Header End -->
	</header>
	<div class="container mt-5 mb-5 d-flex justify-content-center">
		<div class="card p-5">
			<div>
				<p class="text">결제하실 카드를 선택해주세요.</p>
			</div>
			<div class="pricing p-3 rounded mt-4 d-flex justify-content-between">
				<div class="images d-flex flex-row align-items-center">
					<img src="./assets/img/card/S17BrTx.png" class="rounded"
						width="60"/>
					<div class="d-flex flex-column ml-4">
						<span class="business">Watch</span> <span class="plan">지샥 외
							1종</span>
					</div>
				</div>
				<!--pricing table-->
				<div class="d-flex flex-row align-items-center">
					<sup class="dollar font-weight-bold">￦</sup> <span
						class="amount ml-1 mr-1">120000</span> <span
						class="year font-weight-bold">원</span>
				</div>
				<!-- /pricing table-->
			</div>
			<span class="detail mt-5">등록된 카드 목록</span>
			<%
			for (Card card : cardList) {
			%>
			<div
				class="credit rounded mt-4 d-flex justify-content-between align-items-center">
				<div class="d-flex flex-row align-items-center">
					<img src="./assets/img/card/qHX7vY1.png" class="rounded"
						width="70"/>
					<div class="d-flex flex-column ml-3">
						<span class="business">Credit Card</span> <span class="plan"><%=card.getCardId()%></span>
					</div>
				</div>
			</div>
			<%
			}
			%>
			<h6 class="mt-4 text-primary">ADD PAYMENT METHOD</h6>
			<div class="mt-3">
				<button class="btn btn-primary btn-block payment-button">
					결제하기 <i class="fa fa-long-arrow-right"></i>
				</button>
			</div>
		</div>
	</div>
	<footer>
		<!-- Footer Start-->
		<jsp:include page="include_common_bottom.jsp" />
		<!-- Footer End-->
	</footer>
</body>
</html>