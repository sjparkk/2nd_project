package com.itwill.watch.dao;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.itwill.watch.dao.mapper.UserInfoMapper;
import com.itwill.watch.domain.UserInfo;

public class UserInfoDaoImpl implements UserInfoDao {
	private SqlSessionFactory sqlSessionFactory;

	public UserInfoDaoImpl() {
		try {
			InputStream mybatisConfigInputStream = Resources.getResourceAsStream("mybatis-config.xml");
			SqlSessionFactoryBuilder sqlSessionFactoryBuilder = new SqlSessionFactoryBuilder();
			this.sqlSessionFactory = sqlSessionFactoryBuilder.build(mybatisConfigInputStream);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public int registUserInfo(UserInfo userinfo) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		UserInfoMapper userInfoMapper = sqlSession.getMapper(UserInfoMapper.class);
		int row = userInfoMapper.registUserInfo(userinfo);
		sqlSession.commit();
		sqlSession.close();
		return row;
	}

	@Override
	public int updateUser(UserInfo userinfo) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		UserInfoMapper userInfoMapper = sqlSession.getMapper(UserInfoMapper.class);
		int row = userInfoMapper.updateUser(userinfo);
		sqlSession.commit();
		sqlSession.close();
		return row;
	}

	@Override
	public int unregistUserInfo(String userId) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		UserInfoMapper userInfoMapper = sqlSession.getMapper(UserInfoMapper.class);
		int row = userInfoMapper.unregistUserInfo(userId);
		sqlSession.commit();
		sqlSession.close();
		return row;
	}

	@Override
	public UserInfo findUser(String userId) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		UserInfoMapper userInfoMapper = sqlSession.getMapper(UserInfoMapper.class);
		UserInfo infoVO = userInfoMapper.findUser(userId);
		sqlSession.commit();
		sqlSession.close();
		return infoVO;
	}


	@Override
	public int existedUser(String userId) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		UserInfoMapper userInfoMapper = sqlSession.getMapper(UserInfoMapper.class);
		int existedUser = userInfoMapper.existedUser(userId);
		sqlSession.commit();
		sqlSession.close();
		return existedUser;
	}

}
