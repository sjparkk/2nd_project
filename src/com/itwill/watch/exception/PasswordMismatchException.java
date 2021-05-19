package com.itwill.watch.exception;

public class PasswordMismatchException extends Exception {
	public PasswordMismatchException() {
		// TODO Auto-generated constructor stub
	}
	public PasswordMismatchException(String msg) {
		super(msg);
		System.out.println("잘못된 비밀번호입니다");
	}
}
