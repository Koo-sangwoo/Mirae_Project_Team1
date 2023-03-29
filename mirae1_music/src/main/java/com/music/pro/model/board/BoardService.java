package com.music.pro.model.board;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.music.pro.controller.board.Criteria;
import com.music.pro.vo.board.BoardVO;

public interface BoardService {
   
   List<BoardVO> listAllBoard() throws Exception;   // 게시글 목록
   public List<BoardVO> listAllBoardPaging(Criteria cri); /* 게시판 목록(페이징 적용) */
   void createBoard(BoardVO vo) throws Exception;   // 게시글 쓰기 
   public BoardVO readBoard(int board_id) throws Exception; //게시글 상세보기
   void deleteBoard(int board_id) throws Exception;                  // 게시글 삭제
    void updateBoard(BoardVO vo) throws Exception;          //게시글 수정
    void viewCnt(int board_id) throws Exception;    //게시글 조회수
    void replyCnt(int board_id) throws Exception;  //게시글 댓글수
    public int getTotal(Criteria cri) throws Exception; // 총게시글 수
}