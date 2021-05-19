package com.itwill.watch.exception;

public class UserNotFoundException extends Exception{
	public UserNotFoundException() {
		
	}
	public UserNotFoundException(String msg) {
		super(msg);
		System.out.println("아이디가 없습니다");
	}
}
