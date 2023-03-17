package com.music.pro.model.product;

import java.util.List;

import org.springframework.stereotype.Service;

import com.music.pro.vo.product.ProductVO;


public interface ProductService {
	public List<ProductVO> getProductAll();

	public ProductVO getProductDetail(ProductVO vo);
	
	public List<ProductVO> productSearch(String search);
}

