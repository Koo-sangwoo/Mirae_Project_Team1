package com.music.pro.vo.board;

import java.util.Date;

public class ReplyVO {
		private int reply_id; //댓글 번호
		private int board_id; //게시물 번호
		private String reply_content; //댓글 내용
		private String reply_writer; //댓글 작성자 id
		                             //댓글 작성자 닉네임  (테스트해야해서 비워놈)
	                                 //java.util.Date, 작성일자
		//getter,setter,toString()
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
		@Override
		public String toString() {
			return "ReplyVO [reply_id=" + reply_id + ", board_id=" + board_id + ", reply_content=" + reply_content
					+ ", reply_writer=" + reply_writer + "]";
		}
		
		
	}

