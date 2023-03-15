package com.music.pro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProductController {

	
	@RequestMapping(value="/product", method=RequestMethod.GET)
	public ModelAndView product(ModelAndView mav) {
		mav.setViewName("product/product");
		return mav;
		//push
	}
}
