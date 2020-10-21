package com.koreait.si.user.model;

public class ProfVO {
   private int i_prof;
   private int prof_no;
   private String prof_id;
   private String prof_pw;
   private String prof_nm;
   private String salt;
   private String prof_email;
   private String prof_zip;   
   private int major_no;
   private int course_no;   
   private String major_nm;
	private String course_nm;
   private String prof_birth;
   private String prof_phone;
   private String prof_addr;
   
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
	  
	public String getProf_zip() {
		return prof_zip;
	}
	public void setProf_zip(String prof_zip) {
		this.prof_zip = prof_zip;
	}
	public int getMajor_no() {
		return major_no;
	}
	public void setMajor_no(int major_no) {
		this.major_no = major_no;
	}
	public int getCourse_no() {
		return course_no;
	}
	public void setCourse_no(int course_no) {
		this.course_no = course_no;
	}  
   public int getI_prof() {
	return i_prof;
   }
	public void setI_prof(int i_prof) {
		this.i_prof = i_prof;
	}
	public int getProf_no() {
		return prof_no;
	}
	public void setProf_no(int prof_no) {
		this.prof_no = prof_no;
	}
	public String getProf_id() {
		return prof_id;
	}
	public void setProf_id(String prof_id) {
		this.prof_id = prof_id;
	}
	public String getProf_pw() {
		return prof_pw;
	}
	public void setProf_pw(String prof_pw) {
		this.prof_pw = prof_pw;
	}
	public String getProf_nm() {
		return prof_nm;
	}
	public void setProf_nm(String prof_nm) {
		this.prof_nm = prof_nm;
	}
	public String getSalt() {
		return salt;
	}
	public void setSalt(String salt) {
		this.salt = salt;
	}	
	public String getProf_birth() {
		return prof_birth;
	}
	public void setProf_birth(String prof_birth) {
		this.prof_birth = prof_birth;
	}
	public String getProf_phone() {
		return prof_phone;
	}
	public void setProf_phone(String prof_phone) {
		this.prof_phone = prof_phone;
	}
	public String getProf_addr() {
		return prof_addr;
	}
	public void setProf_addr(String prof_addr) {
		this.prof_addr = prof_addr;
	}
	public String getProf_email() {
		return prof_email;
	}
	public void setProf_email(String prof_email) {
		this.prof_email = prof_email;
	}
}
