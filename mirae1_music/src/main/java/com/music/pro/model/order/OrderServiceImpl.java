package com.music.pro.model.order;


import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.music.pro.vo.cart.CartVO;
import com.music.pro.vo.order.OrderDAO;
import com.music.pro.vo.order.OrderListVO;
import com.music.pro.vo.user.UserVO;

@Service
public class OrderServiceImpl implements OrderService{

	@Inject
	private OrderDAO dao;


	@Override
	public UserVO now_cusInfo(UserVO vo) {
		return dao.now_cusInfo(vo);
	}

	 
	@Override
	public List<CartVO> getCartInfo(CartVO vo) {
		return dao.getCartInfo(vo);	
	}


	@Override
	public void insertCart(CartVO vo) {
		System.out.println("CartServiceImpl에서 insertCart실행");
	      dao.insertCart(vo);
	}


	@Override
	public void insertOrderList(OrderListVO vo) {
		System.out.println("service에서 insertorderList 실행");
		dao.insertOrderList(vo);
	}


	@Override
	public List<OrderListVO> getOrderList(OrderListVO vo) {
		System.out.println("주문목록 가져오기");
		return dao.getOrderList(vo);
	}


	@Override
	public void orderlist_clear(OrderListVO vo) {
		dao.orderList_clear(vo);
	}






}
