package com.itwill.watch.service;

import java.util.List;

import com.itwill.watch.dao.CartDao;
import com.itwill.watch.dao.CartDaoImpl;
import com.itwill.watch.domain.Cart;

public class CartService {
	private CartDao cartDao;
	public CartService() throws Exception{
		cartDao = new CartDaoImpl();
	}
	
	public int insertCart(Cart cart) throws Exception{
		return cartDao.insertCart(cart);
	}

	public List<Cart> findCartListByUserNo(Integer userno) throws Exception{
		return cartDao.findCartListByUserNo(userno);
	}

	public int UpdateCartByUserNoAndProductNo(Cart cart) throws Exception{
		return cartDao.UpdateCartByUserNoAndProductNo(cart);
	}

	public int DeleteCartByCartNo(Integer cartno) throws Exception{
		return cartDao.DeleteCartByCartNo(cartno);
	}

	public int AllDeleteCart(Integer userno) throws Exception{
		return cartDao.AllDeleteCart(userno);
	}
	
	public int findCartQtyByCartNo(Integer cartno) throws Exception{
		return cartDao.findCartQtyByCartNo(cartno);
	}
	
	public Cart findCartByProductNoAndUserNo(Cart cart) throws Exception {
		return cartDao.findCartByProductNoAndUserNo(cart);
	}
}
