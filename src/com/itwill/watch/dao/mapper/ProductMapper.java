package com.itwill.watch.dao.mapper;

import java.util.List;

import com.itwill.watch.domain.Product;

public interface ProductMapper {
	public int insertProduct(Product product);
	
	public List<Product> productAllList();
	
	public int deleteProductByNo(Integer productNo);
	
	public List<Product> DeleteCartByCartNo();
	
	public List<Product> productListByPriceOrderAsc();
	
	public List<Product> productListByPriceOrderDesc();
	
	public List<Product> findProductBySearchWord(String searchWord);
	
	public int updateQtyByNo(Integer productNo);
	
	public Product findProductByNo(Integer productNo);
	
}
