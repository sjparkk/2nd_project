<%@page import="com.itwill.watch.service.CartService"%>
<%@page import="com.itwill.watch.domain.UserInfo"%>
<%@page import="com.itwill.watch.service.UserInfoService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="login_check.jspf"%>
<%
	//if(request.getMethod().equalsIgnoreCase("GET"))
	//{
	//response.sendRedirect("cart");
	//}	
	int userNo = sUser.getUserNo();
	CartService cartService = new CartService();
	cartService.AllDeleteCart(userNo);

	response.sendRedirect("cart.jsp");
	
%>