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
     // 게시글 조회수
     public void viewCnt(int news_id) throws Exception {
     newsDAO.viewCnt(news_id);
       }
     // 게시글 제목에 댓글수 표시
     public void replyCnt(int news_id) throws Exception   {
        newsDAO.replyCnt(news_id);
  }
  // 게시글 읽기
     public NewsVO readNews(int news_id) throws Exception {
        return newsDAO.readNews(news_id);
     }

     // 게시글 삭제
     public void deleteNews(int news_id) throws Exception {
        newsDAO.deleteNews(news_id);
     }
     
  // 게시글 수정
     public void updateNews(NewsVO vo) throws Exception {
        newsDAO.updateNews(vo);
     }
     
}
