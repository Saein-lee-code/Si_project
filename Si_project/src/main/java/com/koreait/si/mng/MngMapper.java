package com.koreait.si.mng;

import com.koreait.si.mng.model.SeatDMI;
import com.koreait.si.mng.model.SeatPARAM;

public interface MngMapper {
	int insSeat(SeatPARAM param);
	SeatDMI selSeat(SeatPARAM param);	
}
