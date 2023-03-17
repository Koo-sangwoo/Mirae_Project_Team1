package com.music.pro.vo.product;

public class ProductVO {
	private int p_id;
	private int p_price;
	private String p_name;
	private String p_picture;
	private String p_exp;
	private String releasedate;
	private String p_category;
	
	
	
	public String getP_category() {
		return p_category;
	}
	public void setP_category(String p_category) {
		this.p_category = p_category;
	}
	public int getP_id() {
		return p_id;
	}
	public void setP_id(int p_id) {
		this.p_id = p_id;
	}
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getP_picture() {
		return p_picture;
	}
	public void setP_picture(String p_picture) {
		this.p_picture = p_picture;
	}
	public String getP_exp() {
		return p_exp;
	}
	public void setP_exp(String p_exp) {
		this.p_exp = p_exp;
	}
	public String getReleasedate() {
		return releasedate;
	}
	public void setReleasedate(String releasedate) {
		this.releasedate = releasedate;
	}
	
	@Override
	public String toString() {
		return "ProductVO [p_id=" + p_id + ", p_price=" + p_price + ", p_name=" + p_name + ", p_picture=" + p_picture
				+ ", p_exp=" + p_exp + ", releasedate=" + releasedate + "]";
	}
	
	
}
