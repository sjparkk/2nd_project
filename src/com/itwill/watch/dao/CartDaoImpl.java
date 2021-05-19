package com.itwill.watch.dao;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.itwill.watch.dao.mapper.CardMapper;
import com.itwill.watch.dao.mapper.CartMapper;
import com.itwill.watch.domain.Card;
import com.itwill.watch.domain.Cart;


public class CartDaoImpl implements CartDao {
	private SqlSessionFactory sqlSessionFactory;

	public CartDaoImpl() {
		try {
			InputStream mybatisConfigInputStream = Resources.getResourceAsStream("mybatis-config.xml");
			SqlSessionFactoryBuilder sqlSessionFactoryBuilder = new SqlSessionFactoryBuilder();
			this.sqlSessionFactory = sqlSessionFactoryBuilder.build(mybatisConfigInputStream);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public int insertCart(Cart cart) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		CartMapper cartMapper = sqlSession.getMapper(CartMapper.class);
		int row = cartMapper.insertCart(cart);
		sqlSession.commit();
		sqlSession.close();
		return row;
	}

	@Override
	public List<Cart> findCartListByUserNo(Integer userno) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		CartMapper cartMapper = sqlSession.getMapper(CartMapper.class);
		List<Cart> cartList = cartMapper.findCartListByUserNo(userno);
		sqlSession.commit();
		sqlSession.close();
		return cartList;
	}

	@Override
	public int UpdateCartByUserNoAndProductNo(Cart cart) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		CartMapper cartMapper = sqlSession.getMapper(CartMapper.class);
		int row = cartMapper.UpdateCartByUserNoAndProductNo(cart);
		sqlSession.commit();
		sqlSession.close();
		return row;
	}

	@Override
	public int DeleteCartByCartNo(Integer cartno) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		CartMapper cartMapper = sqlSession.getMapper(CartMapper.class);
		int row = cartMapper.DeleteCartByCartNo(cartno);
		sqlSession.commit();
		sqlSession.close();
		return row;
	}

	@Override
	public int AllDeleteCart(Integer userno) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		CartMapper cartMapper = sqlSession.getMapper(CartMapper.class);
		int row = cartMapper.AllDeleteCart(userno);
		sqlSession.commit();
		sqlSession.close();
		return row;
	}

	@Override
	public int findCartQtyByCartNo(Integer cartno) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		CartMapper cartMapper = sqlSession.getMapper(CartMapper.class);
		int row = cartMapper.findCartQtyByCartNo(cartno);
		sqlSession.commit();
		sqlSession.close();
		return row;
	}
	
	@Override
	public Cart findCartByProductNoAndUserNo(Cart cart) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		CartMapper cartMapper = sqlSession.getMapper(CartMapper.class);
		Cart findCart = cartMapper.findCartByProductNoAndUserNo(cart);
		sqlSession.commit();
		sqlSession.close();
		return findCart;
	}
}
