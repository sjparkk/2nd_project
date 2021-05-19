package com.itwill.watch.service;

import java.util.HashMap;

import com.itwill.watch.dao.OrderDetailDao;
import com.itwill.watch.dao.OrderDetailDaoImpl;
import com.itwill.watch.domain.OrderDetail;

public class OrderDetailService {
	private OrderDetailDao orderDetailDao;
	public OrderDetailService() {
		orderDetailDao=new OrderDetailDaoImpl();
	}
	public int insertOrder(OrderDetail orderDetail) throws Exception{
		return orderDetailDao.insertOrder(orderDetail);
	}
	public int deleteDetailOrderNo(int orderNo)throws Exception {
		return orderDetailDao.deleteDetailOrderNo(orderNo);
	}
	public int deleteDetailDetailNo(int detailNo) throws Exception{
		return orderDetailDao.deleteDetailDetailNo(detailNo);
	}
	public int updateDetailQty(int orderDetailNo ,int updateQty) throws Exception{
		HashMap hashMap=new HashMap();
		hashMap.put("orderDetailNo", orderDetailNo);
		hashMap.put("updateQty", updateQty);
		
		return orderDetailDao.updateDetailQty(hashMap);
	}
	public int isExistedOrderNo(int orderNo) throws Exception{
		
		return orderDetailDao.isExistedOrderNo(orderNo);
	}

}
