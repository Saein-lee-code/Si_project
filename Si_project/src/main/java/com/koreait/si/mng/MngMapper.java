package com.koreait.si.mng;

import java.util.List;

import com.koreait.si.mng.model.SeatDMI;
import com.koreait.si.mng.model.SeatPARAM;

public interface MngMapper {
	int insSeat(SeatPARAM param);
	
	List<SeatDMI> selAllSeat(SeatPARAM seat_param);
	SeatDMI selSeat(SeatPARAM param);
	
	// 이름은 delete인데 update임
	int delSeat(SeatPARAM param);
		
}
