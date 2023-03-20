package com.music.pro.controller.user;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.music.pro.model.user.UserService;
import com.music.pro.vo.user.UserVO;

@Controller
public class RegistrationController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/registration.do")
	public String registrationDo(UserVO vo){
		System.out.println("컨트롤러에서 registrarionDo 실행시 출력");
		userService.insertUser(vo);
		System.out.println("데이터 추가 성공");
		return "home";
	}
	
	@RequestMapping(value = "/registration_form", method = RequestMethod.GET)
	public String registration(Model model) {
		return "User/registration_form";
	}
	
	@RequestMapping(value = "/checkId") // 아이디 중복 체크
	public @ResponseBody int checkId(String m_id) {
		int result = userService.checkId(m_id);
		if(result == 1) {
			System.out.println("중복된 아이디");
		} else if(result == 0) {
			System.out.println("사용 가능한 아이디");
		}
		return result;
	}
}
