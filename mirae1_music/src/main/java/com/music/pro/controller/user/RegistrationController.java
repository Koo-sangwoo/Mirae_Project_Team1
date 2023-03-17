package com.music.pro.controller.user;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.music.pro.model.user.UserService;
import com.music.pro.vo.user.UserVO;

@Controller
public class RegistrationController {
	
	@Autowired
	UserService userService;
	
	@RequestMapping(value = "/registration.do", method = RequestMethod.POST)
	public String registrationDo(UserVO vo) {
		System.out.println("컨트롤러에서 registrarionDo 실행시 출력");
		if(userService.insertUser(vo) == 0)
			System.out.println("데이터 추가 실패");
		else
			System.out.println("데이터 추가 성공");
		
		return "redirect:/login_form";
	}
	
	@RequestMapping(value = "/registration_form", method = RequestMethod.GET)
	public String registration(Model model) {
		return "registration_form";
	}
	
	@RequestMapping(value = "/checkId", method = RequestMethod.GET)
	public String checkId(UserVO vo) throws Exception{
		int result = userService.checkId(vo);
		if(result == 1) {
			System.out.println("사용 불가한 아이디");
			return "redirect:/registration_form";
		}
		else if(result == 0) {
			System.out.println("사용 가능한 아이디");
			return "redirect:/registration_form";
		}
		return "redirect:/registration_form";
	}
}
