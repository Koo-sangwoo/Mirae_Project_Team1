package com.music.pro.vo.product;


import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAO {
	
	@Inject
	private SqlSessionTemplate sqltemplate;
	
	public List<ProductVO> getProductAll() { //모든 상품 정보를 가져오는 메서드
		System.out.println("넘어온다면 찍힌다.");
		return sqltemplate.selectList("Product.productAll");
	}
}
