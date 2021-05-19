package com.itwill.watch.test;

import java.util.Date;

import com.itwill.watch.dao.UserInfoDao;
import com.itwill.watch.dao.UserInfoDaoImpl;
import com.itwill.watch.domain.UserInfo;

public class UserInfoDaoTestMain {

	public static void main(String[] args) throws Exception {
		UserInfoDao userInfoDao = new UserInfoDaoImpl();
		UserInfo userInfo = new UserInfo(1, "asfd1111", "dfd1234@", "asfd1111@naver.com", "01023456789", 06325,	"서울시강남구", new Date(), 123456);
		UserInfo userInfo1= new  UserInfo(2, "ascd1111", "ddd1234@", "asdd1111@naver.com", "01023546789",06325,	"서울시강남구", new Date(), 123456);
		

		// registUserInfo
		// System.out.println(userInfoDao.registUserInfo(userInfo));
		// System.out.println("2.update:"+userInfoDao.updateUser(userInfo1));
		// System.out.println("3.findUser:"+userInfoDao.findUser("ccc1111"));
		// System.out.println("4.unregistUserInfo:"+userInfoDao.unregistUserInfo(1));
		// System.out.println("6.existedUser:" + userInfoDao.existedUser("aaa1111"));
		 

	}

}
