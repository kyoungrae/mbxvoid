package com.mbxvoid.bean;

public class UserInfoDto {
	private String user_id;
	private String user_nm;
	private String user_pw;
	private String user_en_nm;
	
	private String sys_cr_dt;
	private String sys_ud_dt;
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_nm() {
		return user_nm;
	}
	public void setUser_nm(String user_nm) {
		this.user_nm = user_nm;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	
	public String getUser_en_nm() {
		return user_en_nm;
	}
	public void setUser_en_nm(String user_en_nm) {
		this.user_en_nm = user_en_nm;
	}
	public String getSys_cr_dt() {
		return sys_cr_dt;
	}
	public void setSys_cr_dt(String sys_cr_dt) {
		this.sys_cr_dt = sys_cr_dt;
	}
	public String getSys_ud_dt() {
		return sys_ud_dt;
	}
	public void setSys_ud_dt(String sys_ud_dt) {
		this.sys_ud_dt = sys_ud_dt;
	}
	
	
	
}