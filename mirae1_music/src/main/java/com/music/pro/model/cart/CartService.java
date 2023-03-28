package com.music.pro.model.cart;

import java.util.List;

import com.music.pro.vo.cart.CartVO;
import com.music.pro.vo.user.UserVO;

public interface CartService {
	void insertCart(CartVO vo); // 장바구니 추가
	void clearCart(CartVO vo); // 카트 전체 비우기
	void deleteCart(CartVO vo); // 장바구니 물품 삭제
	List<CartVO> getCartList(UserVO vo); // 장바구니 꺼내오기
}
