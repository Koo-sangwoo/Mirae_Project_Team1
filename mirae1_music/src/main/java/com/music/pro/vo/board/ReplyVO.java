package com.music.pro.vo.board;

import java.util.Date;

import com.music.pro.controller.board.Time;

public class ReplyVO {
		private int reply_id; //댓글 번호
		private int board_id; //게시물 번호
		private String reply_content; //댓글 내용
		private String reply_writer; //댓글 작성자
		private String reply_date;      //java.util.Date, 작성일자
		private String news_id;   
		public int getReply_id() {
			return reply_id;
		}
		public void setReply_id(int reply_id) {
			this.reply_id = reply_id;
		}
		public int getBoard_id() {
			return board_id;
		}
		public void setBoard_id(int board_id) {
			this.board_id = board_id;
		}
		public String getReply_content() {
			return reply_content;
		}
		public void setReply_content(String reply_content) {
			this.reply_content = reply_content;
		}
		public String getReply_writer() {
			return reply_writer;
		}
		public void setReply_writer(String reply_writer) {
			this.reply_writer = reply_writer;
		}
		public String getReply_date() {
			return reply_date;
		}
		public void setReply_date(Date reply_date) {
			this.reply_date = Time.calculateTime(reply_date);
		}
		
		public String getNews_id() {
			return news_id;
		}
		public void setNews_id(String news_id) {
			this.news_id = news_id;
		}
		@Override
		public String toString() {
			return "ReplyVO [reply_id=" + reply_id + ", board_id=" + board_id + ", reply_content=" + reply_content
					+ ", reply_writer=" + reply_writer + ", reply_date=" + reply_date + ", news_id=" + news_id + "]";

		}
	}

