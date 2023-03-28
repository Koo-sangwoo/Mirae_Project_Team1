package com.music.pro.model.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.music.pro.vo.cart.CartDAO;
import com.music.pro.vo.cart.CartVO;
import com.music.pro.vo.user.UserVO;



@Service
public class CartServiceImpl implements CartService{

	@Autowired
	private CartDAO cartDAO;
	
	// 장바구니 상품 추가
	@Override
	public void insertCart(CartVO vo) {
		System.out.println("CartServiceImpl에서 insertCart실행");
		cartDAO.insertCart(vo);
	}
	
	// 장바구니 전체 비우기
	@Override
	public void clearCart(CartVO vo) {
		System.out.println("CartServiceImpl에서 clearCart실행");
		cartDAO.clearCart(vo);
	}
	
	// 장바구니 선택 상품 지우기
	@Override
	public void deleteCart(CartVO vo) {
		System.out.println("CartServiceImpl에서 deleteCart실행");
		cartDAO.deleteCart(vo);
	}

	// 장바구니 리스트 불러오기
	@Override
	public List<CartVO> getCartList(UserVO vo) {
		System.out.println("CartServiceImpl에서 getCartList실행");
		System.out.println(cartDAO.getCartList(vo));
		return cartDAO.getCartList(vo);
	}
}
