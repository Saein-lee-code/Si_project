package com.koreait.si;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginCheckInterceptor extends HandlerInterceptorAdapter{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,  Object handler ) throws Exception{
		String uri = request.getRequestURI();
		System.out.println("uri: " + uri);
		String[] uriArr = uri.split("/");
//		System.out.println("uriArr.length: " + uriArr.length);
		
		HttpSession hs = request.getSession();
		
		if(uri.equals("/")) { // 주소가 이상한 경우
			return true;
		}else if(uriArr.length < 3) {
			return false;
		}else if(uriArr[1].contentEquals("res")) { // resources (js, css, img)
			return true;
		}
		
		String requestUrl = request.getRequestURL().toString();		

		// true: null 
		boolean isLogout = (hs.getAttribute(Const.LOGIN_USER) == null ? true : false);
		
		if(requestUrl.contains("/mypage")) {
			if(isLogout) {
				// 로그아웃인 상태
				response.sendRedirect("/user/login");
				return false;
			}
		}else if(requestUrl.contains("/user")){			
			return true; 
		}

		
		switch(uriArr[1]) {
			case ViewRef.URI_USER: // user				
				switch(uriArr[2]) {
					case "login" : case "signup" :
						if(!isLogout) {
							// 로그인되어있는 상태
							response.sendRedirect("/mng/mng_home");
							return false;
						}				
				}
			case ViewRef.URI_MNG: // mng			
				if(isLogout) {
					// 로그아웃인 상태
					response.sendRedirect("/user/login");
					return false;
				}
		}
		return true;
	}
}
