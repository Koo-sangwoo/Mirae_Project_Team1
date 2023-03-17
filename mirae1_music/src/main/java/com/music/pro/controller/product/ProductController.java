package com.music.pro.controller.product;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.music.pro.model.product.ProductService;
import com.music.pro.vo.product.ProductVO;

@Controller
public class ProductController {

	@Autowired
	private ProductService service;
	
	@RequestMapping(value="/product_k-pop", method=RequestMethod.GET)//k-pop카테고리를 가진 굿즈 리스트업
	public ModelAndView product() {
		List<ProductVO> list = service.getProductAll();//데이터를 db에서 가져와 list에 셋업
		ModelAndView mav = new ModelAndView();// 객체생성
		mav.setViewName("product/product_k-pop");// 보여줄 화면 소스 입력
		mav.addObject("list",list);// jsp에서 사용할 list객체 값들 속성화
		return mav;// 리턴~
	}
	
	@RequestMapping(value="/product_detail", method=RequestMethod.GET)//상품 상세 페이지 컨트롤러
	public ModelAndView productDetail(ProductVO vo) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("product/product_detail");// 보여줄 페이지 명 추가
		mav.addObject("detail",service.getProductDetail(vo));//해당 상품의 정보를 가져오는 메소드를 통해 가져온 값을 detail이란 이름의 속성으로 추가
		return mav;
	}
	
	@RequestMapping(value="/product_search", method=RequestMethod.GET)
	public ModelAndView productSearch(@RequestParam(value="keyword")String keyword,ProductVO vo) {
		ModelAndView mav = new ModelAndView();
		List<ProductVO> Searchlist = service.productSearch(keyword);
		mav.addObject("list",Searchlist);
		mav.setViewName("product/product_k-pop");
		return mav;
	}
}
