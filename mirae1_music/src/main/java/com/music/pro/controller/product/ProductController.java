package com.music.pro.controller.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.music.pro.model.product.ProductService;
import com.music.pro.vo.product.ProductVO;

@Controller
public class ProductController {

	@Autowired
	private ProductService service;
	
	@RequestMapping(value="/product", method=RequestMethod.GET)
	public ModelAndView product() {
		List<ProductVO> list = service.getProductAll();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("product/test");
		mav.addObject("list",list);
		return mav;
	}
	
	
}
