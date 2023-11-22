package com.mbxvoid.controller;

import javax.annotation.Resource;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mbxvoid.bean.UserInfoDto;
import com.mbxvoid.service.LoginCheckService;

@Controller
@RequestMapping("/login.do")
public class LoginCheckController {
    private static final Logger logger = LogManager.getLogger(LoginCheckController.class);
    
    @Resource
    LoginCheckService logincheckservice;
    
    @RequestMapping(params = "command=loginCheck")
    @ResponseBody
    public boolean loginCheck(@RequestBody UserInfoDto bean) {
    	boolean flag = false;
	    try {
	    	flag = logincheckservice.loginCheck(bean);
		} catch (Exception e) {
			e.printStackTrace();
		}
	    return flag;
    }
    
}