package com.itwill.watch.test;

import com.itwill.watch.dao.CardDao;
import com.itwill.watch.dao.CardDaoImpl;
import com.itwill.watch.domain.Card;

public class CardDaoTestMain {

	public static void main(String[] args) throws Exception {
		CardDao cardDao = new CardDaoImpl();
		Card card = new Card(0, "1234-4321-1234-4321", 123, "02/23", 2222, 10);
		//cardDao.registerCard(new Card("1234-4321-1234-4321", 123, "02/23", 1234, 10));

		//cardDao.unregisterCard("1234-4321-1234-4321");

		System.out.println(cardDao.cardListByUserNo(1));

		System.out.println(cardDao.existenceCheckCardNo("1111-1111-1111-1111"));
		System.out.println(cardDao.existenceCheckCardNo("1111-1111-9999-1111"));
		
		System.out.println(cardDao.cardIdByCardNo(2));

	}

}
