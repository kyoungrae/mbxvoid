package com.mbxvoid.service;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.mbxvoid.bean.UserInfoDto;
import com.mbxvoid.handler.UserInfoHandler;

@Service
public class LoginCheckServiceImpl implements LoginCheckService{
	
	@Resource
	UserInfoHandler userinfohandler;
	
	@Override
	public boolean loginCheck(UserInfoDto bean) throws Exception {
		boolean flag = false;
		List<UserInfoDto> list = null;
		String rq_user_id = bean.getUser_id();
		String rp_user_id = "";
		try {
			list = userinfohandler.select(bean);
				if(!list.isEmpty()) {
					rp_user_id = list.get(0).getUser_id();
				if(rq_user_id.equals(rp_user_id)) {
					flag = true;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
	
}
