package com.itwill.watch.service;

import java.util.List;

import com.itwill.watch.dao.OrderInfoDao;
import com.itwill.watch.dao.OrderInfoDaoImpl;
import com.itwill.watch.domain.OrderInfo;

public class OrderInfoService {
	//private static OrderInfoService _instance=null;
	private OrderInfoDao orderInfoDao;
	/*
	public static OrderInfoService getInstance() {
		if(_instance==null) {
			_instance=new OrderInfoService();
			
		}
		return _instance;
	}
	*/
	public OrderInfoService() {
		orderInfoDao=new OrderInfoDaoImpl();
	}
	/*
	 * orderinfo select by userno
	 */
	public List<OrderInfo> findAllOrder(int userNo){
		return orderInfoDao.findAllOrder(userNo);	
	}
	
	
	
	
	/*
	 * orderinfo INSERT
	 */
	public int insertOrderInfo(OrderInfo orderInfo) {
		return orderInfoDao.insertOrderInfo(orderInfo);
	}
	
	/*
	 * orderinfo DELETE BY USERNO
	 */
	
	public int deleteOrderAll(int userNo) {
		return orderInfoDao.deleteOrderAll(userNo);
	}
	
	/*
	 * orderinfo DELETE BY ORDERNO
	 */
	public  int deleteOrderOne(int orderNo) {
		return orderInfoDao.deleteOrderOne(orderNo);
	}
	
	
	/*
	 * orderinfo SELECT BY ORDERNO
	 */
	public OrderInfo findOrderByNo(int orderNo) {
		return orderInfoDao.findOrderByNo(orderNo);
	}
	
	
	/*
	 * orderinfo ALL SELECT BY USERNO
	 */
	public  List<OrderInfo> findOrderAllByNo(int userNo){
		return orderInfoDao.findOrderAllByNo(userNo);
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
