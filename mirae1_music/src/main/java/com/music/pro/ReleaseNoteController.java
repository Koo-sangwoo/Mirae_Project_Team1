package com.music.pro;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class ReleaseNoteController {
	@RequestMapping(value = "/release_note" , method = RequestMethod.GET)
	public String release_note(Model model) {
		return "release_note";
	}
}
