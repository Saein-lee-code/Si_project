package com.koreait.si.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.koreait.si.Const;
import com.koreait.si.SecurityUtils;
import com.koreait.si.user.model.ProfDMI;
import com.koreait.si.user.model.ProfPARAM;
import com.koreait.si.user.model.ProfVO;
import com.koreait.si.user.model.StdDMI;
import com.koreait.si.user.model.StdPARAM;
import com.koreait.si.user.model.StdVO;

@Service
public class UserService {
	@Autowired
	private UserMapper userMapper;

	//1번 로그인 성공, 2번 아이디 없음, 3번 비번 틀림
	
	// 학생 로그인
	public int loginStudent(StdPARAM std_param) {
		if(std_param.getStd_id() != null) {
			if(std_param.getStd_id().equals("")) { return Const.NO_ID; }
			
			StdDMI dbStd = userMapper.selStudent(std_param);		
			if(dbStd == null) { return Const.NO_ID; }
			
			String cryptPw = SecurityUtils.getEncrypt(std_param.getStd_pw(), dbStd.getSalt());
			if(!cryptPw.equals(dbStd.getStd_pw())) { return Const.NO_PW; }

			std_param.setI_std(dbStd.getI_std());
			std_param.setStd_id(dbStd.getStd_id());
			std_param.setStd_pw(null);
			std_param.setStd_nm(dbStd.getStd_nm());
			
			return Const.SUCCESS;
		}
		return 0;		
	}
	
	// 교수 로그인
	public int loginProf(ProfPARAM prof_param) {
		if(prof_param.getProf_id() != null) {
			if(prof_param.getProf_id().equals("")) { return Const.NO_ID; }
			
			ProfDMI dbProf = userMapper.selProfessor(prof_param);
			if(dbProf == null) { return Const.NO_ID; }
			String cryptPw = SecurityUtils.getEncrypt(prof_param.getProf_pw(), dbProf.getSalt());
			if(!cryptPw.equals(dbProf.getProf_pw())) { return Const.NO_PW; }
			
			prof_param.setI_prof(dbProf.getI_prof());
			prof_param.setProf_id(dbProf.getProf_id());
			prof_param.setProf_pw(null);
			prof_param.setProf_nm(dbProf.getProf_nm());
			
			return Const.SUCCESS;
		}else
			return 0;
	}
	
	// 회원가입
	public int signupStd(StdVO std_param) {
		String pw = std_param.getStd_pw();
		String salt = SecurityUtils.generateSalt();
		String cryptPw = SecurityUtils.getEncrypt(pw, salt);
		
		std_param.setSalt(salt);
		std_param.setStd_pw(cryptPw);
		
		return userMapper.insStudent(std_param);
	}
	
	public int signupProf(ProfVO prof_param) {
		String pw = prof_param.getProf_pw();
		String salt = SecurityUtils.generateSalt();
		String cryptPw = SecurityUtils.getEncrypt(pw, salt);
		
		prof_param.setSalt(salt);
		prof_param.setProf_pw(cryptPw);
		
		return userMapper.insProfessor(prof_param);
	}
}
