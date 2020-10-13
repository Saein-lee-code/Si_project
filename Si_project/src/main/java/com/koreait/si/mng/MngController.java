package com.koreait.si.mng;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.koreait.si.Const;
import com.koreait.si.ViewRef;

@Controller
@RequestMapping("/mng")
public class MngController {
	@RequestMapping(value="/mng_home", method = RequestMethod.GET)
	public String login(Model model) {
		System.out.println("Controller - mng");
		model.addAttribute(Const.TITLE, "학생정보관리시스템");
		model.addAttribute(Const.VIEW, "mng/mng_home");
		return ViewRef.TEMP_DEFAULT;
	}
}
