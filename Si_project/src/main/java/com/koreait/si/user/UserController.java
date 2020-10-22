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
public class UserController {
	@Autowired
	private UserService service;

	// get : 화면 뿌리는용
	// 로그인
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login(Model model) {
		model.addAttribute(Const.VIEW, "user/login");
		return ViewRef.TEMP_DEFAULT;
	}
	// 로그아웃
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logout(HttpSession hs) {
		hs.invalidate(); // 세션에 있는거 다삭제
		return "redirect:/user/login";
	}
	
	// policy
	@RequestMapping(value="/policy", method=RequestMethod.GET)
	public String policy(Model model) {
		model.addAttribute(Const.VIEW, "user/policy");
		return ViewRef.TEMP_DEFAULT;
	}
	// privacy
	@RequestMapping(value="/privacy", method=RequestMethod.GET)
	public String privacy(Model model) {
		model.addAttribute(Const.VIEW, "user/privacy");
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
	
	// 마이페이지
	@RequestMapping(value="/mypage", method=RequestMethod.GET)
	public String mypage(Model model) {		
		model.addAttribute(Const.VIEW, "user/mypage");
		return ViewRef.MNG_DEFAULT;
	}
		
	@RequestMapping(value="/chgStdPw", method=RequestMethod.GET)
	public String chgStdPw(Model model) {
		model.addAttribute(Const.VIEW, "user/chgStdPw");
		return ViewRef.TEMP_DEFAULT;
	}
	@RequestMapping(value="/chgProfPw", method=RequestMethod.GET)
	public String chgProfPw(Model model) {
		model.addAttribute(Const.VIEW, "user/chgProfPw");
		return ViewRef.TEMP_DEFAULT;
	}
	@RequestMapping(value="/confirmChg", method=RequestMethod.GET)
	public String confirmChg(Model model) {
		model.addAttribute(Const.VIEW, "user/confirmChg");
		return ViewRef.TEMP_DEFAULT;
	}
	@RequestMapping(value="/checkCurrentStdPw", method=RequestMethod.GET)
	public String checkCurrentStdPw(Model model) {
		model.addAttribute(Const.VIEW, "user/checkCurrentStdPw");
		return ViewRef.TEMP_DEFAULT;
	}
	@RequestMapping(value="/checkCurrentProfPw", method=RequestMethod.GET)
	public String checkCurrentProfPw(Model model) {
		model.addAttribute(Const.VIEW, "user/checkCurrentProfPw");
		return ViewRef.TEMP_DEFAULT;
	}
	
	
	
	
	
	
	
	// post : 로직처리
	// login
	@RequestMapping(value="/loginStd", method=RequestMethod.POST)
	public String loginStd(StdPARAM std_param,HttpSession hs, RedirectAttributes ra) {
		// 학생 로그인
		int std_result = service.loginStd(std_param);
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
	
	
	@RequestMapping(value="/loginProf", method=RequestMethod.POST)
	public String loginPrpf(ProfPARAM prof_param, HttpSession hs, RedirectAttributes ra) {
		// 교수 로그인
		int prof_result = service.loginProf(prof_param);
		
		if(prof_result == Const.SUCCESS) {
			hs.setAttribute(Const.LOGIN_USER, prof_param);
			return "redirect:/";
		}
		
		String msg = null;
		
		if(prof_result == Const.NO_ID) {
			msg = "아이디를 확인해 주세요.";
		}else if(prof_result == Const.NO_PW ) {
			msg = "비밀번호를 확인해 주세요.";
		}	
		
		prof_param.setMsg(msg);		
		ra.addFlashAttribute("data", prof_param);
	
		return "redirect:/user/login";
	}
	
	// 회원가입
	@RequestMapping(value="/signupStd", method=RequestMethod.POST)
	public String signupStd(StdPARAM std_param, RedirectAttributes ra) {
		int std_result = service.signupStd(std_param);
		if(std_result == 1) {
			return "redirect:/user/login";
		}
		ra.addAttribute("err", std_result);
		
		return "redirect:/user/signup";
	}
	
	@RequestMapping(value="/signupProf", method=RequestMethod.POST)
	public String signupProf(ProfPARAM prof_param, RedirectAttributes ra) {
		int prof_result = service.signupProf(prof_param);
		if( prof_result == 1) {
			return "redirect:/user/login";
		}
		ra.addAttribute("err", prof_result);
		
		return "redirect:/user/signup";
	}
	// no 중복체크 학생
	@RequestMapping(value="/ajaxNoChkStd", method=RequestMethod.POST)
	@ResponseBody
	public String ajaxNoChkStd(@RequestBody StdPARAM std_param) {
		int std_result = service.checkStdNo(std_param); // 2: 가입가능 3: 가입 불가능
		return String.valueOf(std_result);
	}
	// id 중복체크 학생
	@RequestMapping(value="/ajaxIdChkStd", method=RequestMethod.POST)
	@ResponseBody
	public String ajaxIdChkStd(@RequestBody StdPARAM std_param) {	
		int std_result = service.loginStd(std_param);
		return String.valueOf(std_result);
	}
	
	// no 중복체크 교수 
	@RequestMapping(value="/ajaxNoChkProf", method=RequestMethod.POST)
	@ResponseBody
	public String ajaxNoChkProf(@RequestBody ProfPARAM prof_param) {
		int prof_result = service.checkProfNo(prof_param); // 2: 가입가능 3: 가입 불가능
		return String.valueOf(prof_result);
	}
	
	
	// id 중복체크 교수
	@RequestMapping(value="/ajaxIdChkProf", method=RequestMethod.POST)
	@ResponseBody
	public String ajaxIdChkProf(@RequestBody ProfPARAM prof_param) {
		int prof_result = service.loginProf(prof_param);
		return String.valueOf(prof_result);
	}
	
	
	/* 아이디찾기 ajax */
	// 학생
	@RequestMapping(value="/ajaxFindIdStd", method=RequestMethod.POST)
	@ResponseBody
	public String ajaxFindIdStd(@RequestBody StdPARAM std_param) {	
		String std_result = service.findIdStd(std_param);
		return std_result;
	}
	// 교수
	@RequestMapping(value="/ajaxFindIdProf", method=RequestMethod.POST)
	@ResponseBody
	public String ajaxFindIdProf(@RequestBody ProfPARAM prof_param) {	
		String prof_result = service.findIdProf(prof_param);
		return prof_result;
	}
	
	/* 비밀번호찾기 */
	
	// 학생 - 정보확인
	@RequestMapping(value="/checkStdPw", method=RequestMethod.POST)
	public String checkStdPw(StdPARAM std_param, RedirectAttributes ra) {
		String msg = null;
		int std_result = service.checkStdPw(std_param);
		if(std_result == 1) {
			ra.addFlashAttribute("data", std_param);
			// 정보 맞음
			return "redirect:/user/chgStdPw";
		}else if(std_result == 2) {
			// 2: 정보없음 msg => 정보를 다시 확인해주세요
			msg = "회원 정보를 찾을 수 없습니다. 다시 확인해 주세요.";
			std_param.setMsg(msg);
			ra.addFlashAttribute("data", std_param);
		}
		return "redirect:/user/findPw";		
	}
	
	// 학생 - 비밀번호 업데이트
	@RequestMapping(value="/changeStdPw", method=RequestMethod.POST)
	public String changeStdPw(StdPARAM std_param) {
		service.changeStdPw(std_param);
		return "redirect:/user/confirmChg";
	}
	
	// 교수 - 정보확인
	@RequestMapping(value="/checkProfPw", method=RequestMethod.POST)
	public String checkProfPw(ProfPARAM prof_param, RedirectAttributes ra) {
		String msg = null;
		int prof_result = service.checkProfPw(prof_param);
		if(prof_result == 1) {
			ra.addFlashAttribute("data", prof_param);
			// 정보 맞음
			return "redirect:/user/chgProfPw";
		}else if(prof_result == 2) {
			// 2: 정보없음 msg => 정보를 다시 확인해주세요
			msg = "회원 정보를 찾을 수 없습니다. 다시 확인해 주세요.";
			prof_param.setMsg(msg);
			ra.addFlashAttribute("data", prof_param);
		}
		return "redirect:/user/findPw";	
	}
	
	//교수 - 비밀번호 업데이트
	@RequestMapping(value="/changeProfPw", method=RequestMethod.POST)
	public String changeProfPw(ProfPARAM prof_param) {		
		service.changeProfPw(prof_param);
		return "redirect:/user/confirmChg";
	}
	
	/* 비밀번호 변경*/
	//마이페이지 - 비밀번호 변경 (학생)
	@RequestMapping(value="/checkCurrentStdPw", method=RequestMethod.POST)
	public String checkCurrentStdPw(StdPARAM std_param, HttpSession hs, RedirectAttributes ra) {		
		String msg = null;
		
		hs.setAttribute(Const.LOGIN_USER, std_param);
		int std_result = service.checkCurrentStdPw(std_param);
		
		if(std_result == 3) {
			// 현재 비밀번호 틀림
			msg = "비밀번호가 틀렸습니다. 다시 확인해 주세요.";
			std_param.setMsg(msg);
			ra.addFlashAttribute("data", std_param);
			return "redirect:/user/checkCurrentStdPw";
		}
		ra.addFlashAttribute("data", std_param); // 로그인 후에 비밀번호 변경시 std_id값 넣어줌
		return "redirect:/user/chgStdPw";
	}
	
	//마이페이지 - 비밀번호 변경 (교수)
	@RequestMapping(value="/checkCurrentProfPw", method=RequestMethod.POST)
	public String checkCurrentProfPw(ProfPARAM prof_param, HttpSession hs, RedirectAttributes ra) {		
		String msg = null;
		
		hs.setAttribute(Const.LOGIN_USER, prof_param);
		int prof_result = service.checkCurrentProfPw(prof_param);
		
		if(prof_result == 3) {
			// 현재 비밀번호 틀림
			msg = "비밀번호가 틀렸습니다. 다시 확인해 주세요.";
			prof_param.setMsg(msg);
			ra.addFlashAttribute("data", prof_param);
			return "redirect:/user/checkCurrentStdPw";
		}
		ra.addFlashAttribute("data", prof_param); // 로그인 후에 비밀번호 변경시 std_id값 넣어줌
		return "redirect:/user/chgProfPw";
	}
}
