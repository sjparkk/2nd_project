<%@page import="com.itwill.watch.service.BoardService"%>
<%@page import="com.itwill.watch.domain.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="login_check.jspf" %>
<!DOCTYPE html>
<%
	if (request.getMethod().toLowerCase().equals("POST")) {
		 
	}
	request.setCharacterEncoding("UTF-8");
	String boardNo = request.getParameter("boardNo");
	String type = request.getParameter("type");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String step = request.getParameter("step");
	String groupNo = request.getParameter("groupNo");
	String depth = request.getParameter("depth");
	
	String orderNoStr = request.getParameter("orderNo");

	if(orderNoStr.equals("")||orderNoStr==null){
		orderNoStr = "0";
	}
	
	
	Board board = new Board();
	board.setBoardNo(Integer.parseInt(boardNo));
	board.setBoardType(type);
	board.setBoardDate(null);
	board.setBoardTitle(title);
	board.setBoardContent(content);
	board.setGroupNo(Integer.parseInt(groupNo));
	board.setStep(Integer.parseInt(step));
	board.setDepth(Integer.parseInt(depth));
	board.setUserNo(sUser.getUserNo());
	board.setOrderNo(Integer.parseInt(orderNoStr));
	
	
	BoardService boardService = new BoardService();
	boardService.updateBoard(board);
	
	response.sendRedirect("board_list.jsp");
	
	
%>