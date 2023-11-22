package com.mbxvoid.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mbxvoid.bean.UserInfoDto;
import com.mbxvoid.handler.UserInfoHandler;

@Service
public class UserInfoServiceImpl implements UserInfoService{
	
	@Autowired
	UserInfoHandler handler;
	
	@Override
	public List<UserInfoDto> seachUserInfo(UserInfoDto bean) throws Exception {
		List list = null;
		try {
			list = handler.select(bean);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

}
