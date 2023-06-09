package com.music.pro.model.board;

import java.util.List;

import com.music.pro.vo.board.ReplyVO;

public interface ReplyService {
	public List<ReplyVO> getreplylist(int board_id);  //댓글목록
	void replyWrite(ReplyVO vo);            //댓글쓰기
	void replyUpdate(ReplyVO vo);            //댓글 수정
	void replyDelete(ReplyVO vo); //댓글 삭제
	
	
	
	public List<ReplyVO> getnewsreplylist(int news_id);
	void newsreplyWrite(ReplyVO vo);
    
}
