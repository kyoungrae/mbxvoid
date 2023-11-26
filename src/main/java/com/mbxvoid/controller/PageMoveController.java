package com.mbxvoid.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/page.do")
public class PageMoveController {
	   @RequestMapping(params = "command=goMainPage")
	    public ModelAndView goMainPage() {
	    	ModelAndView modelAndView = new ModelAndView();
//	        modelAndView.setViewName("layer.contentpage.main");
	        modelAndView.setViewName("layer.contentpage.portfolio");
	        return modelAndView;
	    }
	   
	   @RequestMapping(params = "command=movePage")
	   @ResponseBody
	   public ModelAndView movePage(HttpServletRequest request) {
		   System.out.println(request.getParameter("menu_nm"));
		   ModelAndView mv = new ModelAndView();
		   String prefix = "layer.contentpage.";
		   String path  = request.getParameter("menu_nm");
		   String fullPath = prefix + path;
		  
		   mv.setViewName(fullPath);
		   return mv;
	   }
}
