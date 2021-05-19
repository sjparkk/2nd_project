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
	request.setCharacterEncoding("UTF-8");
	String type = request.getParameter("type");
	String orderNo = request.getParameter("orderNo");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String groupNo = request.getParameter("groupNo");
	//String fileName = request.getParameter("fileName");
	
	BoardService boardService = new BoardService();
	
	Board newBoard = new Board(0,type,null,title,content,Integer.parseInt(groupNo),1,0,sUser.getUserNo());
	boardService.createBoardComment(newBoard);
	
	response.sendRedirect("board_list.jsp");
	
	/*
	if(fileName!=null){
		BoardFile boardFile = new BoardFile(0,fileName,newBoard.getBoardNo());
		BoardFileService boardFileService = new BoardFileService();
		boardFileService.createFile(boardFile);
	}
	*/
	
	
%>