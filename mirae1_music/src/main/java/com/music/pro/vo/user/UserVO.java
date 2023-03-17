package com.music.pro.vo.user;

public class UserVO {
	private String m_id;
	private String m_password;
	private String m_name;
	private String m_address;
	private String m_phonenum;
	private String m_gender;
	private String m_nickname;
	private String m_hobby;
	private int m_activepoint;
	private int m_code;
	
	
	
	public String getM_id() {
		System.out.println("VO에서 getM_id");
		return m_id;
	}
	public void setM_id(String m_id) {
		System.out.println("VO에서 setM_id");
		this.m_id = m_id;
	}
	public String getM_password() {
		return m_password;
	}
	public void setM_password(String m_password) {
		this.m_password = m_password;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getM_address() {
		return m_address;
	}
	public void setM_address(String m_address) {
		this.m_address = m_address;
	}
	public String getM_phonenum() {
		return m_phonenum;
	}
	public void setM_phonenum(String m_phonenum) {
		this.m_phonenum = m_phonenum;
	}
	public String getM_gender() {
		return m_gender;
	}
	public void setM_gender(String m_gender) {
		this.m_gender = m_gender;
	}
	public String getM_nickname() {
		return m_nickname;
	}
	public void setM_nickname(String m_nickname) {
		this.m_nickname = m_nickname;
	}
	public String getM_hobby() {
		return m_hobby;
	}
	public void setM_hobby(String m_hobby) {
		this.m_hobby = m_hobby;
	}
	public int getM_activepoint() {
		return m_activepoint;
	}
	public void setM_activepoint(int m_activepoint) {
		this.m_activepoint = m_activepoint;
	}
	public int getM_code() {
		return m_code;
	}
	public void setM_code(int m_code) {
		this.m_code = m_code;
	}
	
	@Override
	public String toString() {
		return "UserVO [m_id=" + m_id + ", m_password=" + m_password + ", m_name=" + m_name
                + ", m_address=" + m_address +  ", m_phonenum=" + m_phonenum + ", m_gender=" + m_gender 
                + ", m_nickname=" + m_nickname + ", m_hobby=" + m_hobby +"]";
	}
	
}
