package com.mbxvoid.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mbxvoid.bean.MenuInfoDto;
import com.mbxvoid.handler.MenuInfoHandler;

@Service
public class MenuInfoServiceImpl implements MenuInfoService{

	@Resource
	MenuInfoHandler menuhandler;
	
	@Override
	public List searchMenuInfo(MenuInfoDto bean) throws Exception {
		List list = null;
		try {
			list = menuhandler.selectList(bean); 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	
}
