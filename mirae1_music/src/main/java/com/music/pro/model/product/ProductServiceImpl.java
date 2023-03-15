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
	public List<ProductVO> getProductAll() {
	/*	System.out.println(dao.getProductAll());*/
		return dao.getProductAll();
	}

}