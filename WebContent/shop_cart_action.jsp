<%@page import="java.util.List"%>
<%@page import="com.itwill.watch.domain.Cart"%>
<%@page import="com.itwill.watch.domain.UserInfo"%>
<%@page import="com.itwill.watch.service.CartService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="login_check.jspf"%>
<%
if(request.getMethod().equalsIgnoreCase("GET")){
	response.sendRedirect("shop.jsp");
	return;
}
	int userNo = sUser.getUserNo();
	String productNoStr = request.getParameter("productNo");
	CartService cartService = new CartService();
	
	Cart findCart = cartService.findCartByProductNoAndUserNo(new Cart(0, 1,
			userNo, Integer.parseInt(productNoStr)));
	
	if(findCart == null) {
		findCart =  new Cart(0, 1, userNo, Integer.parseInt(productNoStr));
		cartService.insertCart(findCart);
		response.sendRedirect("shop.jsp");
		return;
	} else {
		findCart = new Cart(findCart.getCartno(), findCart.getProductqty()+1,
				userNo, Integer.parseInt(productNoStr));
		cartService.UpdateCartByUserNoAndProductNo(findCart);
		response.sendRedirect("shop.jsp");
		return;
	}
		
 %>