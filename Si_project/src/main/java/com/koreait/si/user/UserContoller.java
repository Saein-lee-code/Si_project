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
	// get : 화면 뿌리는용
	// 로그인
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String login(Model model) {
		model.addAttribute(Const.VIEW, "user/login");
		return ViewRef.TEMP_DEFAULT;
	}
	
	// 회원가입
	@RequestMapping(value="/signup", method = RequestMethod.GET)
	public String signup(Model model) {
		model.addAttribute(Const.VIEW, "user/signUp");
		return ViewRef.TEMP_DEFAULT;
	}
	
	// 아이디찾기
	@RequestMapping(value="/findId", method = RequestMethod.GET)
	public String findid(Model model) {
		model.addAttribute(Const.VIEW, "user/findId");
		return ViewRef.TEMP_DEFAULT;
	}
	
	//비밀번호 찾기
	@RequestMapping(value="/findPw", method = RequestMethod.GET)
	public String findpw(Model model) {
		model.addAttribute(Const.VIEW, "user/findPw");
		return ViewRef.TEMP_DEFAULT;
	}
	
	// post : 로직처리
}
