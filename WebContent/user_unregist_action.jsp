<%@page import="com.itwill.watch.service.UserInfoService"%>
<%@page import="com.itwill.watch.domain.UserInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="login_check.jspf" %>   
<% 

try {
	request.setCharacterEncoding("UTF-8");

	UserInfoService userInfoService = new UserInfoService();
	int removeRowCount=userInfoService.unregistUserInfo(sUserId);

	response.sendRedirect("logout_action.jsp");
} catch (Exception e) {
	e.printStackTrace();
	response.sendRedirect("index.jsp");
}
%>
