package com.music.pro.vo.cart;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.music.pro.vo.cart.CartVO;
import com.music.pro.vo.user.UserVO;
@Repository
public class CartDAO {
	
	@Autowired
	private SqlSessionTemplate sqltemplate;
	
	//장바구니 등록
	public void insertCart(CartVO vo) {
		System.out.println("CartDAO에서 insertCart");
		sqltemplate.insert("Cart.insertCart", vo);
	}
	// 장바구니 전체 비우기
	public void clearCart(CartVO vo) {
		System.out.println("CartDAO에서 clearCart실행");
		sqltemplate.delete("Cart.clearCart", vo);
	}
	// 상품 지우기
	public void deleteCart(CartVO vo) {
		System.out.println("CartDAO에서 deleteCart실행");
		sqltemplate.delete("Cart.deleteCart", vo);
	}
	// 상품 불러오기
	public List<CartVO> getCartList(UserVO vo){
		System.out.println("CartDAO에서 getCartList실행");
		System.out.println(sqltemplate.selectList("Cart.getCartList", vo));
		return sqltemplate.selectList("Cart.getCartList", vo);
	}
}
