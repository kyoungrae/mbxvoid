package com.mbxvoid.service;

import javax.servlet.http.HttpSession;

import com.mbxvoid.bean.UserInfoDto;

public interface SessionCheckService{
	 public void setSession(HttpSession session ,UserInfoDto bean) throws Exception;
	 public void setSession(HttpSession session ,String user_id) throws Exception;
	 public HttpSession getSession() throws Exception;
}
