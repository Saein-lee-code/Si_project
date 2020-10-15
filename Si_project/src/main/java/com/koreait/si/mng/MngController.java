package com.koreait.si.mng;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.koreait.si.Const;
import com.koreait.si.ViewRef;

@Controller
@RequestMapping("/mng")
public class MngController {
	// 메인페이지
	@RequestMapping(value="/mng_home", method = RequestMethod.GET)
	public String home(Model model) {
		model.addAttribute(Const.VIEW, "mng/mng_home");
		return ViewRef.MNG_DEFAULT;
	}
	
	// 공지사항
	@RequestMapping(value="/notice", method = RequestMethod.GET)
	public String notice(Model model) {
		model.addAttribute(Const.VIEW, "menu/notice");
		return ViewRef.MNG_DEFAULT;
	}
	
	// 시간표	
	@RequestMapping(value="/timetable", method = RequestMethod.GET)
	public String teimetable(Model model) {
		model.addAttribute(Const.VIEW, "menu/timetable");
		return ViewRef.MNG_DEFAULT;
	}
	
	// 마이페이지
	@RequestMapping(value="/mypage", method = RequestMethod.GET)
	public String mypage(Model model) {
		model.addAttribute(Const.VIEW, "menu/mypage");
		return ViewRef.MNG_DEFAULT;
	}
	
	// 열람실예약
	@RequestMapping(value="/seat", method = RequestMethod.GET)
	public String seat(Model model) {
		model.addAttribute(Const.VIEW, "menu/seat");
		return ViewRef.MNG_DEFAULT;
	}
	
	
	// 자유게시판
	@RequestMapping(value="/board", method = RequestMethod.GET)
	public String board(Model model) {
		model.addAttribute(Const.VIEW, "menu/board");
		return ViewRef.MNG_DEFAULT;
	}
	
	// 장터
	@RequestMapping(value="/market_board", method = RequestMethod.GET)
	public String market_board(Model model) {
		model.addAttribute(Const.VIEW, "menu/market_board");
		return ViewRef.MNG_DEFAULT;
	}
	
	// 장학금신청
	@RequestMapping(value="/scholarship", method = RequestMethod.GET)
	public String scholarship(Model model) {
		model.addAttribute(Const.VIEW, "menu/scholarship");
		return ViewRef.MNG_DEFAULT;
	}
}
