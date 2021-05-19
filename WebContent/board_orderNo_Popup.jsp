<%@page import="com.itwill.watch.domain.OrderInfo"%>
<%@page import="java.util.List"%>
<%@page import="com.itwill.watch.service.OrderInfoService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="login_check.jspf" %>

<%
	if(sUser == null) {
		out.println("<script>");
		out.println("alert('로그인 해주세요.');");
		out.println("self.close();");
		out.println("</script>");
		return;
	}
	OrderInfoService orderInfoService = new OrderInfoService();
	List<OrderInfo> orderList = orderInfoService.findOrderAllByNo(sUser.getUserNo());
	
	if(orderList.size()==0){
		out.println("<script>");
		out.println("alert('주문내역이 없습니다.');");
		out.println("self.close();");
		out.println("</script>");
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 주문목록</title>
<script type="text/javascript">
	function tt(no_id){
		var no=document.getElementById(no_id).innerHTML;
		opener.f.orderNo.innerHTML=no;
		self.close();
	}

</script>
</head>
<body>
		  <h2>나의 주문목록</h2>
		  <ul class="orderList-group">
		  	<li class="orderList">
		      <span class="no">주문번호</span>
		      <span class="desc">내역</span>
		      <span class="totPrice">총 금액</span>
		      <span class="date">날짜</span>
		    </li>
		<!-- 본문 시작-->
		<%for(OrderInfo order : orderList) {  %>
		    <li class="list-group-item d-flex justify-content-between align-items-center">
		      <span class="no"  id="no_<%=order.getOrderNo()%>"><%=order.getOrderNo() %></span>
		      <span class="desc"><a href="javascript:tt('no_<%=order.getOrderNo()%>');"><%=order.getOrderDesc() %></a></span>
		      <span class="totPrice"><%=order.getOrderPrice() %></span>
		      <span class="date"><%=order.getOrderDate() %></span>
		    </li>
		    <%} %>
		<!-- 본문 끝 -->
		  </ul>
		  
</body>
</html>