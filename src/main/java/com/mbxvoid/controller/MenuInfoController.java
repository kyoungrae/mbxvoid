package com.mbxvoid.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mbxvoid.bean.MenuInfoDto;
import com.mbxvoid.service.MenuInfoService;

@Controller
@RequestMapping("/menu.do")
public class MenuInfoController {
	@Resource
	MenuInfoService menuservice;
	
	@RequestMapping(params = "command=searchMenuInfo")
	@ResponseBody
	public List searchMenuInfo(@RequestBody MenuInfoDto bean) {
		List list = null;
		try {
			list = menuservice.searchMenuInfo(bean);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
