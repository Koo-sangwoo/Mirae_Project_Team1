package com.music.pro.controller.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.music.pro.vo.board.ReplyVO;
import com.music.pro.model.board.ReplyService;

@Controller
public class ReplyController {
		@Autowired
		private ReplyService ReplyService;
	
		//댓글쓰기
		@RequestMapping("/replyWrite")
		public String replyWrite(ReplyVO vo) {
			ReplyService.replyWrite(vo);
			return "redirect:/view?board_id=" + vo.getBoard_id();//뷰로 이동
		}
		
		//댓글수정
		@RequestMapping(value = "/replyUpdate", method = RequestMethod.POST)
		public String replyUpdate(ReplyVO vo) {
			ReplyService.replyUpdate(vo);
			return "redirect:/view?board_id="+vo.getBoard_id(); 
		}
		
		//댓글삭제
		@RequestMapping(value= "/replyDelete", method = RequestMethod.GET)
		public String replyDelete(ReplyVO vo) {
			ReplyService.replyDelete(vo);
			return "redirect:/view?board_id="+vo.getBoard_id();
		}
		
		
}
