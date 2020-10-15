package com.koreait.si;

import javax.servlet.http.HttpServletRequest;
import org.springframework.web.bind.annotation.RequestMapping;

public class indexController {
	@RequestMapping("/")
	// annotation  ()안의 경로와 컨트롤러를 매핑해줌.
	public String index(HttpServletRequest req) {
		if(Const.realPath == null) {
			Const.realPath = req.getServletContext().getRealPath("");
		}
		System.out.println("root!!");
		return "redirect:/mng/mng_home";
	}
}
