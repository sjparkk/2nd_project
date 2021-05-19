<%@page import="com.itwill.watch.service.UserInfoService"%>
<%@page import="com.itwill.watch.domain.UserInfo"%>
<%@page import="com.itwill.watch.domain.BoardFile"%>
<%@page import="com.itwill.watch.service.BoardFileService"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.itwill.watch.domain.Board"%>
<%@page import="com.itwill.watch.service.BoardService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="login_check.jspf" %>
<!DOCTYPE html>
<%
	if(request.getMethod().equalsIgnoreCase("GET")){
		response.sendRedirect("board_write_form.jsp");
		return;
	}
	request.setCharacterEncoding("UTF-8");
	String type = request.getParameter("type");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	//String fileName = request.getParameter("fileName");
	
	String orderNo = request.getParameter("orderNo");
	if(orderNo.equals("")|| orderNo==null){
		orderNo = "0";
	}

	Board newBoard = new Board(0,type,null,title,content,0,1,0,sUser.getUserNo(),Integer.parseInt(orderNo));
	BoardService boardService = new BoardService();
	boardService.createBoard(newBoard);
	
	response.sendRedirect("board_list.jsp");
	
	/*
	if(fileName==null){
	}else{
		BoardFile boardFile = new BoardFile(0,fileName,newBoard.getBoardNo());
		BoardFileService boardFileService = new BoardFileService();
		boardFileService.createFile(boardFile);
		response.sendRedirect("board_view.jsp?boardNo="+newBoard.getBoardNo());
	}
	*/
%>