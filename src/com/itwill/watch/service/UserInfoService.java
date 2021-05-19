package com.itwill.watch.service;

import com.itwill.watch.dao.UserInfoDao;
import com.itwill.watch.dao.UserInfoDaoImpl;
import com.itwill.watch.domain.UserInfo;
import com.itwill.watch.exception.PasswordMismatchException;
import com.itwill.watch.exception.UserNotFoundException;

public class UserInfoService {
	
	private UserInfoDao UserInfoDao;
	
	public UserInfoService() throws Exception{
		UserInfoDao = new UserInfoDaoImpl();
	}
	/*
	 * 회원로그인
	 */
	public UserInfo login(String userId,String password)throws Exception{
		//1.아이디존재여부
		UserInfo userInfo = UserInfoDao.findUser(userId);
		if(userInfo==null) {
			throw new UserNotFoundException(userId+" 는 존재하지않는 아이디 입니다.");
		}
		//2.패쓰워드일치여부
		if(!userInfo.isMatchPassword(password)) {
			throw new PasswordMismatchException("패쓰워드가 일치하지않습니다.");
		}
		return userInfo;
	}

	public int registUserInfo(UserInfo userInfo) throws Exception {
		return UserInfoDao.registUserInfo(userInfo);
	}

	public UserInfo findUser(String userId) throws Exception {
		return UserInfoDao.findUser(userId);
	}

	public int updateUser(UserInfo userInfo) throws Exception {
		return UserInfoDao.updateUser(userInfo);
	}

	public int unregistUserInfo(String userId) throws Exception {
		return UserInfoDao.unregistUserInfo(userId);
	}
	
	public boolean existedUser(String userId) throws Exception {
		boolean isExist = false;
		int count = UserInfoDao.existedUser(userId);
		if(count==1)isExist=true;
		return isExist;
	}
}
