package com.music.pro.vo.product;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAO {
	
	@Inject
	private SqlSessionTemplate sqltemplate;
	
	public List<ProductVO> getProductAll() { //모든 상품 정보를 가져오는 메서드
		System.out.println("전체 상품 출력");
		return sqltemplate.selectList("Product.productK-pop");
	}
	
	public ProductVO productDetail(ProductVO vo) {
		System.out.println("상세 정보 조회");
		return (ProductVO)sqltemplate.selectOne("Product.productDetail",vo);
	}
	
	public List<ProductVO> productSearch(String p_keyword) {
		System.out.println("검색 상품 DB 연동");
		return sqltemplate.selectList("Product.productSearch",p_keyword);
	}
}
