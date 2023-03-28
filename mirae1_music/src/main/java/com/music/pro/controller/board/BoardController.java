package com.music.pro.controller.board;

import java.util.HashMap;
import java.util.List;
import org.springframework.ui.Model;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.music.pro.vo.board.BoardVO;
import com.music.pro.vo.board.ReplyVO;
import com.music.pro.model.board.Pager;
import com.music.pro.model.board.ReplyService;
import com.music.pro.model.board.BoardService;
import com.music.pro.model.board.PageVO;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	@Autowired
	private ReplyService replyService;
//게시글 리스트 출력
/*	@RequestMapping("/board")
	public String listAllBoard(Model model)throws Exception  {
		System.out.println("list뷰dd2");
		
		List<BoardVO> list = boardService.listAllBoard();
		model.addAttribute("list",list);
		return "board/list";*/
		
	
	 // 게시글 목록 + 검색 + 페이징
/*	@RequestMapping("/board")
	public String listAllBoard(Model model, HttpSession session)
			throws Exception {


		List<BoardVO> list = boardService.listAllBoard(); // 게시글 목록

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("list", list); // map에 자료 저장
		
		model.addAttribute("map", map);

		return "board/list";
	}*/
	
	
	//게시글 목록 + 페이징
	
	@RequestMapping("/board")
	public String listAllBoard(Model model, HttpSession session, Criteria cri)
			throws Exception {

	/*	List<BoardVO> list = boardService.listAllBoard(); // 게시글 목록
*/
		HashMap<String, Object> map = new HashMap<String, Object>();
	/*	map.put("list", list); // map에 자료 저장
*/		map.put("list", boardService.listAllBoardPaging(cri));
		model.addAttribute("map", map);
		
		int total = boardService.getTotal();
		
		PageVO pageMake = new PageVO(cri, total);
		
		model.addAttribute("pageMaker",pageMake);

		return "board/list";
	}
	
	
	
	
		               
	//게시글 쓰기뷰
		@RequestMapping("/write")
		public String write() {
			System.out.println("글쓰기로이동");
			// 글쓰기 폼 페이지로 이동
			return "board/boardwrite";
		}
	
	// 게시글 등록
		@RequestMapping(value = "/createboard", method = RequestMethod.POST)
		public String createBoard(BoardVO vo) throws Exception {
			boardService.createBoard(vo);
			return "redirect:/board";
		}
		
		/*// 게시글 상세보기
		@RequestMapping("/view")
		public String readBoard(@RequestParam("board_id") int board_id,Model model) throws Exception {
			model.addAttribute("board", boardService.readBoard(board_id)); // 게시글 읽기
			
			return "board/boardview";
		}*/
		
		// 게시글 상세보기
				@RequestMapping("/view")
				public String readBoard(int board_id,Model model,Criteria cri) throws Exception {
					List<ReplyVO> list=replyService.getreplylist(board_id);  //댓글목록
					model.addAttribute("list",list);
					model.addAttribute("board", boardService.readBoard(board_id)); // 게시글 읽기
					model.addAttribute("cri",cri);
					boardService.viewCnt(board_id);                                //조회수
					boardService.replyCnt(board_id);                
					return "board/boardview";
				}
		
		@RequestMapping("/delete")
		public String deleteBoard(int board_id) throws Exception {
			boardService.deleteBoard(board_id); // 삭제 처리
			return "redirect:/board"; // 목록으로 이동

		}
		
		// 게시글 수정 뷰
		@RequestMapping("/updateWrite")
		public String updateWrite(int board_id,Model model, Criteria cri) throws Exception {
			model.addAttribute("board", boardService.readBoard(board_id));
			model.addAttribute("cri", cri);
			return "board/updateWrite";
		}

		// 게시글 수정
		@RequestMapping(value = "/updateBoard", method = RequestMethod.POST)
		public String updateBoard(BoardVO vo) throws Exception {
				System.out.println("여기까진왔음");
				boardService.updateBoard(vo);
				return "redirect:/board";
		
			// return "redirect:/board";
		}
		
		//뉴스 리스트
		@RequestMapping("/news")
		public String listAllBoard(Model model)throws Exception  {
			System.out.println("뉴스리스트");
			return "board/newslist";
		
		
}
}
	

