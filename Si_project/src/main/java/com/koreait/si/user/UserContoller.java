package com.koreait.si.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.koreait.si.Const;
import com.koreait.si.ViewRef;
import com.koreait.si.user.model.ProfPARAM;
import com.koreait.si.user.model.StdPARAM;

@Controller
@RequestMapping("/user")
public class UserContoller {
	@Autowired
	private UserService service;
	
	// get : 화면 뿌리는용
	// 로그인
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login(Model model) {
		model.addAttribute(Const.VIEW, "user/login");
		return ViewRef.TEMP_DEFAULT;
	}
	
	// 회원가입
	@RequestMapping(value="/signup", method=RequestMethod.GET)
	public String signup(Model model) {
		model.addAttribute(Const.VIEW, "user/signUp");
		return ViewRef.TEMP_DEFAULT;
	}
	
	// 아이디찾기
	@RequestMapping(value="/findId", method=RequestMethod.GET)
	public String findid(Model model) {
		model.addAttribute(Const.VIEW, "user/findId");
		return ViewRef.TEMP_DEFAULT;
	}
	
	//비밀번호 찾기
	@RequestMapping(value="/findPw", method=RequestMethod.GET)
	public String findpw(Model model) {
		model.addAttribute(Const.VIEW, "user/findPw");
		return ViewRef.TEMP_DEFAULT;
	}
	
	// post : 로직처리
	// login
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(StdPARAM std_param, ProfPARAM prof_param, HttpSession hs, RedirectAttributes ra) {
		// 학생 로그인
		int std_result = service.loginStudent(std_param);
		// 교수 로그인
		int prof_result = service.loginProf(prof_param);
		
		if(std_result == Const.SUCCESS) {
			hs.setAttribute(Const.LOGIN_USER, std_param);
			return "redirect:/";
		}
		
		String msg = null;
		
		if(std_result == Const.NO_ID) {
			msg = "아이디를 확인해 주세요.";
		}else if(std_result == Const.NO_PW ) {
			msg = "비밀번호를 확인해 주세요.";
		}
		
		std_param.setMsg(msg);
		ra.addFlashAttribute("data", std_param);		
	
		return "redirect:/user/login";
	}
	
	// join
	@RequestMapping(value="/signup", method=RequestMethod.POST)
	public String signup(StdPARAM std_param, ProfPARAM prof_param, RedirectAttributes ra) {
		int std_result = service.signupStd(std_param);
		int prof_result = service.signupProf(prof_param);
		
		if(std_result == 1 || prof_result == 1) {
			return "redirect:/user/login";
		}
		ra.addAttribute("err", std_result);
		
		return "redirect:/user/signup";
	}
	
	// id 중복체크 - stdudent Id
	@RequestMapping(value="/ajaxIdChkStd", method=RequestMethod.POST)
	@ResponseBody
	public String ajaxIdChkStd(@RequestBody StdPARAM std_param) {		
		int std_result = service.loginStudent(std_param);
		return String.valueOf(std_result);
	}
	
	@RequestMapping(value="/ajaxIdChkProf", method=RequestMethod.POST)
	@ResponseBody
	public String ajaxIdChkProf(@RequestBody ProfPARAM prof_param) {		
		int prof_result = service.loginProf(prof_param);
		return String.valueOf(prof_result);
	}
}
