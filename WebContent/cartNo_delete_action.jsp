<%@page import="com.itwill.watch.service.CartService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="login_check.jspf"%>
<%
	CartService cartService = new CartService();
	String cartNo = request.getParameter("cartNo");
	cartService.DeleteCartByCartNo(Integer.parseInt(cartNo));
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