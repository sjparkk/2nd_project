package com.itwill.watch.dao;

import java.util.List;

import com.itwill.watch.domain.Card;

public interface CardDao {
	public int registerCard(Card card) throws Exception;

	public int unregisterCard(int cardNo) throws Exception;

	public List<Card> cardListByUserNo(int userNo) throws Exception;

	public int existenceCheckCardNo(String cardId) throws Exception;

	public String cardIdByCardNo(int cardNo) throws Exception;

}
