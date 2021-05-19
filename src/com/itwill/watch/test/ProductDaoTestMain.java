package com.itwill.watch.test;

import com.itwill.watch.dao.ProductDao;
import com.itwill.watch.dao.ProductDaoImpl;
import com.itwill.watch.domain.Product;

public class ProductDaoTestMain {

	public static void main(String[] args) throws Exception {
		ProductDao productDao = new ProductDaoImpl();
		
		//System.out.println(productDao.productAllList());
		//System.out.println(productDao.insertProduct(new Product(0, "시계1", 200000, "시계입니다.", "watch.gif", 20)));
		//productDao.deleteProductByNo(12);		
		//System.out.println(productDao.productListByPriceOrderAsc());
		//System.out.println(productDao.productListByPriceOrderDesc());
		//productDao.updateQtyByNo(11);
		System.out.println(productDao.findProductBySearchWord("오"));		
		
		
		
	}

}
