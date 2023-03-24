package com.music.pro.vo.board;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.music.pro.vo.board.ReplyVO;

@Repository
public class ReplyDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	public List<ReplyVO> getreplylist(int board_id) {
		return mybatis.selectList("Reply.getreplylist", board_id);
}
	public void replyWrite(ReplyVO vo) {
		mybatis.insert("Reply.replyWrite" , vo);
	}
	
	public void replyUpdate(ReplyVO vo) {
		mybatis.update("Reply.replyUpdate", vo);
		
	}
}