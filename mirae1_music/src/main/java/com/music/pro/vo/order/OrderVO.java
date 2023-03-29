package com.music.pro.vo.order;

import java.sql.Date;

public class OrderVO {
	private int order_id;
	private int m_id;
	private int quantity;
	private int orderPrice;
	private Date orderDate;
	private String address;
	
	
	public int getOrder_id() {
		return order_id;
	}
	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}
	public int getM_id() {
		return m_id;
	}
	public void setM_id(int m_id) {
		this.m_id = m_id;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getOrderPrice() {
		return orderPrice;
	}
	public void setOrderPrice(int orderPrice) {
		this.orderPrice = orderPrice;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "OrderVO [order_id=" + order_id + ", m_id=" + m_id + ", quantity=" + quantity + ", orderPrice="
				+ orderPrice + ", orderDate=" + orderDate + ", address=" + address + "]";
	}


}
