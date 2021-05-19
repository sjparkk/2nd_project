package com.itwill.watch.test;

import com.itwill.watch.domain.Card;
import com.itwill.watch.service.CardService;

public class CardServiceTestMain {

	public static void main(String[] args) throws Exception {
		CardService cardService = new CardService();
		Card card = new Card(0, "1234-4321-1234-4321", 123, "02/23", 1111, 10);

		cardService.registerCard(card);

		//cardService.unregisterCard(12);

		System.out.println(cardService.cardListByUserNo(3));
		System.out.println(cardService.existenceCheckCardNo("1111-1111-1111-1111"));
		System.out.println(cardService.existenceCheckCardNo("1111-1111-9999-1111"));

	}

}
