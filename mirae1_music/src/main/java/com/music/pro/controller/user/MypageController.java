package com.music.pro.controller.user;

import com.music.pro.vo.board.BoardVO;
import com.music.pro.vo.cart.CartVO;
import com.music.pro.vo.order.OrderVO;
import com.music.pro.vo.user.UserVO;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.bind.annotation.ResponseBody;

import com.music.pro.model.board.BoardService;
import com.music.pro.model.cart.CartService;
import com.music.pro.model.order.OrderService;
import com.music.pro.model.user.UserService;

@Controller
public class MypageController {

	@Autowired
	UserService userService;
	
	
	@RequestMapping(value = "/myPage", method = RequestMethod.POST) // 회원 정보를 보기 위해 인증하는 페이지
	public String myPage() {
		return "User/myPage";
	}

	@RequestMapping(value = "/myPage2", method = RequestMethod.GET) // 회원 정보 수정, 삭제 페이지
	public String myPage2() {
		return "User/myPage2";
	}

	@RequestMapping(value = "/checkPw", method = RequestMethod.POST)
	public @ResponseBody int moveMypage(UserVO vo) {
		System.out.println("마이페이지2 이동 위해 moveMypage 실행");
		int member = userService.checkPw(vo);
		if (member == 1)
			System.out.println("데이터 존재");
		else
			System.out.println("데이터 존재하지 않거나 잘못 입력");

		return member;
	}

	@RequestMapping(value = "/myPage2", method = RequestMethod.POST) // 회원 정보 수정 처리
	public String update(UserVO vo, HttpSession session) {
		System.out.println("정보 수정 요청");
		userService.updateUser(vo);
		session.invalidate();
		return "home";
	}
	@RequestMapping(value = "delete", method = RequestMethod.POST) // 회원 탈퇴
	public String delete(String m_id, HttpSession session) {
		System.out.println("회원 탈퇴 요청");
		
		int result = userService.deleteUser(m_id);
		if(result == 1) {
			System.out.println("삭제 완료");
			session.invalidate();
			return "home";
		} else {
			System.out.println("삭제 실패");
			return "redirect:/myPage2";
		}
	}
	
	@RequestMapping(value = "adminPage" , method = RequestMethod.GET)
	public String adminPage(Model model) {
		System.out.println("관리자 페이지");
		UserVO vo = new UserVO();
		vo.setM_code(0);
		model.addAttribute("member", userService.getMemberList(vo));
		System.out.println(userService.getMemberList(vo));
		return "User/adminPage";
	}
}
