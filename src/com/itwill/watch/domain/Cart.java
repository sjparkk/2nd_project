package com.itwill.watch.domain;

public class Cart {
/*
 이름         널?       유형         
---------- -------- ---------- 
CARTNO     NOT NULL NUMBER(30) 
PRODUCTQTY          NUMBER(30) 
USERNO              NUMBER(10) 
PRODUCTNO           NUMBER(30) 
 */
	private int cartno;
	private int productqty;
	private int userno;
	private int productno;
	
	public Cart() {
		// TODO Auto-generated constructor stub
	}
	
	public Cart(int cartno, int productqty, int userno, int productno) {
		super();
		this.cartno = cartno;
		this.productqty = productqty;
		this.userno = userno;
		this.productno = productno;
	}

	public int getCartno() {
		return cartno;
	}

	public void setCartno(int cartno) {
		this.cartno = cartno;
	}

	public int getProductqty() {
		return productqty;
	}

	public void setProductqty(int productqty) {
		this.productqty = productqty;
	}

	public int getUserno() {
		return userno;
	}

	public void setUserno(int userno) {
		this.userno = userno;
	}

	public int getProductno() {
		return productno;
	}

	public void setProductno(int productno) {
		this.productno = productno;
	}

	@Override
	public String toString() {
		return "Cart [cartno=" + cartno + ", productqty=" + productqty + ", userno=" + userno + ", productno="
				+ productno + "]";
	}


	

	
}
