package com.mbxvoid.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mbxvoid.bean.ContentsInfoDto;
import com.mbxvoid.bean.MenuInfoDto;
import com.mbxvoid.service.ContentInfoService;
import com.mbxvoid.service.MenuInfoService;

@Controller
@RequestMapping("/contents.do")
public class ContentsInfoController {
	@Resource
	ContentInfoService service;
	
	@RequestMapping(params = "command=searchContentsInfo")
	@ResponseBody
	public List searchMenuInfo(@RequestBody ContentsInfoDto bean) {
		List list = null;
		try {
			list = service.searchContentInfo(bean);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
