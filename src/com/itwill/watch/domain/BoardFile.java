package com.itwill.watch.domain;

public class BoardFile {
	/*
	이름          널?       유형            
	----------- -------- ------------- 
	BOARDFILENO NOT NULL NUMBER(30)    
	FILENAME             VARCHAR2(100) 
	BOARDNO              NUMBER(30)    
	*/
	
	
	private int boardFileNo;
	private String fileName;
	private int boardNo;
	
	public BoardFile() {
		// TODO Auto-generated constructor stub
	}

	public BoardFile(int boardFileNo, String fileName, int boardNo) {
		super();
		this.boardFileNo = boardFileNo;
		this.fileName = fileName;
		this.boardNo = boardNo;
	}

	public int getBoardFileNo() {
		return boardFileNo;
	}

	public void setBoardFileNo(int boardFileNo) {
		this.boardFileNo = boardFileNo;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	@Override
	public String toString() {
		return "BoardFile [boardFileNo=" + boardFileNo + ", fileName=" + fileName + ", boardNo=" + boardNo + "]";
	}
	
}
