package com.koreait.si.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.koreait.si.Const;
import com.koreait.si.SecurityUtils;
import com.koreait.si.mng.MngMapper;
import com.koreait.si.mng.model.SeatDMI;
import com.koreait.si.mng.model.SeatPARAM;
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
	public int loginStd(StdPARAM std_param) {
		if(std_param.getStd_id() != null) {
			if(std_param.getStd_id().equals("")) { return Const.NO_ID; }
			
			StdDMI dbStd = userMapper.selStudent(std_param);		
			if(dbStd == null) { return Const.NO_ID; }
			
			String cryptPw = SecurityUtils.getEncrypt(std_param.getStd_pw(), dbStd.getSalt());
			if(!cryptPw.equals(dbStd.getStd_pw())) { return Const.NO_PW; }

			std_param.setI_std(dbStd.getI_std());
			std_param.setStd_id(dbStd.getStd_id());
			std_param.setStd_nm(dbStd.getStd_nm());		
			std_param.setStd_no(dbStd.getStd_no());	
			
			std_param.setMajor_nm(dbStd.getMajor_nm());
			std_param.setCourse_nm(dbStd.getCourse_nm());
			
			std_param.setStd_email(dbStd.getStd_email());
			std_param.setStd_phone(dbStd.getStd_phone());
			std_param.setStd_zip(dbStd.getStd_zip());
			std_param.setStd_addr(dbStd.getStd_addr());			
			std_param.setStd_pw(null);
			
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
			prof_param.setProf_no(dbProf.getProf_no());
			prof_param.setProf_id(dbProf.getProf_id());
			prof_param.setProf_nm(dbProf.getProf_nm());
			prof_param.setMajor_nm(dbProf.getMajor_nm());
			prof_param.setCourse_nm(dbProf.getCourse_nm());			
			prof_param.setProf_email(dbProf.getProf_email());
			prof_param.setProf_phone(dbProf.getProf_phone());
			prof_param.setProf_zip(dbProf.getProf_zip());
			prof_param.setProf_addr(dbProf.getProf_addr());
			
			prof_param.setProf_pw(null);
			
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

	public String findIdStd(StdPARAM std_param) {
		StdDMI dbStd = userMapper.selStdId(std_param);
		if(dbStd == null) { return null; } // 일치하는 정보 없음
		std_param.setStd_id(dbStd.getStd_id());		
		return std_param.getStd_id();
	}

	public String findIdProf(ProfPARAM prof_param) {
		ProfDMI dbProf = userMapper.selProfId(prof_param);
		if(dbProf == null) { return null; }
		prof_param.setProf_id(dbProf.getProf_id());
		return prof_param.getProf_id();
	}

	public int checkStdPw(StdPARAM std_param) {		
		StdDMI dbStd = userMapper.findStdPw(std_param);
		if(dbStd == null) { return Const.NO_ID; }		
		return Const.SUCCESS;
	}

	public int changeStdPw(StdPARAM std_param) {
		String pw = std_param.getStd_pw();
		String salt = SecurityUtils.generateSalt();
		String cryptPw = SecurityUtils.getEncrypt(pw, salt);		
		
		std_param.setSalt(salt);
		std_param.setStd_pw(cryptPw);

		userMapper.updateStdPw(std_param);
		return Const.SUCCESS;
		
	}
	public int checkProfPw(ProfPARAM prof_param) {
		ProfDMI dbStd = userMapper.findProfPw(prof_param);
		if(dbStd == null) { return Const.NO_ID; }		
		return Const.SUCCESS;
	}
	
	public int changeProfPw(ProfPARAM prof_param) {
		String pw = prof_param.getProf_pw();
		String salt = SecurityUtils.generateSalt();
		String cryptPw = SecurityUtils.getEncrypt(pw, salt);
				
		prof_param.setSalt(salt);
		prof_param.setProf_pw(cryptPw);
		
		userMapper.updateProfPw(prof_param);
		return Const.SUCCESS;
	}

	public int checkCurrentStdPw(StdPARAM std_param) {
		StdDMI dbStd = userMapper.selStudent(std_param);	
		String cryptPw = SecurityUtils.getEncrypt(std_param.getStd_pw(), dbStd.getSalt());
		
		if(!cryptPw.equals(dbStd.getStd_pw())) { return Const.NO_PW; } // 비밀번호 틀림	
		
		// 비밀번호 바꿀때 아이디, 이름, 이메일 필요하게 만들어 놨음
		std_param.setStd_id(dbStd.getStd_id());
		std_param.setStd_nm(dbStd.getStd_nm());
		std_param.setStd_email(dbStd.getStd_email());
		
		return Const.SUCCESS;		
	}

	public int checkCurrentProfPw(ProfPARAM prof_param) {
		ProfDMI dbStd = userMapper.selProfessor(prof_param);	
		String cryptPw = SecurityUtils.getEncrypt(prof_param.getProf_pw(), dbStd.getSalt());
		
		if(!cryptPw.equals(dbStd.getProf_pw())) { return Const.NO_PW; } // 비밀번호 틀림	
		
		// 비밀번호 바꿀때 아이디, 이름, 이메일 필요하게 만들어 놨음
		prof_param.setProf_id(dbStd.getProf_id());
		prof_param.setStd_nm(dbStd.getStd_nm());
		prof_param.setProf_email(dbStd.getProf_email());
		
		return Const.SUCCESS;	
	}	
}
