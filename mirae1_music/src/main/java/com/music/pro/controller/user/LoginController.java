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
public class LoginController {
	
	@Autowired
	UserService userService;
	
	@RequestMapping(value = "/login_form" , method = RequestMethod.GET)
	public String login_form() {
		return "User/login_form";
	}
	@RequestMapping(value="/checkUser") // 로그인 전 체크
	public @ResponseBody int checkUser(UserVO vo) {
		int checkUser = userService.checkUser(vo);
		if(checkUser == 1)
			System.out.println("데이터 존재함");
		else
			System.out.println("데이터 존재하지 않거나 잘못 입력");
		return checkUser;
	}
	
	@RequestMapping(value = "/login_form", method = RequestMethod.POST) // 로그인
	public String login(UserVO vo, HttpSession session){
		System.out.println("로그인  시도");
		UserVO member = userService.loginUser(vo);
		if(member != null) {
			session.setAttribute("member", member);
			System.out.println("로그인 성공");
			return "home";
		} else {
			System.out.println("로그인 실패");
			return "login_form";
		}
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET) // 로그아웃
	public String logout(HttpSession session) {
		session.invalidate();
		return "home";
	}
}
