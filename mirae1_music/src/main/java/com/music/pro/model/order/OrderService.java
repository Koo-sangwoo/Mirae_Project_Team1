package com.music.pro.model.order;


import java.util.List;
import java.util.Map;

import com.music.pro.vo.cart.CartVO;
import com.music.pro.vo.order.OrderListVO;
import com.music.pro.vo.product.ProductVO;
import com.music.pro.vo.user.UserVO;

public interface OrderService {
	
	public void insertCart(CartVO vo);

	public UserVO now_cusInfo(UserVO vo);
	
	public List<CartVO> getCartInfo(CartVO vo);
	
	public void insertOrderList(OrderListVO vo);
	
	public List<OrderListVO> getOrderList(OrderListVO vo);
	
	public void orderlist_clear(OrderListVO vo);
}
