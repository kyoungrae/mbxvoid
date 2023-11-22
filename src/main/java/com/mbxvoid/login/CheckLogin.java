package com.mbxvoid.login;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.mbxvoid.bean.UserInfoDto;
import com.mbxvoid.service.UserInfoServiceImpl;

public class CheckLogin {
	@Autowired
	UserInfoServiceImpl userInfo;
	
	public boolean CheckLogin(UserInfoDto bean) {
		System.out.println("CheckLogin");
		List list = null;
		try {
			list = userInfo.seachUserInfo(bean);
			System.out.println(list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
}
