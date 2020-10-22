package com.koreait.si.user;

import com.koreait.si.user.model.ProfDMI;
import com.koreait.si.user.model.ProfPARAM;
import com.koreait.si.user.model.ProfVO;
import com.koreait.si.user.model.StdDMI;
import com.koreait.si.user.model.StdPARAM;
import com.koreait.si.user.model.StdVO;

public interface UserMapper {
	int insStudent(StdVO p);
	int insProfessor(ProfVO p);
	
	StdDMI selStudent(StdPARAM p);
	ProfDMI selProfessor(ProfPARAM p);
	StdDMI selStdId(StdPARAM std_param);
	ProfDMI selProfId(ProfPARAM prof_param);
	// 비밀번호 찾기 위한 select 문 (id, name, email)
	StdDMI findStdPw(StdPARAM std_param); 
	ProfDMI findProfPw(ProfPARAM prof_param);
	// 가입할때 번호 확인용
	StdDMI selStudentNo(StdPARAM std_param);
	ProfDMI selProfNo(ProfPARAM prof_param);


	
	int updateStdPw(StdPARAM std_param);
	int updateProfPw(ProfPARAM prof_param);
}
	