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

	public List<ProductVO> getProductAll(String category) { //모든 상품 정보를 가져오는 메서드
		System.out.println("상품 출력");
		return sqltemplate.selectList("Product.productK-pop",category);
	}

	public ProductVO productDetail(ProductVO vo) {
		System.out.println("상세 정보 조회");
		return (ProductVO)sqltemplate.selectOne("Product.productDetail",vo);
	}

	// 리스트 갯수 체크
	public int getCountProduct(ProductVO vo) {
		return sqltemplate.selectOne("Product.getCountProduct", vo);
	}

	public List<ProductVO> productSearch(String p_keyword) {
		System.out.println("검색 상품 DB 연동");
		return sqltemplate.selectList("Product.productSearch",p_keyword);
	}

	public void insertProduct(ProductVO vo) {
		sqltemplate.insert("Product.productInsert",vo);
	}
	
	public void updateProduct(ProductVO vo) {
		sqltemplate.insert("Product.productUpdate",vo);
	}
	
	public void deleteProduct(ProductVO vo) {
		sqltemplate.delete("Product.productDelete",vo);
	}
}
