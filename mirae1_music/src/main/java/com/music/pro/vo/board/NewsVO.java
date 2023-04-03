package com.music.pro.vo.board;

import java.util.Date;

import com.music.pro.controller.board.Time;

public class NewsVO {
	
	private int News_id;      //게시글 번호
	private String News_title; //게시글 제목
	private String News_writer;  //게시글 작성자
	private String News_content; //게시글 내용
	private String News_date;  //게시글 생성날짜 (~~전)
	private String category;
	private String viewcnt; //조회수
	private String replycnt; //댓글수
	private String thumnail;  // 썸네일
	
	public int getNews_id() {
		return News_id;
	}
	public void setNews_id(int news_id) {
		News_id = news_id;
	}
	public String getNews_title() {
		return News_title;
	}
	public void setNews_title(String news_title) {
		News_title = news_title;
	}
	public String getNews_writer() {
		return News_writer;
	}
	public void setNews_writer(String news_writer) {
		News_writer = news_writer;
	}
	public String getNews_content() {
		return News_content;
	}
	public void setNews_content(String news_content) {
		News_content = news_content;
	}
	public String getNews_date() {
		return News_date;
	}
	public void setNews_date(Date news_date) {
		this.News_date = Time.calculateTime(news_date);
	}
	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getViewcnt() {
		return viewcnt;
	}
	public void setViewcnt(String viewcnt) {
		this.viewcnt = viewcnt;
	}
	public String getReplycnt() {
		return replycnt;
	}
	public void setReplycnt(String replycnt) {
		this.replycnt = replycnt;
	}
	
	
	public String getThumnail() {
		return thumnail;
	}
	public void setThumnail(String thumnail) {
		this.thumnail = thumnail;
	}
	@Override
	public String toString() {
		return "NewsVO [News_id=" + News_id + ", News_title=" + News_title + ", News_writer=" + News_writer
				+ ", News_content=" + News_content + ", News_date=" + News_date + ", category=" + category
				+ ", viewcnt=" + viewcnt + ", replycnt=" + replycnt + ", thumnail=" + thumnail + "]";
	}
	
	

	
	
}
