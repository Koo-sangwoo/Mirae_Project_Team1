package com.music.pro.vo.order;

import java.sql.Date;

public class OrderListVO {
	private int p_price;
	private String address;
	private int p_id;
	private String m_id;
	private String p_picture;
	private String p_name;
	private int p_quantity;
	private int orderlist_id;
	private Date payeddate;
	private String orderstate;
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
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
	public String getP_picture() {
		return p_picture;
	}
	public void setP_picture(String p_picture) {
		this.p_picture = p_picture;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public int getP_quantity() {
		return p_quantity;
	}
	public void setP_quantity(int p_quantity) {
		this.p_quantity = p_quantity;
	}
	public int getOrderlist_id() {
		return orderlist_id;
	}
	public void setOrderlist_id(int orderlist_id) {
		this.orderlist_id = orderlist_id;
	}
	public Date getPayeddate() {
		return payeddate;
	}
	public void setPayeddate(Date payeddate) {
		this.payeddate = payeddate;
	}
	public String getOrderstate() {
		return orderstate;
	}
	public void setOrderstate(String orderstate) {
		this.orderstate = orderstate;
	}
	@Override
	public String toString() {
		return "OrderListVO [p_price=" + p_price + ", address=" + address + ", p_id=" + p_id + ", m_id=" + m_id
				+ ", p_picture=" + p_picture + ", p_name=" + p_name + ", p_quantity=" + p_quantity + ", orderlist_id="
				+ orderlist_id + ", payeddate=" + payeddate + ", orderstate=" + orderstate + "]";
	}



}
