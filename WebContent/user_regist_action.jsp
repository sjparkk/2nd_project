<%@page import="java.util.Date"%>
<%@page import="com.itwill.watch.service.UserInfoService"%>
<%@page import="com.itwill.watch.domain.UserInfo"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%


try {

	
	request.setCharacterEncoding("UTF-8");
	String userId = request.getParameter("userId");
	String userPassword = request.getParameter("userPassword");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	int zipCode = Integer.parseInt(request.getParameter("zipCode"));
	String address = request.getParameter("address");
	Date userJoinDate =new Date();
	int userPaymentPassword = Integer.parseInt(request.getParameter("userPaymentPassword"));
	
	
	UserInfoService userInfoService = new UserInfoService();
	
	UserInfo userInfo = new UserInfo(0,userId, userPassword, email, phone, zipCode, address,userJoinDate,userPaymentPassword);
	
	int rowCount = userInfoService.registUserInfo(userInfo);
	
	response.sendRedirect("index.jsp");

} catch (Exception e) {
	//알수없는예외
	e.printStackTrace();
	response.sendRedirect("user_error.jsp");
}

%>















