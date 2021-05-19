package com.itwill.watch.domain;

public class Card {
	private int cardNo;
	private String cardId;
	private int cvc;
	private String cardEXP;
	private int cardPassword;
	private int userNo;

	public Card() {
		// TODO Auto-generated constructor stub
	}

	public Card(int cardNo, String cardId, int cvc, String cardEXP, int cardPassword, int userNo) {
		super();
		this.cardNo = cardNo;
		this.cardId = cardId;
		this.cvc = cvc;
		this.cardEXP = cardEXP;
		this.cardPassword = cardPassword;
		this.userNo = userNo;
	}

	public int getCardNo() {
		return cardNo;
	}

	public void setCardNo(int cardNo) {
		this.cardNo = cardNo;
	}

	public String getCardId() {
		return cardId;
	}

	public void setCardId(String cardId) {
		this.cardId = cardId;
	}

	public int getCvc() {
		return cvc;
	}

	public void setCvc(int cvc) {
		this.cvc = cvc;
	}

	public String getCardEXP() {
		return cardEXP;
	}

	public void setCardEXP(String cardEXP) {
		this.cardEXP = cardEXP;
	}

	public int getCardPassword() {
		return cardPassword;
	}

	public void setCardPassword(int cardPassword) {
		this.cardPassword = cardPassword;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	@Override
	public String toString() {
		return "Card [cardNo=" + cardNo + ", cardId=" + cardId + ", cvc=" + cvc + ", cardEXP=" + cardEXP
				+ ", cardPassword=" + cardPassword + ", userNo=" + userNo + "]";
	}

}
