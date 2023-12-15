package com.mbxvoid.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mbxvoid.bean.UserInfoDto;
import com.mbxvoid.service.LoginCheckService;
import com.mbxvoid.service.SessionCheckService;


@Controller
@RequestMapping("/login.do")
public class LoginCheckController {
    private static final Logger logger = LogManager.getLogger(LoginCheckController.class);
    
    @Resource
    LoginCheckService logincheckservice;
    
	@Resource
	SessionCheckService sessionCheckservice;
    
    @RequestMapping(params = "command=loginCheck")
    @ResponseBody
    public boolean loginCheck(@RequestBody UserInfoDto bean, HttpServletRequest req , HttpServletResponse res) {
    	boolean flag = false;
	    try {
	    	flag = logincheckservice.loginCheck(bean);
	   	 
	    	sessionCheckservice.setSession(req.getSession(), bean);
	    	
		} catch (Exception e) {
			e.printStackTrace();
		}
	    return flag;
    }
    
    @RequestMapping(params = "command=logout")
    @ResponseBody
    public Map<String, String> logout(HttpServletRequest req) {
        Map<String, String> response = new HashMap<>();
        try {
            req.getSession().invalidate();
            response.put("viewName", "index.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            response.put("error", "true");
        }
        return response;
    }
    
}