package com.music.pro.vo.board;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.music.pro.controller.board.Criteria;
import com.music.pro.vo.board.NewsVO;

@Repository
public class NewsDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	 //게시물 목록(페이징)
    public List<NewsVO> listAllNewsPaging(Criteria cri) {
       return mybatis.selectList("News.listAllNewsPaging" , cri);
    }
    
    public int getTotal(Criteria cri) {
        return mybatis.selectOne("News.getTotal" , cri);
     }
    
    // 게시글 쓰기
    public void createNews(NewsVO vo) {
       mybatis.insert("News.createNews", vo);
    }
    
    public void thumnail(NewsVO vo) {
     mybatis.update("News.thumnail",vo);
    }
}
