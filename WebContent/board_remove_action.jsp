<%@page import="com.itwill.watch.domain.Board"%>
<%@page import="com.itwill.watch.service.BoardService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="login_check.jspf" %>
<!DOCTYPE html>
<%
	if(request.getMethod().equalsIgnoreCase("GET")){
		response.sendRedirect("board_list.jsp");
	}
	try{
		Integer boardNo = Integer.parseInt(request.getParameter("boardNo"));
		int groupNo = Integer.parseInt(request.getParameter("groupNo"));
		int step = Integer.parseInt(request.getParameter("step"));
	
		BoardService boardService = new BoardService();
		int isExisted = boardService.isExistedCommByGroupNo(groupNo);
		if(isExisted==1 && step==1){
			//답글 있음
			out.println("<script>");
			out.println("alert('답글이 존재하여 삭제할 수 없습니다.');");
			out.println("location.href='board_list.jsp';");
			out.println("</script>");
	
		}else {
			//삭제하려는 글이 답글이거나 답글이 없으면 삭제
			boardService.removeBoard(boardNo);
			out.println("<script>");
			out.println("alert('삭제되었습니다.');");
			out.println("location.href='board_list.jsp';");
			out.println("</script>");
		}
	}catch(Exception ex){
		ex.printStackTrace();
		response.sendRedirect("board_list.jsp");
	}
	
%>