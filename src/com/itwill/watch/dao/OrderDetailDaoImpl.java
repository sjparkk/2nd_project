package com.itwill.watch.dao;

import java.io.InputStream;
import java.util.HashMap;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.itwill.watch.dao.mapper.OrderDetailMapper;
import com.itwill.watch.domain.OrderDetail;

public class OrderDetailDaoImpl implements OrderDetailDao {
	private SqlSessionFactory sqlSessionFactory;
	public OrderDetailDaoImpl() {
		try {
			InputStream mybatisConfigInputStream = Resources.getResourceAsStream("mybatis-config.xml");
			SqlSessionFactoryBuilder sqlSessionFactoryBuilder = new SqlSessionFactoryBuilder();
			this.sqlSessionFactory = sqlSessionFactoryBuilder.build(mybatisConfigInputStream);
		} catch (Exception e) {
			e.printStackTrace();
		}
			
	}
	@Override
	public int insertOrder(OrderDetail orderDetail) throws Exception{
		SqlSession sqlSession=sqlSessionFactory.openSession(true);
		OrderDetailMapper orderInfoMapper=sqlSession.getMapper(OrderDetailMapper.class);
		int row=orderInfoMapper.insertOrder(orderDetail);
		sqlSession.close();
		return row;
	}
	@Override
	public int deleteDetailOrderNo(int orderNo) throws Exception{
		SqlSession sqlSession=sqlSessionFactory.openSession(true);
		OrderDetailMapper orderInfoMapper=sqlSession.getMapper(OrderDetailMapper.class);
		int row=orderInfoMapper.deleteDetailOrderNo(orderNo);
		sqlSession.close();
		return row;
	}
	@Override
	public int deleteDetailDetailNo(int detailNo) throws Exception{
		SqlSession sqlSession=sqlSessionFactory.openSession(true);
		OrderDetailMapper orderInfoMapper=sqlSession.getMapper(OrderDetailMapper.class);
		int row=orderInfoMapper.deleteDetailDetailNo(detailNo);
		sqlSession.close();
		return row;
	}
	@Override
	public int updateDetailQty(HashMap map) throws Exception{
		SqlSession sqlSession=sqlSessionFactory.openSession(true);
		OrderDetailMapper orderInfoMapper=sqlSession.getMapper(OrderDetailMapper.class);
		int row=orderInfoMapper.updateDetailQty(map);
		sqlSession.close();
		return row;
	}
	@Override
	public int isExistedOrderNo(int orderNo) throws Exception {
		SqlSession sqlSession=sqlSessionFactory.openSession(true);
		OrderDetailMapper orderInfoMapper=sqlSession.getMapper(OrderDetailMapper.class);
		int row=orderInfoMapper.isExistedOrderNo(orderNo);
		sqlSession.close();
		return row;
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
