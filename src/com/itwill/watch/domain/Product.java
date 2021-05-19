package com.itwill.watch.domain;

public class Product {
	/*
	 이름           널?       유형            
	------------ -------- ------------- 
	PRODUCTNO    NOT NULL NUMBER(30)    
	PRODUCTNAME           VARCHAR2(50)  
	PRODUCTPRICE          NUMBER(30)    
	PRODUCTDESC           VARCHAR2(100) 
	PRODUCTIMAGE          VARCHAR2(50)  
	PRODUCTQTY            NUMBER(30)  
	 */
	private int productNo;
	private String productName;
	private int productPrice;
	private String productDesc;
	private String productImage;
	private int productQty;
	
	public Product() {
		// TODO Auto-generated constructor stub
	}

	public Product(int productNo, String productName, int productPrice, String productDesc, String productImage,
			int productQty) {
		super();
		this.productNo = productNo;
		this.productName = productName;
		this.productPrice = productPrice;
		this.productDesc = productDesc;
		this.productImage = productImage;
		this.productQty = productQty;
	}

	public int getProductNo() {
		return productNo;
	}

	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	public String getProductDesc() {
		return productDesc;
	}

	public void setProductDesc(String productDesc) {
		this.productDesc = productDesc;
	}

	public String getProductImage() {
		return productImage;
	}

	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}

	public int getProductQty() {
		return productQty;
	}

	public void setProductQty(int productQty) {
		this.productQty = productQty;
	}

	@Override
	public String toString() {
		return "Product [productNo=" + productNo + ", productName=" + productName + ", productPrice=" + productPrice
				+ ", productDesc=" + productDesc + ", productImage=" + productImage + ", productQty=" + productQty
				+ "]";
	}
	
	
}
