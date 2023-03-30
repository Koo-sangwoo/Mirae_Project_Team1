package com.music.pro.controller.board;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.music.pro.model.board.NewsService;
import com.music.pro.model.board.PageVO;
import com.music.pro.model.board.ReplyService;
import com.music.pro.vo.board.BoardVO;
import com.music.pro.vo.board.NewsVO;
import com.music.pro.vo.board.ReplyVO;

@Controller
public class NewsController {

	@Autowired
	private NewsService NewsService;
	@Autowired
	private ReplyService replyService;
	
	//게시글 목록 + 페이징
	
	@RequestMapping("/news")
	public String listAllNews(Model model, Criteria cri,NewsVO vo) throws Exception {
		
		
		
		
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("list", NewsService.listAllNewsPaging(cri));
		
		
	
		model.addAttribute("map",map);
		
		int total = NewsService.getTotal(cri);
		
		
		PageVO pageMake = new PageVO (cri, total);
		model.addAttribute("pageMaker", pageMake);
		
		NewsService.thumnail(vo);
		
		
		return "news/newslist";
		
	}
	
	//게시글 쓰기뷰
    @RequestMapping("/newswrite")
    public String newswrite() {
       System.out.println("글쓰기로이동");
       // 글쓰기 폼 페이지로 이동
       return "news/newswrite";
    }
    
 // 게시글 등록
    @RequestMapping(value = "/createnews", method = RequestMethod.POST)
    public String createBoard(NewsVO vo) throws Exception {
       NewsService.createNews(vo);
       return "redirect:/news";
    }
    
    @RequestMapping("/view")
    public String readBoard(int board_id,Model model,Criteria cri) throws Exception {
       List<ReplyVO> list=replyService.getreplylist(board_id);  //댓글목록
       model.addAttribute("list",list);
       model.addAttribute("board", NewsService.readNews(board_id)); // 게시글 읽기
       model.addAttribute("cri",cri);
       NewsService.viewCnt(board_id);                                //조회수
       NewsService.replyCnt(board_id);                
       return "board/boardview";
    }
}
