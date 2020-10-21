package com.koreait.si;


import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;

import com.koreait.si.user.model.StdVO;

public class SecurityUtils {
	// 로그인한 학생 pk값 구하기
	public static int getLoginStdPk(HttpSession hs) {
		StdVO loginStd = (StdVO) hs.getAttribute(Const.LOGIN_USER);
		return loginStd == null ? 0 : loginStd.getStd_no();
	}
	// 암호화
	public static String generateSalt() {
		return BCrypt.gensalt();
	}
	public static String getEncrypt(String pw, String salt) {
		return BCrypt.hashpw(pw, salt); 
	}
}
