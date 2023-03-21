package com.music.pro.model.product;

import java.util.List;

import com.music.pro.vo.product.ProductVO;


public interface ProductService {
	public List<ProductVO> getProductAll(String category);


	public ProductVO getProductDetail(ProductVO vo);

	public List<ProductVO> productSearch(String search);

	// 품목 갯수 카운트
	public int getCountProduct(ProductVO vo);
	
	//카테고리 물품 출력
	public List<ProductVO> getProductList(int start, int end, ProductVO vo);

}

