package com.itwill.watch.dao;

import java.util.List;

import com.itwill.watch.domain.OrderInfo;

public interface OrderInfoDao {

	List<OrderInfo> findAllOrder(int userNo);

	OrderInfo findOrderByNo(int orderNo);
	
	 int deleteOrderOne(int orderNo);
	 
	 int deleteOrderAll(int userNo);
	
	 List<OrderInfo> findOrderAllByNo(int userNo);
	 
	 int insertOrderInfo(OrderInfo orderInfo);

}