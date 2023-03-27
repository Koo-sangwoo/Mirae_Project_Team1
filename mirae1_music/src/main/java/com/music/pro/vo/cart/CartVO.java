package com.music.pro.vo.cart;

public class CartVO {
	private int cart_id;
	private int quantity;
	private int p_id;
	private String m_id;
	
	private int p_price;
	private int prd_sum;
	
	// 총 가격
	public int getPrd_sum() {
		return prd_sum;
	}
	public void setPrd_sum(int p_price, int quantity) {
		this.prd_sum = p_price * quantity;
	}
	
	
	public int getCart_id() {
		return cart_id;
	}
	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getP_id() {
		return p_id;
	}
	public void setP_id(int p_id) {
		this.p_id = p_id;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	
}
