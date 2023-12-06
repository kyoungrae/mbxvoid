package com.mbxvoid.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mbxvoid.service.SessionCheckService;

@Controller
@RequestMapping("/page.do")
public class PageMoveController {
	@Resource
	SessionCheckService sessionCheckservice;
	
	   @RequestMapping(params = "command=goMainPage")
	    public ModelAndView goMainPage() {
	    	ModelAndView modelAndView = new ModelAndView();
//	        modelAndView.setViewName("layer.contentpage.main");
	        modelAndView.setViewName("layer.contentpage.portfolio");
	        return modelAndView;
	    }
	   @RequestMapping(params = "command=movePage")
	   public ModelAndView movePage(HttpServletRequest request) {
		   	ModelAndView mv = new ModelAndView();
		   	HttpSession session = request.getSession();
		   	session.setMaxInactiveInterval(6);
			System.out.println(session.isNew());
			System.out.println(session.getAttribute("user_ID"));
	    	String prefix = "layer.contentpage.";
	    	String path  = request.getParameter("menu_nm");
	    	String fullPath = prefix + path;
		  
	    	mv.setViewName(fullPath);
	    	return mv;
	   }
}
