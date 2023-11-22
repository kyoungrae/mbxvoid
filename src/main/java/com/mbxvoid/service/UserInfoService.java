package com.mbxvoid.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.mbxvoid.bean.UserInfoDto;

public interface UserInfoService{
	 public List<UserInfoDto> seachUserInfo(UserInfoDto bean) throws Exception;  
}
