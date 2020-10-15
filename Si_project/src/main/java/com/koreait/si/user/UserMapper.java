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

		
}
