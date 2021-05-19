package com.itwill.watch.domain;

import java.sql.Date;

public class Board {

	/*
	이름           널?       유형            
	------------ -------- ------------- 
	BOARDNO      NOT NULL NUMBER(30)    
	BOARDTYPE             VARCHAR2(50)  
	BOARDDATE             DATE          
	BOARDTITLE            VARCHAR2(50)  
	BOARDCONTENT          VARCHAR2(500) 
	GROUPNO               NUMBER(30)    
	STEP                  NUMBER(30)    
	DEPTH                 NUMBER(30)    
	USERNO                NUMBER(10)  
	*/
	
	private int boardNo;
	private String boardType;
	private Date boardDate;
	private String boardTitle;
	private String boardContent;
	private int groupNo;
	private int step;
	private int depth;
	private int userNo;
	private UserInfo userInfo;
	private int orderNo;
	
	public Board() {
		// TODO Auto-generated constructor stub
	}

	
	public Board(int boardNo, String boardType, Date boardDate, String boardTitle, String boardContent, int groupNo,
			int step, int depth, int userNo) {
		super();
		this.boardNo = boardNo;
		this.boardType = boardType;
		this.boardDate = boardDate;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.groupNo = groupNo;
		this.step = step;
		this.depth = depth;
		this.userNo = userNo;
	}

	public Board(int boardNo, String boardType, Date boardDate, String boardTitle, String boardContent, int groupNo,
			int step, int depth, int userNo, UserInfo userInfo) {
		super();
		this.boardNo = boardNo;
		this.boardType = boardType;
		this.boardDate = boardDate;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.groupNo = groupNo;
		this.step = step;
		this.depth = depth;
		this.userNo = userNo;
		this.userInfo = userInfo;
	}
	
	

	public Board(int boardNo, String boardType, Date boardDate, String boardTitle, String boardContent, int groupNo,
			int step, int depth, int userNo, int orderNo) {
		super();
		this.boardNo = boardNo;
		this.boardType = boardType;
		this.boardDate = boardDate;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.groupNo = groupNo;
		this.step = step;
		this.depth = depth;
		this.userNo = userNo;
		this.orderNo = orderNo;
	}


	public int getBoardNo() {
		return boardNo;
	}


	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}


	public String getBoardType() {
		return boardType;
	}


	public void setBoardType(String boardType) {
		this.boardType = boardType;
	}


	public Date getBoardDate() {
		return boardDate;
	}


	public void setBoardDate(Date boardDate) {
		this.boardDate = boardDate;
	}


	public String getBoardTitle() {
		return boardTitle;
	}


	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}


	public String getBoardContent() {
		return boardContent;
	}


	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}


	public int getGroupNo() {
		return groupNo;
	}


	public void setGroupNo(int groupNo) {
		this.groupNo = groupNo;
	}


	public int getStep() {
		return step;
	}


	public void setStep(int step) {
		this.step = step;
	}


	public int getDepth() {
		return depth;
	}


	public void setDepth(int depth) {
		this.depth = depth;
	}


	public UserInfo getUserInfo() {
		return userInfo;
	}


	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}


	public int getUserNo() {
		return userNo;
	}


	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}


	public int getOrderNo() {
		return orderNo;
	}


	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}


	@Override
	public String toString() {
		return "Board [boardNo=" + boardNo + ", boardType=" + boardType + ", boardDate=" + boardDate + ", boardTitle="
				+ boardTitle + ", boardContent=" + boardContent + ", groupNo=" + groupNo + ", step=" + step + ", depth="
				+ depth + ", userNo=" + userNo + ", userInfo=" + userInfo + ", orderNo=" + orderNo + "]";
	}


}
