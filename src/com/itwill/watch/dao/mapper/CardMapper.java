package com.itwill.watch.dao.mapper;

import java.util.List;

import com.itwill.watch.domain.Card;

public interface CardMapper {
	public int registerCard(Card card);

	public int unregisterCard(Integer cardNo);

	public List<Card> cardListByUserNo(Integer userNo);

	public int existenceCheckCardNo(String cardId);

	public String cardIdByCardNo(Integer cardNo);

}
