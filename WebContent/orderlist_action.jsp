<%@page import="com.itwill.watch.service.OrderInfoService"%>
<%@page import="com.itwill.watch.service.OrderDetailService"%>
<%@page import="com.itwill.watch.domain.OrderDetail"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
if(request.getMethod().equalsIgnoreCase("GET")){
	response.sendRedirect("index.jsp");
	return;
}
request.setCharacterEncoding("UTF-8");
OrderDetailService orderDetailService=new OrderDetailService();
OrderInfoService orderInfoService=new OrderInfoService();

String orderNo = request.getParameter("orderNo");


orderDetailService.deleteDetailOrderNo(Integer.parseInt(orderNo));
orderInfoService.deleteOrderOne(Integer.parseInt(orderNo));

response.sendRedirect("orderlist.jsp");




%>