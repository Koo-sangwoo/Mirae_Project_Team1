package com.music.pro.vo.cart;

public class CartVO {
   private int cart_id;
   private int p_quantity;
   private int p_id;
   private String m_id;
   private String p_picture;
   private String p_name;
   private int p_price;
public int getCart_id() {
	System.out.println("vo에서 getCart_id ");
   return cart_id;
}
public void setCart_id(int cart_id) {
   this.cart_id = cart_id;
}

public int getP_quantity() {
   return p_quantity;
}
public void setP_quantity(int p_quantity) {
   this.p_quantity = p_quantity;
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
public int getP_price() {
   return p_price;
}
public void setP_price(int p_price) {
   this.p_price = p_price;
}
@Override
public String toString() {
   return "CartVO [cart_id=" + cart_id + ", p_quantity=" + p_quantity + ", p_id=" + p_id + ", m_id=" + m_id
         + ", p_picture=" + p_picture + ", p_name=" + p_name + ", p_price=" + p_price + "]";
}
   
}