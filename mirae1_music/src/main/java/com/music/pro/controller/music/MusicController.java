package com.music.pro.controller.music;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.music.pro.model.music.MusicService;
import com.music.pro.vo.music.MusicVO;


@Controller
public class MusicController {
	
	@Autowired
	private MusicService service;
	
	
	
	@RequestMapping(value="/music", method=RequestMethod.GET) //k-pop카테고리를 가진 굿즈 리스트업
	public ModelAndView musicAll(@RequestParam(value="music_genre") String genre) {
		List<MusicVO> list = service.getMusicList(genre); //데이터를 db에서 가져와 list에 셋업
		ModelAndView mav = new ModelAndView();
		mav.setViewName("music/music"); // 보여줄 화면 소스 입력
		mav.addObject("Mlist",list); // jsp에서 사용할 list객체 값들 속성화
		return mav;// 리턴~
	}
	
	@RequestMapping(value="/musicDetail", method=RequestMethod.GET)//상품 상세 페이지 컨트롤러
	public ModelAndView productDetail(MusicVO vo) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("music/musicDetail");// 보여줄 페이지 명 추가
		mav.addObject("musicDetail",service.getMusicDetail(vo));//해당 상품의 정보를 가져오는 메소드를 통해 가져온 값을 detail이란 이름의 속성으로 추가
		return mav;
	}
	
	@RequestMapping(value="/music_search", method=RequestMethod.GET)//상품 검색
	public ModelAndView productSearch(@RequestParam(value="keyword") String keyword) {
		List<MusicVO> Searchlist = service.musicSearch(keyword);
		ModelAndView mav = new ModelAndView();
		mav.addObject("Mlist",Searchlist);
		mav.setViewName("/music/music");
		return mav;
	}
	
	@GetMapping(value="/insertMusic")
	public ModelAndView visitInsertProduct() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("music/insertMusic");
		return mav;
	}
	
	@PostMapping(value="/insertMusic")
	public ModelAndView insertMusic(MusicVO vo) {
		ModelAndView mav = new ModelAndView();
		service.insertMusic(vo);
		mav.setViewName("redirect:/music?music_genre="+vo.getMusic_genre());
		return mav;
	}
	
	@GetMapping(value="/updateMusic")
	public ModelAndView visitUpdateMusic(MusicVO vo) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("music/updateMusic");
		mav.addObject("music",service.getMusicDetail(vo));//해당 상품의 정보를 가져오는 메소드를 통해 가져온 값을 detail이란 이름의 속성으로 추가
		return mav;
	}
	
	@PostMapping(value="/updateMusic")
	public ModelAndView updateMusic(MusicVO vo) {
		ModelAndView mav = new ModelAndView();
		service.updateMusic(vo);
		mav.setViewName("redirect:/musicDetail?music_id="+vo.getMusic_id());
		return mav;
	}
	
	@GetMapping(value="/deleteMusic")
	public ModelAndView deleteMusic(MusicVO vo) {
		ModelAndView mav = new ModelAndView();
		System.out.println("세팅된 vo의 id값 " + vo.getMusic_id());
		service.deleteMusic(vo);
		mav.setViewName("redirect:/music?music_genre=hiphop");
		return mav;
	}
	
	
	
}
