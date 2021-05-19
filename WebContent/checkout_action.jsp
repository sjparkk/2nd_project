<%@page import="com.itwill.watch.domain.Product"%>
<%@page import="com.itwill.watch.service.ProductService"%>
<%@page import="java.sql.Date"%>
<%@page import="com.itwill.watch.service.OrderInfoService"%>
<%@page import="com.itwill.watch.domain.OrderInfo"%>
<%@page import="com.itwill.watch.domain.OrderDetail"%>
<%@page import="com.itwill.watch.service.OrderDetailService"%>
<%@page import="java.util.List"%>
<%@page import="com.itwill.watch.domain.Cart"%>
<%@page import="com.itwill.watch.service.CartService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
if(request.getMethod().equalsIgnoreCase("GET")){
	response.sendRedirect("index.jsp");
	return;
}
	ProductService productService =new ProductService();
	request.setCharacterEncoding("UTF-8");
	String userNo = request.getParameter("userNo");
	String card=request.getParameter("card");
	String total=request.getParameter("total");
	
	System.out.println(Integer.parseInt(userNo));
	System.out.println(card);
	System.out.println("-----total---"+total);
	OrderInfoService orderInfoService=new OrderInfoService();
	List<Product> productList=productService.productAllList();
	CartService cartService=new CartService();
	OrderDetailService orderDetailService=new OrderDetailService();
	List<Cart> cartList=cartService.findCartListByUserNo(Integer.parseInt(userNo));
	
	
	
	orderInfoService.insertOrderInfo(new OrderInfo(0,null,Integer.parseInt(total),"시계",Integer.parseInt(userNo),card));
	
	
	List<OrderInfo>	orderinfoList=orderInfoService.findAllOrder(Integer.parseInt(userNo));
	
	
	for(OrderInfo orderInfo:orderinfoList){
		System.out.println(orderInfo.getOrderNo());
	if(orderDetailService.isExistedOrderNo(orderInfo.getOrderNo())==0)	{
		
		for(Cart cart:cartList){
			for(int i=0;i<cart.getProductqty();i++){
			productService.updateQtyByNo(cart.getProductno());
			}
		orderDetailService.insertOrder(new OrderDetail(0,cart.getProductqty(),orderInfo.getOrderNo(),cart.getProductno()));	
		
		}
		
		
	}
		
		
	}
	cartService.AllDeleteCart(Integer.parseInt(userNo));
	
	response.sendRedirect("orderlist.jsp");
	
	
	
	
	
	
	
	



%>