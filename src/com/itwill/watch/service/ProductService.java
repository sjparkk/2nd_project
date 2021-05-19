package com.itwill.watch.service;

import java.util.List;

import com.itwill.watch.dao.ProductDao;
import com.itwill.watch.dao.ProductDaoImpl;
import com.itwill.watch.domain.Product;

public class ProductService {
	private ProductDao productDao;
	
	public ProductService() throws Exception {
		productDao = new ProductDaoImpl();
	}
	
	public int insertProduct(Product product) throws Exception {
		return productDao.insertProduct(product);
	}
	
	public List<Product> productAllList() throws Exception {
		return productDao.productAllList();
	}
	
	public int deleteProductByNo(Integer productNo) throws Exception {
		return productDao.deleteProductByNo(productNo);
	}
	
	public List<Product> productListByPriceOrderDesc() throws Exception {
		return productDao.productListByPriceOrderDesc();
	}
	
	public List<Product> productListByPriceOrderAsc() throws Exception {
		return productDao.productListByPriceOrderAsc();
	}
	
	public List<Product> findProductBySearchWord(String searchWord) throws Exception {
		return productDao.findProductBySearchWord(searchWord);
	}
	
	public int updateQtyByNo(Integer productNo) throws Exception {
		return productDao.updateQtyByNo(productNo);
	}
	
	public Product findProductByNo(Integer productNo) throws Exception {
		return productDao.findProductByNo(productNo);
	}

}
