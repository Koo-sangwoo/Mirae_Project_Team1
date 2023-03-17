package com.music.pro.controller.user;
import com.music.pro.vo.user.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.music.pro.model.user.UserService;
import com.music.pro.vo.user.UserVO;
@Controller
public class LoginController {
	
	@Autowired
	UserService userService;
	
	@RequestMapping(value = "/login_form" , method = RequestMethod.GET)
	public String login_form() {
		return "User/login_form";
	}
	
	@RequestMapping(value = "/login_form", method = RequestMethod.POST)
	public String login(@RequestParam("m_id")String m_id, @RequestParam("m_password")String m_password) throws Exception{
		System.out.println("로그인  시도");
		
		String path = "";
		UserVO userVO = new UserVO();
		
		userVO.setM_id(m_id);
		userVO.setM_password(m_password);
		
		int result = userService.loginUser(userVO);
		
		if(result == 1)
			path = "home";
		else
			path = "User/login_form";
		
		return path;
	}
}
