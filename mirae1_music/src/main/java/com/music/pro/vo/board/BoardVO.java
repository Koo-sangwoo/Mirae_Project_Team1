package com.music.pro.vo.board;

import java.util.Date;

import com.music.pro.controller.board.Time;

public class BoardVO {
	private int board_id;      //게시글 번호
	private String board_title; //게시글 제목
	private String board_writer;  //게시글 작성자
	private String board_content; //게시글 내용
	private String board_date;  //게시글 생성날짜 (~~전)
	private String category;
	private String likecount; //추천수
	private String viewcnt; //조회수
	private String replycnt; //댓글수
	
	public int getBoard_id() {
		return board_id;
	}
	public void setBoard_id(int board_id) {
		this.board_id = board_id;
	}
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public String getBoard_writer() {
		return board_writer;
	}
	public void setBoard_writer(String board_writer) {
		this.board_writer = board_writer;
	}
	public String getBoard_content() {
		return board_content;
	}
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	public String getBoard_date() {
		return board_date;
	}
	public void setBoard_date(Date board_date) {
		this.board_date = Time.calculateTime(board_date);
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getLikecount() {
		return likecount;
	}
	public void setLikecount(String likecount) {
		this.likecount = likecount;
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
	@Override
	public String toString() {
		return "BoardVO [board_id=" + board_id + ", board_title=" + board_title + ", board_writer=" + board_writer
				+ ", board_content=" + board_content + ", board_date=" + board_date + ", category=" + category
				+ ", likecount=" + likecount + ", viewcnt=" + viewcnt + ", replycnt=" + replycnt + "]";
	}
	
	}
	
	


