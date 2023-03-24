package com.music.pro.model.board;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;


import com.music.pro.vo.board.ReplyDAO;
import com.music.pro.vo.board.ReplyVO;
import com.music.pro.model.board.BoardService;

@Service
public class ReplyServiceImpl implements ReplyService{
	
		@Inject
		ReplyDAO replyDao;

		//댓글 목록
		@Override
		public List<ReplyVO> getreplylist(int board_id) {
			return replyDao.getreplylist(board_id);
		}
		
		//댓글 쓰기
		public void replyWrite(ReplyVO vo) {
			 replyDao.replyWrite(vo);
		}
		
		//댓글 수정
		public void replyUpdate(ReplyVO vo) {
			replyDao.replyUpdate(vo);
		}
		
		//댓글 삭제
		public void replyDelete(ReplyVO vo) {
			replyDao.replyDelete(vo); 
		}
}
