package com.koreait.si.user.model;

public class ProfPARAM extends ProfVO {
	private String msg;
	private int i_std;
	private String std_nm;
	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String getStd_nm() {
		return std_nm;
	}

	public void setStd_nm(String std_nm) {
		this.std_nm = null;
	}

	public int getI_std() {
		return i_std;
	}

	public void setI_std(int i_std) {
		this.i_std = 0;
	}
}
