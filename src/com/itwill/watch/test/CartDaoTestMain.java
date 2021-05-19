package com.itwill.watch.test;

import com.itwill.watch.dao.CartDao;
import com.itwill.watch.dao.CartDaoImpl;
import com.itwill.watch.domain.Cart;
import com.itwill.watch.domain.Product;

public class CartDaoTestMain {
	public static void main(String[] args) throws Exception{
		CartDao cartDao = new CartDaoImpl();
//		Product product = new Product(99, "test", 12000, "시계","watch.png", 10);
		Cart cart = new Cart(99, 1, 1, 3);
		Cart cart1 = new Cart(1,10,1,1);
		Cart cart23 = new Cart(23,2,2,1);
//		insertCart test
//		System.out.println(cartDao.insertCart(cart));
		
//		findCartListByUserNo test
//		System.out.println(cartDao.findCartListByUserNo(2));
		
//		UpdateCartByUserNoAndProductNo test
//		System.out.println(cartDao.UpdateCartByUserNoAndProductNo(cart1));
		
//		DeleteCart By CartNo test
//		System.out.println(cartDao.DeleteCartByCartNo(12));
		
//		AllDeleteCart test
//		System.out.println(cartDao.AllDeleteCart(4));
		
//		findCartQtyByCartNo test
//		System.out.println(cartDao.findCartQtyByCartNo(3));
		
//		findCart ByProductNo And UserNo test
//		System.out.println(cartDao.findCartByProductNoAndUserNo(cart23));
	}
}
