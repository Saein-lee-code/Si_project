package com.koreait.si.user.model;

public class StdVO {
   private int i_std;
   private int std_no;
   private String std_id;
   private String std_pw;
   private String std_nm;
   private String salt;
   private int major_no;
   private int course_no;
   private String major_nm;
   private String course_nm;
   private String std_birth;
   private String std_email;   
   private String std_phone;   
   private String std_addr;
   private String std_zip;
   
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
   public String getStd_zip() {
	return std_zip;
	}
	public void setStd_zip(String std_zip) {
		this.std_zip = std_zip;
	}
	public int getI_std() {
			return i_std;
	}
	public void setI_std(int i_std) {
		this.i_std = i_std;
	}
	public int getStd_no() {
		return std_no;
	}
	public void setStd_no(int std_no) {
		this.std_no = std_no;
	}
	public String getStd_id() {
		return std_id;
	}
	public void setStd_id(String std_id) {
		this.std_id = std_id;
	}
	public String getStd_pw() {
		return std_pw;
	}
	public void setStd_pw(String std_pw) {
		this.std_pw = std_pw;
	}
	public String getStd_nm() {
		return std_nm;
	}
	public void setStd_nm(String std_nm) {
		this.std_nm = std_nm;
	}
	public String getSalt() {
		return salt;
	}
	public void setSalt(String salt) {
		this.salt = salt;
	}
	public String getStd_birth() {
		return std_birth;
	}
	public void setStd_birth(String std_birth) {
		this.std_birth = std_birth;
	}
	public String getStd_email() {
		return std_email;
	}
	public void setStd_email(String std_email) {
		this.std_email = std_email;
	}
	

	public String getStd_addr() {
		return std_addr;
	}
	public void setStd_addr(String std_addr) {
		this.std_addr = std_addr;
	}
	
	public String getStd_phone() {
		return std_phone;
	}
	public void setStd_phone(String std_phone) {
		this.std_phone = std_phone;
	}
	public int getMajor_no() {
		return major_no;
	}
	public void setMajor_no(int major_no) {
		this.major_no = major_no;
	}


}
