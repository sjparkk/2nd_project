<%@page import="com.itwill.watch.service.CardService"%>
<%@page import="com.itwill.watch.domain.Card"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="login_check.jspf"%>
<%
int sUserNo = Integer.parseInt(request.getParameter("sUserNo"));
CardService cardService = new CardService();
int existenceCheckCardId = cardService.existenceCheckCardNo(request.getParameter("cardId"));

if (request.getMethod().equalsIgnoreCase("GET")) {
	response.sendRedirect("card_register.jsp");
	return;
}

if (existenceCheckCardId == 0) {
	try {
		request.setCharacterEncoding("UTF-8");

		String cardId = request.getParameter("cardId");
		int cvc = Integer.parseInt(request.getParameter("cvc"));
		String cardEXP = request.getParameter("cardEXP");
		int cardPassword = Integer.parseInt(request.getParameter("cardPassword"));

		Card card = new Card(0, cardId, cvc, cardEXP, cardPassword, sUserNo);
		int rowCount = cardService.registerCard(card);

		String referer = request.getParameter("referer");

		if (referer.equals("null")) {
	referer = "http://localhost/2nd-project-team1-watch/card.jsp";
		}

		System.out.print(referer);
		response.sendRedirect(referer);
		return;
	} catch (Exception e) {
		e.printStackTrace();
		response.sendRedirect("index.jsp");
	}
} else {
	request.setAttribute("msg", "이미 존재하는 카드번호입니다.");
	RequestDispatcher rd = request.getRequestDispatcher("card_register.jsp");
	rd.forward(request, response);
}
%>