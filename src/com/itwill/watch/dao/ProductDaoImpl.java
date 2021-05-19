package com.itwill.watch.dao;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.itwill.watch.dao.mapper.ProductMapper;
import com.itwill.watch.domain.Product;

public class ProductDaoImpl implements ProductDao{

	private SqlSessionFactory sqlSessionFactory;

	public ProductDaoImpl() {
		try {
			InputStream mybatisConfigInputStream = Resources.getResourceAsStream("mybatis-config.xml");
			SqlSessionFactoryBuilder sqlSessionFactoryBuilder = new SqlSessionFactoryBuilder();
			this.sqlSessionFactory = sqlSessionFactoryBuilder.build(mybatisConfigInputStream);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public int insertProduct(Product product) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		ProductMapper productMapper = sqlSession.getMapper(ProductMapper.class);
		int row = productMapper.insertProduct(product);
		sqlSession.close();
		return row;
	}

	@Override
	public List<Product> productAllList() throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		ProductMapper productMapper = sqlSession.getMapper(ProductMapper.class);
		List<Product> productAllList = productMapper.productAllList();
		sqlSession.close();
		return productAllList;
	}

	@Override
	public int deleteProductByNo(Integer productNo) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		ProductMapper productMapper = sqlSession.getMapper(ProductMapper.class);
		int row = productMapper.deleteProductByNo(productNo);
		sqlSession.close();
		return row;
	}

	@Override
	public List<Product> productListByPriceOrderDesc() throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		ProductMapper productMapper = sqlSession.getMapper(ProductMapper.class);
		List<Product> productListByDesc = productMapper.productListByPriceOrderDesc();
		sqlSession.close();
		return productListByDesc;
	}

	@Override
	public List<Product> productListByPriceOrderAsc() throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		ProductMapper productMapper = sqlSession.getMapper(ProductMapper.class);
		List<Product> productListByAsc = productMapper.productListByPriceOrderAsc();
		sqlSession.close();
		return productListByAsc;
	}

	@Override
	public List<Product> findProductBySearchWord(String searchWord) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		ProductMapper productMapper = sqlSession.getMapper(ProductMapper.class);
		List<Product> findList = productMapper.findProductBySearchWord(searchWord);
		sqlSession.close();
		return findList;
	}

	@Override
	public int updateQtyByNo(Integer productNo) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		ProductMapper productMapper = sqlSession.getMapper(ProductMapper.class);
		int row = productMapper.updateQtyByNo(productNo);
		sqlSession.close();
		return row;
	}

	@Override
	public Product findProductByNo(Integer productNo) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		ProductMapper productMapper = sqlSession.getMapper(ProductMapper.class);
		Product findProduct = productMapper.findProductByNo(productNo);
		sqlSession.close();
		return findProduct;
	}

}
