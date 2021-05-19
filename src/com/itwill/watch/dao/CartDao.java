package com.itwill.watch.dao;

import java.util.List;

import com.itwill.watch.domain.Card;
import com.itwill.watch.domain.Cart;
//
public interface CartDao {
	public int insertCart(Cart cart) throws Exception;

	public List<Cart> findCartListByUserNo(Integer userno) throws Exception;

	public int UpdateCartByUserNoAndProductNo(Cart cart) throws Exception;

	public int DeleteCartByCartNo(Integer cartno) throws Exception;

	public int AllDeleteCart(Integer userno) throws Exception;
	
	public int findCartQtyByCartNo(Integer cartno) throws Exception;
	
	public Cart findCartByProductNoAndUserNo(Cart cart) throws Exception;
}
