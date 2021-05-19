package com.itwill.watch.dao;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.itwill.watch.dao.mapper.CardMapper;
import com.itwill.watch.domain.Card;

public class CardDaoImpl implements CardDao {
	private SqlSessionFactory sqlSessionFactory;

	public CardDaoImpl() {
		try {
			InputStream mybatisConfigInputStream = Resources.getResourceAsStream("mybatis-config.xml");
			SqlSessionFactoryBuilder sqlSessionFactoryBuilder = new SqlSessionFactoryBuilder();
			this.sqlSessionFactory = sqlSessionFactoryBuilder.build(mybatisConfigInputStream);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public int registerCard(Card card) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		CardMapper cardMapper = sqlSession.getMapper(CardMapper.class);
		int row = cardMapper.registerCard(card);
		sqlSession.commit();
		sqlSession.close();
		return row;
	}

	@Override
	public int unregisterCard(int cardNo) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		CardMapper cardMapper = sqlSession.getMapper(CardMapper.class);
		int row = cardMapper.unregisterCard(cardNo);
		sqlSession.commit();
		sqlSession.close();
		return row;
	}

	@Override
	public List<Card> cardListByUserNo(int userNo) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		CardMapper cardMapper = sqlSession.getMapper(CardMapper.class);
		List<Card> cardListByUserNo = cardMapper.cardListByUserNo(userNo);
		sqlSession.commit();
		sqlSession.close();
		return cardListByUserNo;
	}

	@Override
	public int existenceCheckCardNo(String cardId) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		CardMapper cardMapper = sqlSession.getMapper(CardMapper.class);
		int existenceCheckCardNo = cardMapper.existenceCheckCardNo(cardId);
		sqlSession.commit();
		sqlSession.close();
		return existenceCheckCardNo;
	}

	@Override
	public String cardIdByCardNo(int cardNo) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		CardMapper cardMapper = sqlSession.getMapper(CardMapper.class);
		String cardIdByCardNo = cardMapper.cardIdByCardNo(cardNo);
		sqlSession.commit();
		sqlSession.close();
		return cardIdByCardNo;
	}

}
