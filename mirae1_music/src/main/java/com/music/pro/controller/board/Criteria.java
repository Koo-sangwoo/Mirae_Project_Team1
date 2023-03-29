package com.music.pro.controller.board;

public class Criteria {
       private int pageNum; //현재 페이지
       private int amount; //한 페이지 당 보여질 게시물 갯수 
       
       public Criteria() {    //기본생성자 -> 기본세팅 : pageNum = 1, amount = 10
    	   this(1,10); 
       }
       
       public Criteria(int pageNum, int amount) { //생성자 => 원하는 pageNum, 원하는 amount 
    	   this.pageNum = pageNum;
    	   this.amount = amount;
       }

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}
       
       
}
