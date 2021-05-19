<%@page import="com.itwill.watch.domain.Cart"%>
<%@page import="com.itwill.watch.service.UserInfoService"%>
<%@page import="com.itwill.watch.service.CartService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="login_check.jspf"%>
<%
/*
	if(request.getMethod().equalsIgnoreCase("GET")){
		response.sendRedirect("cart.jsp");
	}
	*/
	CartService cartService = new CartService();
	int userNo = sUser.getUserNo();
	String productNo = request.getParameter("productNo");
	String cartNo = request.getParameter("cartNo");
	String cartQty = request.getParameter("cartQty");
	//UserInfoService userInfoService=new UserInfoService();
	Cart cart = new Cart(0,Integer.parseInt(cartQty),userNo,Integer.parseInt(productNo));
	cartService.UpdateCartByUserNoAndProductNo(cart);
	
	
	response.sendRedirect("cart.jsp");
	
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
성공!
</body>
</html>