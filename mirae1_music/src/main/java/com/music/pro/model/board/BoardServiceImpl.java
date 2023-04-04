package com.music.pro.model.board;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.music.pro.vo.board.BoardDAO;
import com.music.pro.vo.board.BoardVO;
import com.music.pro.controller.board.Criteria;
import com.music.pro.model.board.BoardService;

   @Service("BoardService")
   public class BoardServiceImpl implements BoardService {
      @Autowired
      private BoardDAO boardDAO;

      // 게시글 목록
      public List<BoardVO> listAllBoard() throws Exception {
         return boardDAO.listAllBoard();
      }
      
       /* 게시판 목록(페이징 적용) */
      
       public List<BoardVO> listAllBoardPaging(Criteria cri) {
           return boardDAO.listAllBoardPaging(cri);
       }    
      
      // 게시글 쓰기
      public void createBoard(BoardVO vo) throws Exception {
         boardDAO.createBoard(vo);
      }
      
      // 게시글 읽기
      public BoardVO readBoard(int board_id) throws Exception {
         return boardDAO.readBoard(board_id);
      }
      
      // 게시글 수정
      public void updateBoard(BoardVO vo) throws Exception {
         boardDAO.updateBoard(vo);
      }
      
      // 게시글 삭제
      public void deleteBoard(int board_id) throws Exception {
         boardDAO.deleteBoard(board_id);
      }
      // 게시글 조회수
      public void viewCnt(int board_id) throws Exception {
      boardDAO.viewCnt(board_id);
        }
      // 게시글 제목에 댓글수 표시
      public void replyCnt(int board_id) throws Exception   {
         boardDAO.replyCnt(board_id);
   }
      //총 게시글 수
       public int getTotal(Criteria cri) throws Exception {
         return boardDAO.getTotal(cri);
       }
       public List<BoardVO> listAllBoardPaging2(Criteria cri) {
           return boardDAO.listAllBoardPaging2(cri);
       }    
       
   }