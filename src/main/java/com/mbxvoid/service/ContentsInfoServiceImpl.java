package com.mbxvoid.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mbxvoid.bean.ContentsInfoDto;
import com.mbxvoid.handler.ContentsInfoHandler;

@Service
public class ContentsInfoServiceImpl implements ContentInfoService{

	@Resource
	ContentsInfoHandler contentshandler;
	
	@Override
	public List searchContentInfo(ContentsInfoDto bean) throws Exception {
		List list = null;
		try {
			list = contentshandler.selectList(bean); 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	
}
