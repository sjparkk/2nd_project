package com.itwill.watch.domain;

public class OrderDetail {
	/*
 이름            널?       유형         
------------- -------- ---------- 
ORDERDETAILNO NOT NULL NUMBER(30) 
ORDERQTY               NUMBER(30) 
ORDERNO                NUMBER(30) 
PRODUCTNO              NUMBER(30) 
	 */
	private int orderDetailNo;
	private int orderQty;
	private int orderNo;
	private int productNo;
	private Product product;
	public OrderDetail() {
		// TODO Auto-generated constructor stub
	}
	
	public OrderDetail(int orderDetailNo, int orderQty, int orderNo, int productNo) {
		this.orderDetailNo = orderDetailNo;
		this.orderQty = orderQty;
		this.orderNo = orderNo;
		this.productNo = productNo;
	}


	public int getOrderDetailNo() {
		return orderDetailNo;
	}


	public void setOrderDetailNo(int orderDetailNo) {
		this.orderDetailNo = orderDetailNo;
	}


	public int getOrderQty() {
		return orderQty;
	}


	public void setOrderQty(int orderQty) {
		this.orderQty = orderQty;
	}


	public int getOrderNo() {
		return orderNo;
	}


	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}


	public int getProductNo() {
		return productNo;
	}


	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}


	public Product getProduct() {
		return product;
	}


	public void setProduct(Product product) {
		this.product = product;
	}


	@Override
	public String toString() {
		return "OrderDetail [orderDetailNo=" + orderDetailNo + ", orderQty=" + orderQty + ", orderNo=" + orderNo
				+ ", productNo=" + productNo + ", product=" + product + "]";
	}
	
	
	
	
	
	
}
