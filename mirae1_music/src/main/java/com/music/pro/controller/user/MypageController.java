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
	public String moveMypage(UserVO vo,HttpServletRequest request, HttpSession session) {
		String m_id = (String)request.getAttribute("m_id");
		String m_password = (String)request.getAttribute("m_password");
		UserVO user = new UserVO();
		user.setM_id(m_id);
		user.setM_password(m_password);
		if(userService.checkUser(user) == 1) {
			System.out.println("일치");
			return "myPage2";
		} else {
			return "myPage";
		}
	}
}
