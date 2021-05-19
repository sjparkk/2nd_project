package com.itwill.watch.test;

import com.itwill.watch.service.OrderDetailService;

public class OrderDetailServiceTest {
	public static void main(String[] args) throws Exception{
		OrderDetailService orderDetailService=new OrderDetailService();
		
		
		//System.out.println(orderDetailService.insertOrder(new OrderDetail(3, 3, 3, 3)));
		//System.out.println(orderDetailService.deleteDetailDetailNo(15));
		//System.out.println(orderDetailService.deleteDetailOrderNo(8));
	//	System.out.println(orderDetailService.updateDetailQty(6, 4));
		System.out.println(orderDetailService.isExistedOrderNo(4));
		
	}

}
