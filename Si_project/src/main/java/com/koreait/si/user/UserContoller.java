package com.koreait.si.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.koreait.si.Const;
import com.koreait.si.ViewRef;

@Controller
@RequestMapping("/user")
public class UserContoller {
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String login(Model model) {
		System.out.println("Controller - login");
		model.addAttribute(Const.TITLE, "학생정보관리시스템");
		model.addAttribute(Const.VIEW, "user/login");
		return ViewRef.TEMP_DEFAULT;
	}	
}
