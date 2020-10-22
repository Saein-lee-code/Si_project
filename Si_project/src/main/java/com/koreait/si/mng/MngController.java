package com.koreait.si.mng;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.koreait.si.Const;
import com.koreait.si.SecurityUtils;
import com.koreait.si.ViewRef;
import com.koreait.si.mng.model.SeatDMI;
import com.koreait.si.mng.model.SeatPARAM;

@Controller
@RequestMapping("/mng")
public class MngController {
	
	@Autowired
	private MngService service;
	
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
	
	
	// 열람실예약
	@RequestMapping(value="/seat", method = RequestMethod.GET)
	public String seat(Model model, HttpSession hs, SeatPARAM seat_param) {		
		seat_param.setStd_no(SecurityUtils.getLoginStdPk(hs));	
		List<SeatDMI> list = service.selAllSeat(seat_param);// 모든 좌석확인
		
		hs.setAttribute("list", list);
	
		int checkSeat = service.checkSeat(seat_param);
		hs.setAttribute("isBooked", checkSeat);
		// isBooked == 1 >> 예약정보 있음
		// isBooked == 0 >> 예약정보 없음
		
		if(checkSeat == Const.SUCCESS) { // 예약된 좌석정보 받아옴			
			hs.setAttribute("data", seat_param);
		}else { // 예약된 정보없음
			hs.setAttribute("data", seat_param);
		}			
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
	
	/* POST 로직 담당 */	
	// 자리예약
	@RequestMapping(value="/insSeat", method = RequestMethod.POST)
	public String insSeat(SeatPARAM param) {
        // param.setStd_no(SecurityUtils.getLoginStdPk(hs));
		int select_result = service.checkSeat(param);		
		if(select_result == 0) {
			// 예약정보 없음
			service.insSeat(param);
		}else {
			// 예약정보 있음			
		}
		return "redirect:/mng/seat";
	}
	@RequestMapping(value="/delSeat", method = RequestMethod.POST)
	public String delSeat(SeatPARAM param, HttpSession hs) {
		param.setStd_no(SecurityUtils.getLoginStdPk(hs));
		service.delSeat(param);
		return "redirect:/mng/seat";
	}
}
