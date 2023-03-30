package com.music.pro.controller.order;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.music.pro.model.cart.CartService;
import com.music.pro.model.order.OrderService;
import com.music.pro.vo.cart.CartVO;
import com.music.pro.vo.order.OrderListVO;

import com.music.pro.vo.user.UserVO;

@Controller
public class OrderController {
	@Autowired
	private OrderService service;
	
	@Autowired
	private CartService c_service;
	
	@PostMapping(value = "/order")
	public ModelAndView orderTest(UserVO vo, CartVO cvo) {
		ModelAndView mav = new ModelAndView();
		System.out.println(vo);
		System.out.println(cvo);
		System.out.println("장바구니 데이터 추가완료");
		mav.setViewName("order/order");// 구매로 바로 이동
		mav.addObject("cus_info", service.now_cusInfo(vo));// 고객정보 가져오기
		mav.addObject("cart_info", service.getCartInfo(cvo));
		return mav;
	}

	
	@PostMapping(value="/orderlist_delete")
	public ModelAndView orderlist_delete(OrderListVO vo) {
		ModelAndView mav = new ModelAndView();
		service.orderlist_clear(vo);
		mav.setViewName("order/orderlist");
		return mav;
	}
	
	@PostMapping(value = "order_completeInsert")
	public ModelAndView order_complete(OrderListVO vo,CartVO cvo) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("order/orderlist");
		service.insertOrderList(vo);
		System.out.println("컨트롤러에서 주문목록 삽입 완료");
		c_service.clearCart(cvo);
		List<OrderListVO> list = service.getOrderList(vo);
		mav.addObject("orderlist",list);
		return mav;
	}
	
	@GetMapping(value = "order_complete")
	public ModelAndView order_listView(OrderListVO vo) {
		ModelAndView mav = new ModelAndView();
		List<OrderListVO> list = service.getOrderList(vo);
		mav.addObject("orderlist",list);
		mav.setViewName("order/orderlist");
		return mav;
	}
	

}
