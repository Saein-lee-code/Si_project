package com.koreait.si.mypage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.koreait.si.Const;
import com.koreait.si.ViewRef;
import com.koreait.si.user.model.ProfPARAM;
import com.koreait.si.user.model.StdPARAM;

@Controller
@RequestMapping("/mypage")
public class MypageController {
	@Autowired
	private MypageService service;
	/* GET */
	@RequestMapping(value="/update", method=RequestMethod.GET)
	public String update(Model model) {
		model.addAttribute(Const.VIEW, "mypage/update");
		return ViewRef.MNG_DEFAULT;
	}
	
	
	/* POST */
	@RequestMapping(value="/updateStdInfo", method=RequestMethod.POST)
	public String updateStdInfo(StdPARAM std_param) {
		int std_result = service.updateStd(std_param);
		if(std_result == Const.SUCCESS) {
			return "redirect:/user/logout";
		}else
			return "redirect:/mypage/update";		
	}
	
	@RequestMapping(value="/updateProfInfo", method=RequestMethod.POST)
	public String updateProfInfo(ProfPARAM prof_param) {
		int prof_result = service.updateProf(prof_param);
		if(prof_result == Const.SUCCESS) {
			return "redirect:/user/logout";
		}else
			return "redirect:/mypage/update";
	}
	
	
}
