package com.itwill.watch.dao.mapper;

import java.util.List;

import com.itwill.watch.domain.OrderInfo;


public interface OrderInfoMapper {
	public List<OrderInfo> findAllOrder(int userNo);
	public OrderInfo findOrderByNo(int orderNo);
	public int deleteOrderOne(int orderNo);
	public int deleteOrderAll(int userNo);
	public List<OrderInfo> findOrderAllByNo(int userNo);
	public int insertOrderInfo(OrderInfo orderInfo);
	
	

}
