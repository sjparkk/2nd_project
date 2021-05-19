package com.itwill.watch.domain;


import java.sql.Date;
import java.util.List;

public class OrderInfo {
/*
 * 이름         널?       유형            
---------- -------- ------------- 
ORDERNO    NOT NULL NUMBER(30)    
ORDERDATE           DATE          
ORDERPRICE          NUMBER(30)    
ORDERDESC           VARCHAR2(100) 
USERNO              NUMBER(10)    
CARDNO              VARCHAR2(50)  
 */
	private int orderNo;
	private Date orderDate;
	private int orderPrice;
	private String orderDesc;
	private int userNo;
	private String cardNo;
	private List<OrderDetail> orderDetailList;
	public OrderInfo() {
		// TODO Auto-generated constructor stub
	}
	public OrderInfo(int orderNo, Date orderDate, int orderPrice, String orderDesc, int userNo, String cardNo) {
		this.orderNo = orderNo;
		this.orderDate = orderDate;
		this.orderPrice = orderPrice;
		this.orderDesc = orderDesc;
		this.userNo = userNo;
		this.cardNo = cardNo;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public int getOrderPrice() {
		return orderPrice;
	}

	public void setOrderPrice(int orderPrice) {
		this.orderPrice = orderPrice;
	}

	public String getOrderDesc() {
		return orderDesc;
	}

	public void setOrderDesc(String orderDesc) {
		this.orderDesc = orderDesc;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getCardNo() {
		return cardNo;
	}

	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}

	public List<OrderDetail> getOrderDetailList() {
		return orderDetailList;
	}

	public void setOrderDetailList(List<OrderDetail> orderDetailList) {
		this.orderDetailList = orderDetailList;
	}

	@Override
	public String toString() {
		return "OrderInfo [orderNo=" + orderNo + ", orderDate=" + orderDate + ", orderPrice=" + orderPrice
				+ ", orderDesc=" + orderDesc + ", userNo=" + userNo + ", cardNo=" + cardNo + ", orderDetailList="
				+ orderDetailList + "]";
	}
	
	
	
	
	

	
	
	
	
	
	
	
	
	
	

}
