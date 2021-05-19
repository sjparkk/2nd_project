package com.itwill.watch.service;

import java.util.List;

import com.itwill.watch.dao.CardDao;
import com.itwill.watch.dao.CardDaoImpl;
import com.itwill.watch.domain.Card;

public class CardService {
	private CardDao cardDao;

	public CardService() throws Exception {
		cardDao = new CardDaoImpl();
	}

	public int registerCard(Card card) throws Exception {
		return cardDao.registerCard(card);
	}

	public int unregisterCard(int cardNo) throws Exception {
		return cardDao.unregisterCard(cardNo);
	}

	public List<Card> cardListByUserNo(int userNo) throws Exception {
		return cardDao.cardListByUserNo(userNo);
	}

	public int existenceCheckCardNo(String cardId) throws Exception {
		return cardDao.existenceCheckCardNo(cardId);
	}
	public String cardIdByCardNo(int cardNo) throws Exception{
		return cardDao.cardIdByCardNo(cardNo);
	}

}
