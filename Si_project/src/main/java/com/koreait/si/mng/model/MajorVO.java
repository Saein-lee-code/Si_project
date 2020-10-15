package com.koreait.si.mng.model;

public class MajorVO {
	private int major_no;
	private int course_no;
	private String major_nm;
	private String course_nm;
	
	public int getMajor_no() {
		return major_no;
	}
	public void setMajor_no(int major_no) {
		this.major_no = major_no;
	}
	public String getMajor_nm() {
		return major_nm;
	}
	public void setMajor_nm(String major_nm) {
		this.major_nm = major_nm;
	}
	public String getCourse_nm() {
		return course_nm;
	}
	public void setCourse_nm(String course_nm) {
		this.course_nm = course_nm;
	}
	public int getCourse_no() {
		return course_no;
	}
	public void setCourse_no(int course_no) {
		this.course_no = course_no;
	}
	
}
