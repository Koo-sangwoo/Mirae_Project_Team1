package com.music.pro.vo.order;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.music.pro.vo.cart.CartVO;
import com.music.pro.vo.product.ProductVO;
import com.music.pro.vo.user.UserVO;

@Repository
public class OrderDAO {
	
	@Autowired
	private SqlSessionTemplate  sqltemplate;
	
	 public void insertCart(CartVO vo) {
	      System.out.println("CartDAO에서 insertCart");
	      sqltemplate.insert("order.insertCart", vo);
	   }
	
	public List<CartVO> getCartInfo(CartVO vo) {
		return sqltemplate.selectList("order.cart_info",vo);
	}
	public UserVO now_cusInfo(UserVO vo) {//주문자 정보 가져오기
		return sqltemplate.selectOne("order.cus_info",vo);//주문자 정보 가져오기
	}
	
	public void insertOrderList(OrderListVO vo) {
		System.out.println("구매완료, 구매목록에 데이터 삽입");
		sqltemplate.insert("order.order_complete",vo);
	}
	
	public List<OrderListVO> getOrderList(OrderListVO vo) {
		System.out.println("구매 목록 가져오기");
		return sqltemplate.selectList("order.orderlist_info",vo);
	}
	

}
