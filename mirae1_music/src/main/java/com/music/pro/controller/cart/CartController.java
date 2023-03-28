package com.music.pro.controller.cart;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.music.pro.model.cart.CartService;
import com.music.pro.vo.cart.CartVO;
import com.music.pro.vo.user.UserVO;

@Controller
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	// 장바구니 
	@RequestMapping(value = "cart", method = RequestMethod.GET)
	public String Cart(UserVO vo, Model model) {
		System.out.println("장바구니 리스트 호출");
		System.out.println(vo);
		model.addAttribute("cartPrd", cartService.getCartList(vo));
		return "cart/cart";
	}
	
	// 장바구니 추가
	@RequestMapping(value = "insertCart", method = RequestMethod.POST)
	public String insertCart(CartVO vo) {
		System.out.println("컨트롤러에서 insertCart 실행");
		cartService.insertCart(vo);
		return "product/product_detail";
	}
	
	// 장바구니 전체 비우기
	@RequestMapping(value = "clearCart", method = RequestMethod.POST)
	public String clearCart(CartVO vo) {
		System.out.println("컨트롤러에서 clearCart 실행");
		cartService.clearCart(vo);
		return "cart/cart";
	}
	
	// 장바구니 선택 물품 삭제
	@RequestMapping(value = "deleteCart", method = RequestMethod.POST)
	public String deleteCart(CartVO vo) {
		System.out.println("컨트롤러에서 deleteCart 실행");
		cartService.deleteCart(vo);
		return "cart/cart";
	}
}
