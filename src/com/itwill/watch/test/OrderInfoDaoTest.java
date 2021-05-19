package com.itwill.watch.test;

import java.util.List;

import com.itwill.watch.dao.OrderInfoDao;
import com.itwill.watch.dao.OrderInfoDaoImpl;
import com.itwill.watch.domain.OrderDetail;
import com.itwill.watch.domain.OrderInfo;
import com.itwill.watch.service.OrderInfoService;

public class OrderInfoDaoTest {
	public static void main(String[] args) {
	OrderInfoDao orderInfoDao=new OrderInfoDaoImpl();
	OrderInfoService orderInfoService=new OrderInfoService();
	//System.out.println(orderInfoDao.findAllOrder(2));
	//System.out.println(orderInfoDao.findOrderByNo(8));
//	List<OrderInfo> orderInfoList=orderInfoDao.findOrderAllByNo(3);
//	for (OrderInfo orderInfo : orderInfoList) {
//		System.out.println(orderInfo.getOrderNo());
//	}
	//System.out.println(orderInfoDao.deleteOrderOne(10));
	//System.out.println(orderInfoDao.deleteOrderAll(2));
	System.out.println(orderInfoService.findOrderAllByNo(2));
//	System.out.println(orderInfoService.findOrderByNo(2));
//	OrderInfo orderInfo= orderInfoService.findOrderByNo(2);
//	List<OrderDetail> orderdetailList=orderInfo.getOrderDetailList();
//	for (OrderDetail orderDetail : orderdetailList) {
//		System.out.println(orderDetail.getProductNo());
	//	/System.out.println(orderDetail.getProduct().getProductName());
	//	System.out.println(orderDetail.getOrderQty());
	//	System.out.println("---------------------------------------");
	//}
	
	
//	System.out.println(orderInfoService.insertOrderInfo(new OrderInfo(0,null,1313212,"시계",3,"1")));
	
	
	
	
	
	
	}

}
