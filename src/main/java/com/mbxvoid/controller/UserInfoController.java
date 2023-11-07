package com.mbxvoid.controller;

import java.util.HashMap;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/mainPage.do")
public class UserInfoController {
    private static final Logger logger = LogManager.getLogger(UserInfoController.class);

    @RequestMapping(params = "command=serachUserInfo")
    @ResponseBody
    public Map<String, Object> serachUserInfo() {
	    Map<String, Object> response = new HashMap<>();
	    response.put("message", "This is a test response");
	    
	    return response;
    }
    @RequestMapping(params = "command=goMainPage")
    public String goMainPage() {
    	
    	 return "main"; // 리다이렉트할 URL
    }
    
}