package com.koreait.si;

import org.mindrot.jbcrypt.BCrypt;

public class SecurityUtils {
	public static String generateSalt() {
		return BCrypt.gensalt();
	}
	public static String getEncrypt(String pw, String salt) {
		return BCrypt.hashpw(pw, salt); 
	}
	
}
