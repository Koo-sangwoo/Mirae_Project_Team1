package com.music.pro.model.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.music.pro.controller.board.Criteria;
import com.music.pro.vo.board.BoardVO;
import com.music.pro.vo.board.NewsDAO;
import com.music.pro.vo.board.NewsVO;

@Service("NewsService")
public class NewsServiceImpl implements NewsService{
	@Autowired
	private NewsDAO newsDAO;
	
	//뉴스 리스트(페이징 적용)
	
	public List<NewsVO> listAllNewsPaging(Criteria cri) {
        return newsDAO.listAllNewsPaging(cri);
    }    
	
	//총 게시글 수
    public int getTotal(Criteria cri) throws Exception {
      return newsDAO.getTotal(cri);
    }
    
 // 게시글 쓰기
    public void createNews(NewsVO vo) throws Exception {
       newsDAO.createNews(vo);
    }
    //썸네일
    
     public void thumnail(NewsVO vo) throws Exception {
    	 newsDAO.thumnail(vo);
     }

}
