package com.mbxvoid.service;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.mbxvoid.bean.UserInfoDto;

@Service
public class SessionCheckServiceImpl implements SessionCheckService{
	
	private HttpSession session;
	

	public HttpSession getSession() {
		return this.session;
	}


	public void setSession(HttpSession session , String user_id) {
		this.session = session;
		
		 System.out.println("Session ID: " + session.getId());
		 System.out.println("User ID: " + user_id);
		    
		this.session.setAttribute("sessionID", session.getId());
		this.session.setAttribute("user_ID", user_id);
	}


	@Override
	public void setSession(HttpSession session, UserInfoDto bean) throws Exception {
		this.session = session;
		
		 System.out.println("Session ID: " + session.getId());
		 System.out.println("User ID: " + bean.getUser_id());
		    
		 this.session.setAttribute("sessionID", session.getId());
		 this.session.setAttribute("user_ID", bean.getUser_id());
		 System.out.println("Session ID: " + this.session.getAttribute("user_ID"));
		
	}
}
