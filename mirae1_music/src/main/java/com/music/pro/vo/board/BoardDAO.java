package com.music.pro.vo.board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.music.pro.controller.board.Criteria;
import com.music.pro.vo.board.BoardVO;

@Repository
public class BoardDAO {
   @Autowired
   private SqlSessionTemplate mybatis;

      // 게시물 목록
      public List<BoardVO> listAllBoard() {
         
      /*   Map<String, Object> map = new HashMap<String, Object>();
         map.put("searchOption", searchOption);
         map.put("keyword", keyword);
         map.put("start", start);
         map.put("end", end);*/
         System.out.println("게시판리스트출력d");
         return mybatis.selectList("Board.listAllBoard");
      }
      
      //게시물 목록(페이징)
      public List<BoardVO> listAllBoardPaging(Criteria cri) {
         return mybatis.selectList("Board.listAllBoardPaging" , cri);
      }
      
       public int getTotal(Criteria cri) {
          return mybatis.selectOne("Board.getTotal" , cri);
       }
      
      
      // 게시글 쓰기
      public void createBoard(BoardVO vo) {
         mybatis.insert("Board.createBoard", vo);
      }
      
      // 게시글 읽기
      public BoardVO readBoard(int board_id) {
         return (BoardVO) mybatis.selectOne("Board.readBoard" , board_id);
      }
      
      // 게시글 수정
      public void updateBoard(BoardVO vo) {
         mybatis.update("Board.updateBoard", vo);
      }
      
      //게시글 삭제
      public void deleteBoard(int board_id) {
      mybatis.delete("Board.deleteBoard", board_id);
}
      //게시글 조회수
      public void viewCnt(int board_id) {
         mybatis.update("Board.viewCnt", board_id);
      }
      //게시글 댓글수 
      public void replyCnt(int board_id) {
         mybatis.update("Board.replyCnt", board_id);
      }
}