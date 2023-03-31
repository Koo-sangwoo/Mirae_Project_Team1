package com.music.pro.model.board;

import java.util.List;

import com.music.pro.controller.board.Criteria;

import com.music.pro.vo.board.NewsVO;

public interface NewsService {
	
	public List<NewsVO> listAllNewsPaging(Criteria cri); // 뉴스 목록 + 페이징
	public int getTotal(Criteria cri) throws Exception; // 총게시글 수
	void createNews(NewsVO vo) throws Exception;      //뉴스글쓰기
   void thumnail(NewsVO vo) throws Exception;
}
