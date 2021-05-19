<%@page import="com.itwill.watch.service.CardService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
if (request.getMethod().equalsIgnoreCase("GET")) {
	response.sendRedirect("login.jsp");
	return;
}
try {
	request.setCharacterEncoding("UTF-8");

	CardService cardService = new CardService();
	int rowCount = cardService.unregisterCard(Integer.parseInt(request.getParameter("cardNo")));

	response.sendRedirect("card.jsp");
} catch (Exception e) {
	e.printStackTrace();
	response.sendRedirect("card.jsp");
}
%>