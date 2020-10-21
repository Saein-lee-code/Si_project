package com.koreait.si.mng;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.koreait.si.Const;
import com.koreait.si.mng.model.SeatDMI;
import com.koreait.si.mng.model.SeatPARAM;

@Service
public class MngService {
	@Autowired
	private MngMapper mngMapper;
	
	// 좌석예약
	public int insSeat(SeatPARAM param) {
		System.out.println("번호확인 --" + param.getStd_no());
		System.out.println("자리확인--" + param.getSeat_info());
		return mngMapper.insSeat(param);
	}
	// 예약확인
	public int checkSeat(SeatPARAM param) {
		if(param.getStd_no() != 0) {
			SeatDMI dbSeat = mngMapper.selSeat(param);
//			dbSeat.setStd_no(param.getStd_no());
			
			param.setStd_nm(dbSeat.getStd_nm());
			param.setI_seat(dbSeat.getI_seat());
			param.setStd_no(dbSeat.getStd_no());
			param.setSeat_info(dbSeat.getSeat_info());		
			param.setS_dt(dbSeat.getS_dt());
			param.setO_dt(dbSeat.getO_dt());
			return Const.SUCCESS;
		}
		return 0;
	}
}
