package com.itwill.watch.domain;

import java.util.Date;

public class UserInfo {
	/*
	 이름         널?       유형            
	---------- -------- ------------- 
	USERNO    NOT NULL  NUMBER(10)    
	USERID          	VARCHAR2(50)         
	userPassword        VARCHAR2(50)   
	email	            VARCHAR2(50) 
	phone	            VARCHAR2(50) 
	zipCode             NUMBER(10)	
	address				VARCHAR2(100)
	userJoinDate		DATE
	userPaymentPassword NUMBER(10)
	 */
	private int userNo;
	private String userId;
	private String userPassword;
	private String email;
	private String phone;
	private int zipCode;
	private String address;
	private Date userJoinDate;
	private int userPaymentPassword;

public UserInfo() {}
	
public UserInfo(int userNo, String userId, String userPassword, String email, String phone, int zipCode, String address, Date userJoinDate, int userPaymentPassword) {
	super();
	this.userNo= userNo;
	this.userId= userId;
	this.userPassword = userPassword;
	this.email = email;
	this.phone = phone;
	this.zipCode = zipCode;
	this.address = address;
	this.userJoinDate = userJoinDate;
	this.userPaymentPassword = userPaymentPassword;
}


	public int getUserNo() {
	return userNo;
}

public void setUserNo(int userNo) {
	this.userNo = userNo;
}

public String getUserId() {
	return userId;
}

public void setUserId(String userId) {
	this.userId = userId;
}

public String getUserPassword() {
	return userPassword;
}

public void setUserPassword(String userPassword) {
	this.userPassword = userPassword;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getPhone() {
	return phone;
}

public void setPhone(String phone) {
	this.phone = phone;
}

public int getZipCode() {
	return zipCode;
}

public void setZipCode(int zipCode) {
	this.zipCode = zipCode;
}

public String getAddress() {
	return address;
}

public void setAddress(String address) {
	this.address = address;
}

public Date getUserJoinDate() {
	return userJoinDate;
}

public void setUserJoinDate(Date userJoinDate) {
	this.userJoinDate = userJoinDate;
}

public int getUserPaymentPassword() {
	return userPaymentPassword;
}

public void setUserPaymentPassword(int userPaymentPassword) {
	this.userPaymentPassword = userPaymentPassword;
}
/*
 *패쓰워드 일치여부 검사 
 */
public boolean isMatchPassword(String password){
	boolean isMatch=false;
	if(this.userPassword.equals(password)){
		isMatch=true;
	}
	return isMatch;
}

	@Override
	public String toString() {
		return "userInfo [userNo=" + userNo + ", userId=" + userId + ", userPassword=" + userPassword + ", email="
				+ email + ", phone=" + phone + ", zipCode=" + zipCode + ", address=" + address + ", userJoinDate="
				+ userJoinDate + ", userPaymentPassword=" + userPaymentPassword + "]";
	}

}
