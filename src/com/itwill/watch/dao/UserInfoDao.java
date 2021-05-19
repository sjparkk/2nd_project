package com.itwill.watch.dao;

import java.util.List;

import com.itwill.watch.domain.UserInfo;

public interface UserInfoDao {

	public int registUserInfo(UserInfo userInfo) throws Exception;

	public int updateUser(UserInfo userinfo) throws Exception;

	public int unregistUserInfo(String userId) throws Exception;

	public UserInfo findUser(String userId) throws Exception;
		
	public int existedUser(String userId) throws Exception;

	


}
