package com.itwill.watch.dao.mapper;

import java.util.HashMap;
import java.util.Map;

import com.itwill.watch.domain.OrderDetail;

public interface OrderDetailMapper {
	public int insertOrder(OrderDetail orderDetail);
	public int deleteDetailOrderNo(int orderNo);
	public int deleteDetailDetailNo(int detailNo);
	public int updateDetailQty(HashMap map);
	public int isExistedOrderNo(int orderNo);
}
