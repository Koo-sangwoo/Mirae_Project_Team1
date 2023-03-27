package com.music.pro.controller.product;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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
	
	@RequestMapping(value="/product", method=RequestMethod.GET)//k-pop카테고리를 가진 굿즈 리스트업
	public ModelAndView productkpop(@RequestParam(defaultValue = "1") int curPage,@RequestParam(value="p_category") String category, ProductVO vo) {
		List<ProductVO> list = service.getProductAll(category);//데이터를 db에서 가져와 list에 셋업
		ModelAndView mav = new ModelAndView();// 객체생성
		mav.setViewName("product/product");// 보여줄 화면 소스 입력
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
	public ModelAndView productSearch(@RequestParam(value="keyword")String p_keyword,ProductVO vo) {
		ModelAndView mav = new ModelAndView();
		List<ProductVO> Searchlist = service.productSearch(p_keyword);
		mav.addObject("list",Searchlist);
		mav.setViewName("product/product");
		return mav;
	}
	
	@GetMapping(value="/insertProduct")
	public ModelAndView visitInsertProduct() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("product/insertProduct");
		return mav;
	}
	
	@PostMapping(value="insertProduct")
	public ModelAndView insertProduct(ProductVO vo) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/product?p_category=k-pop");
		service.insertProduct(vo);
		return mav;
	}
	
	@GetMapping(value="/updateProduct")
	public ModelAndView visitUpdate(ProductVO vo) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("product/updateProduct");
		mav.addObject("detail",service.getProductDetail(vo));//해당 상품의 정보를 가져오는 메소드를 통해 가져온 값을 detail이란 이름의 속성으로 추가
		return mav;
	}
	
	@PostMapping(value="/updateProduct")
	public ModelAndView updateProduct(ProductVO vo) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/product?p_category=k-pop");
		service.updateProduct(vo);
		return mav;
	}
	
	
	@GetMapping(value="deleteProduct")
	public ModelAndView deleteProduct(ProductVO vo) {
		ModelAndView mav = new ModelAndView();
		System.out.println("세팅된 vo의 id값 " + vo.getP_id());
		service.deleteProduct(vo);
		mav.setViewName("redirect:/product?p_category=k-pop");
		return mav;
	}
	
}
