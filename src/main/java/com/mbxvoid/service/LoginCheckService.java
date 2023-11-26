package com.mbxvoid.service;

import javax.servlet.http.HttpServletRequest;

import com.mbxvoid.bean.UserInfoDto;

public interface LoginCheckService{
	 public boolean loginCheck(UserInfoDto bean) throws Exception;  
	 public void sessionSetting(HttpServletRequest req ,UserInfoDto bean) throws Exception;
}
