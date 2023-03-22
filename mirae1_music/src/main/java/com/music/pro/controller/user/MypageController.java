package com.music.pro.controller.user;

import com.music.pro.vo.user.UserVO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.bind.annotation.ResponseBody;

import com.music.pro.model.user.UserService;

@Controller
public class MypageController {

	@Autowired
	UserService userService;

	@RequestMapping(value = "/myPage", method = RequestMethod.GET) // 회원 정보를 보기 위해 인증하는 페이지
	public String myPage() {
		return "User/myPage";
	}

	@RequestMapping(value = "/myPage2", method = RequestMethod.GET) // 회원 정보 수정, 삭제 페이지
	public String myPage2() {
		return "User/myPage2";
	}

	@RequestMapping(value = "/myPage", method = RequestMethod.POST)
	public @ResponseBody int moveMypage(UserVO vo) {
		System.out.println("마이페이지2 이동 위해 moveMypage 실행");
		int member = userService.checkPw(vo);
		if (member == 1)
			System.out.println("데이터 존재");
		else
			System.out.println("데이터 존재하지 않거나 잘못 입력");

		return member;
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST) // 회원 정보 수정 처리
	public String update(UserVO vo) {
		System.out.println("정보 수정 요청");
		userService.updateUser(vo);
		return "User/myPage2";
	}
}
