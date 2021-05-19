package com.itwill.watch.dao;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.itwill.watch.dao.mapper.OrderInfoMapper;
import com.itwill.watch.domain.OrderInfo;



public class OrderInfoDaoImpl implements OrderInfoDao {
	private SqlSessionFactory sqlSessionFactory;
	public OrderInfoDaoImpl() {
		try {
			InputStream mybatisConfigInputStream = Resources.getResourceAsStream("mybatis-config.xml");
			SqlSessionFactoryBuilder sqlSessionFactoryBuilder = new SqlSessionFactoryBuilder();
			this.sqlSessionFactory = sqlSessionFactoryBuilder.build(mybatisConfigInputStream);
		} catch (Exception e) {
			e.printStackTrace();
		}
			
	}
	@Override
	public List<OrderInfo> findAllOrder(int userNo){
		SqlSession sqlSession=sqlSessionFactory.openSession(true);
		OrderInfoMapper orderInfoMapper=sqlSession.getMapper(OrderInfoMapper.class);
		List<OrderInfo> orderInfoList=orderInfoMapper.findAllOrder(userNo);
		sqlSession.close();
		return orderInfoList;
	}
	@Override
	public OrderInfo findOrderByNo(int orderNo){
		SqlSession sqlSession=sqlSessionFactory.openSession(true);
		OrderInfoMapper orderInfoMapper=sqlSession.getMapper(OrderInfoMapper.class);
		OrderInfo orderInfo=
				orderInfoMapper.findOrderByNo(orderNo);
		sqlSession.close();
		return orderInfo;
	}
	@Override
	public int deleteOrderOne(int orderNo) {
		SqlSession sqlSession=sqlSessionFactory.openSession(true);
		OrderInfoMapper orderInfoMapper=sqlSession.getMapper(OrderInfoMapper.class);
		int row=orderInfoMapper.deleteOrderOne(orderNo);
		return row;
	}
	@Override
	public int deleteOrderAll(int userNo) {
		SqlSession sqlSession=sqlSessionFactory.openSession(true);
		OrderInfoMapper orderInfoMapper=sqlSession.getMapper(OrderInfoMapper.class);
		int row=orderInfoMapper.deleteOrderAll(userNo);
		return row;
	}
	@Override
	public List<OrderInfo> findOrderAllByNo(int userNo) {
		SqlSession sqlSession=sqlSessionFactory.openSession(true);
		OrderInfoMapper orderInfoMapper=sqlSession.getMapper(OrderInfoMapper.class);
		List<OrderInfo> orderInfoList=
				orderInfoMapper.findOrderAllByNo(userNo);
		sqlSession.close();
		return orderInfoList;
	}
	@Override
	public int insertOrderInfo(OrderInfo orderInfo) {
		SqlSession sqlSession=sqlSessionFactory.openSession(true);
		OrderInfoMapper orderInfoMapper=sqlSession.getMapper(OrderInfoMapper.class);
		int row=orderInfoMapper.insertOrderInfo(orderInfo);
		sqlSession.close();
		return row;
	}
	
	
	
	
	
	
	
	
	
	
}
