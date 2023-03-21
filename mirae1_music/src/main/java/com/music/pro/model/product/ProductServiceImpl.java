package com.music.pro.model.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.music.pro.vo.product.ProductDAO;
import com.music.pro.vo.product.ProductVO;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO dao;
	
	@Override
	public List<ProductVO> getProductAll(String category) {
	/*	System.out.println(dao.getProductAll());*/
		return dao.getProductAll(category);
	}

	@Override
	public ProductVO getProductDetail(ProductVO vo) {
		// TODO Auto-generated method stub
		return dao.productDetail(vo);
	}

	@Override
	public List<ProductVO> productSearch(String keyword) {
		return dao.productSearch(keyword);
	}

	// 품목 갯수 카운트
	@Override
	public int getCountProduct(ProductVO vo) {
		return dao.getCountProduct(vo);
	}
	
	
	@Override
	public List<ProductVO> getProductList(int start, int end, ProductVO vo) {
		return dao.getProductList(start, end, vo);
	}
	



}
