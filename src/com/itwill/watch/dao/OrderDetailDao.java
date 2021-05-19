package com.itwill.watch.dao;

import java.util.HashMap;

import com.itwill.watch.domain.OrderDetail;

public interface OrderDetailDao {

	int insertOrder(OrderDetail orderDetail) throws Exception;

	int deleteDetailOrderNo(int orderNo) throws Exception;

	int deleteDetailDetailNo(int detailNo) throws Exception;

	int updateDetailQty(HashMap map) throws Exception;
	
	int isExistedOrderNo(int orderNo) throws Exception;

}