<%@page import="java.net.URLEncoder"%>
<%@page import="com.itwill.watch.exception.PasswordMismatchException"%>
<%@page import="com.itwill.watch.exception.UserNotFoundException"%>
<%@page import="com.itwill.watch.domain.UserInfo"%>
<%@page import="com.itwill.watch.service.UserInfoService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
if (request.getMethod().equalsIgnoreCase("GET")) {
	response.sendRedirect("login.jsp");
	return;
}
String userId = null;
String password = null;

try {
	userId = request.getParameter("userId");
	password = request.getParameter("password");
	UserInfoService userService = new UserInfoService();
	UserInfo sUser = userService.login(userId, password);

	session.setAttribute("sUserId", userId);
	session.setAttribute("sUser", sUser);

	String referer = request.getParameter("referer");

	if (referer.equals("null")) {
		referer = "http://localhost/2nd-project-team1-watch/index.jsp";
	}

	System.out.print(referer);
	response.sendRedirect(referer);
	return;

} catch (UserNotFoundException e) {

	response.sendRedirect("login.jsp?msg1=" + URLEncoder.encode(e.getMessage(), "UTF-8"));

} catch (PasswordMismatchException e) {

	response.sendRedirect("login.jsp?msg2=" + URLEncoder.encode(e.getMessage(), "UTF-8"));

} catch (Exception e) {
	e.printStackTrace();
	response.sendRedirect("user_error.jsp");
}
%>