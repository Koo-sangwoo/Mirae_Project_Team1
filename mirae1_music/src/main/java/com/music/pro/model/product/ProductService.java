package com.music.pro.model.product;

import java.util.List;

import com.music.pro.vo.product.ProductVO;


public interface ProductService {
	public List<ProductVO> getProductAll(String category);


	public ProductVO getProductDetail(ProductVO vo);

	public List<ProductVO> productSearch(String search);

	// 품목 갯수 카운트
	public int getCountProduct(ProductVO vo);
	
	//품목 추가
	public void insertProduct(ProductVO vo);
	
	//품목 수정
	public void updateProduct(ProductVO vo);
	
	public void deleteProduct(ProductVO vo);

}

