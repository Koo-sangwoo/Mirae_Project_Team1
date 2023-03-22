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
	
	@RequestMapping(value="/myPage", method = RequestMethod.GET)
	public String myPage() {
		return "User/myPage";
	}
	
	@RequestMapping(value="/myPage", method = RequestMethod.POST)
	public @ResponseBody int moveMypage(String m_password) {
		System.out.println("마이페이지2 이동 위해 moveMypage 실행");
		int member = userService.checkPw(m_password);
		if(member == 1) {
			System.out.println("데이터 존재");
			return member;
		}
		else {
			System.out.println("데이터 존재하지 않거나 잘못 입력");
			return member;
		}
	}
}
