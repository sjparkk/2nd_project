<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String sUserId = (String) session.getAttribute("sUserId");
%>

<script type="text/javascript">
	function searchProduct() {
		document.navigator.action = "shop.jsp";
		document.navigator.method = "POST";
		document.navigator.submit();

	}
</script>

<div class="header-area">
	<div class="main-header header-sticky">
		<div class="container-fluid">
			<div class="menu-wrapper">
				<!-- Logo -->
				<div class="logo">
					<a href="index.jsp"><img src="assets/img/logo/logo.png" alt=""></a>
				</div>
				<!-- Main-menu -->
				<div class="main-menu d-none d-lg-block">
					<nav>
						<ul id="navigation">

							<li><a href="index.jsp">Home</a></li>
							<li><a href="shop.jsp">shop</a></li>
							<%
							if (sUserId == null) {
							%>
							<li><a href="user_regist_form.jsp">Join</a></li>
							<%
							}
							%>
							<%
							if (sUserId != null) {
							%>
							<li><a href="#">User</a>
								<ul class="submenu">
									<li><a href="user_modify_form.jsp">Update</a></li>
									<li><a href="card.jsp">Card</a></li>
									<li><a href="orderlist.jsp">Order</a></li>
									<li><a href="board_list.jsp">Q&A</a></li>
								</ul></li>
							<%
							}
							%>
						</ul>
					</nav>
				</div>
				<!-- Header Right -->
				<div class="header-right">
					<form name="navigator" method="post">
						<ul>
							<li><input type="text" name="search" placeholder="search">
								<span onclick="searchProduct()" class="flaticon-search"></span></li>
							<%
							if (sUserId == null) {
							%>

							<li><a href="login.jsp"><span class="flaticon-user"></span></a></li>
							<li><a href="cart.jsp"><span
									class="flaticon-shopping-cart"></span></a></li>
							<%
							} else {
							%>
							<li><a href="logout_action.jsp"><span
									class="flaticon-user"></span></a></li>
							<li><a href="cart.jsp"><span
									class="flaticon-shopping-cart"></span></a></li>
							<%
							}
							%>
						</ul>
					</form>
				</div>
			</div>
			<!-- Mobile Menu -->
			<div class="col-12">
				<div class="mobile_menu d-block d-lg-none"></div>
			</div>
		</div>
	</div>
</div>