package com.mbxvoid.bean;

public class MenuInfoDto {
	String menu_id;
	String menu_nm;
	int menu_lv;
	String menu_up_lv_id;
	String menu_file_nm;
	String sys_cr_dt;
	String sys_ud_dt;
	
	
	public String getMenu_id() {
		return menu_id;
	}
	public void setMenu_id(String menu_id) {
		this.menu_id = menu_id;
	}
	public String getMenu_nm() {
		return menu_nm;
	}
	public void setMenu_nm(String menu_nm) {
		this.menu_nm = menu_nm;
	}
	public int getMenu_lv() {
		return menu_lv;
	}
	public void setMenu_lv(int menu_lv) {
		this.menu_lv = menu_lv;
	}
	public String getMenu_up_lv_id() {
		return menu_up_lv_id;
	}
	public void setMenu_up_lv_id(String menu_up_lv_id) {
		this.menu_up_lv_id = menu_up_lv_id;
	}
	public String getSys_cr_dt() {
		return sys_cr_dt;
	}
	
	public String getMenu_file_nm() {
		return menu_file_nm;
	}
	public void setMenu_file_nm(String menu_file_nm) {
		this.menu_file_nm = menu_file_nm;
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
