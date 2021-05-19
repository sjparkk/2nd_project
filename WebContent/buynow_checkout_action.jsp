<%@page import="com.itwill.watch.service.ProductService"%>
<%@page import="java.util.List"%>
<%@page import="com.itwill.watch.domain.OrderDetail"%>
<%@page import="com.itwill.watch.domain.OrderInfo"%>
<%@page import="com.itwill.watch.service.OrderDetailService"%>
<%@page import="com.itwill.watch.service.OrderInfoService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

if(request.getMethod().equalsIgnoreCase("GET")){
	response.sendRedirect("index.jsp");
	return;
}
OrderDetailService orderDetailService=new OrderDetailService();
OrderInfoService orderInfoService=new OrderInfoService();
ProductService productService=new ProductService();

int productNo=Integer.parseInt(request.getParameter("productNo"));
int productQty=Integer.parseInt(request.getParameter("productQty"));
String userNo = request.getParameter("userNo");
String card=request.getParameter("card");
String total=request.getParameter("total2");


orderInfoService.insertOrderInfo(new OrderInfo(0,null,Integer.parseInt(total),"시계",Integer.parseInt(userNo),card));
List<OrderInfo>	orderinfoList=orderInfoService.findAllOrder(Integer.parseInt(userNo));
for(OrderInfo orderInfo:orderinfoList){
	System.out.println(orderInfo.getOrderNo());
if(orderDetailService.isExistedOrderNo(orderInfo.getOrderNo())==0)	{
	

		for(int i=0;i<productQty;i++){
		productService.updateQtyByNo(productNo);
		}
	orderDetailService.insertOrder(new OrderDetail(0,productQty,orderInfo.getOrderNo(),productNo));	
	
	}
	
}
	session.removeAttribute("producNo");
	session.removeAttribute("productQty");
	
	response.sendRedirect("orderlist.jsp");

	

%>