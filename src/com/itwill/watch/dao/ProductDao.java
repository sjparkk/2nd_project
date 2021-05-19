package com.itwill.watch.dao;

import java.util.List;

import com.itwill.watch.domain.Product;

public interface ProductDao {
	
	public int insertProduct(Product product) throws Exception;
	
	public List<Product> productAllList() throws Exception;
	
	public int deleteProductByNo(Integer productNo) throws Exception;
	
	public List<Product> productListByPriceOrderDesc() throws Exception;
	
	public List<Product> productListByPriceOrderAsc() throws Exception;
	
	public List<Product> findProductBySearchWord(String searchWord) throws Exception;
	
	public int updateQtyByNo(Integer productNo) throws Exception;
	
	public Product findProductByNo(Integer productNo) throws Exception;
}
