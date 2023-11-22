package com.mbxvoid.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.mbxvoid.bean.UserInfoDto;
import com.mbxvoid.service.UserInfoServiceImpl;

@Controller
@RequestMapping("/user.do")
public class UserInfoController {
    private static final Logger logger = LogManager.getLogger(UserInfoController.class);
    
    @Autowired
    UserInfoServiceImpl userinfoService;
    
    @RequestMapping(params = "command=serachUserInfo")
    @ResponseBody
    public Map<String, Object> serachUserInfo(UserInfoDto bean) {
	    Map<String, Object> response = new HashMap<>();
	    List list =  null;
	    try {
			list = userinfoService.seachUserInfo(bean);
			response.put("0", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
	    return response;
    }
 
}