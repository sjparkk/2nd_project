package com.itwill.watch.dao.mapper;

import java.util.List;

import com.itwill.watch.domain.Cart;

public interface CartMapper {
	public int insertCart(Cart cart);
	
	public List<Cart> findCartListByUserNo(int userno);
	
	public int UpdateCartByUserNoAndProductNo(Cart cart);
	
	public int DeleteCartByCartNo(Integer cartno);
	
	public int AllDeleteCart(Integer userno);
	
	public int findCartQtyByCartNo(Integer cartno);
	
	public Cart findCartByProductNoAndUserNo(Cart cart);
}
