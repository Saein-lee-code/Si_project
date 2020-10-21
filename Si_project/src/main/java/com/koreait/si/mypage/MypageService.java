package com.koreait.si.mypage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.koreait.si.Const;
import com.koreait.si.user.model.ProfPARAM;
import com.koreait.si.user.model.StdPARAM;

@Service
public class MypageService {
	@Autowired
	private MypageMapper mypageMapper;

	public int updateStd(StdPARAM std_param) {
		mypageMapper.updateStd(std_param);
		return Const.SUCCESS;		
	}

	public int updateProf(ProfPARAM prof_param) {
		mypageMapper.updateProf(prof_param);
		return Const.SUCCESS;
	}
}
