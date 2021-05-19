package com.itwill.watch.dao.mapper;

import java.sql.Date;
import java.util.List;


import com.itwill.watch.domain.UserInfo;

public interface UserInfoMapper {
	
	public int registUserInfo(UserInfo userinfo);

	public int updateUser(UserInfo userinfo);

	public int unregistUserInfo(String userId);

	public UserInfo findUser(String userId);
	
		
	public int  existedUser(String userId);

}
