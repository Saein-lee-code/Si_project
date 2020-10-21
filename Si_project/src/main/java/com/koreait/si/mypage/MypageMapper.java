package com.koreait.si.mypage;

import com.koreait.si.user.model.ProfPARAM;
import com.koreait.si.user.model.StdPARAM;

public interface MypageMapper {
	int updateStd(StdPARAM std_param);
	int updateProf(ProfPARAM prof_param);
}
