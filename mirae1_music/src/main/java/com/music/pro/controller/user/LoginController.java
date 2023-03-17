package com.music.pro.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class LoginController {
	@RequestMapping(value = "/login_form" , method = RequestMethod.GET)
	public String release_note(Model model) {
		return "login_form";
	}
}
