package com.mbxvoid.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.mbxvoid.bean.MenuInfoDto;
import com.mbxvoid.bean.ProjectDto;
import com.mbxvoid.service.ProjectService;

@RestController
@RequestMapping("project.do")
public class ProjectController {
    
    @Autowired
    private final ProjectService projectService;

    public ProjectController(ProjectService projectService){
        this.projectService = projectService;
    }
    
    @RequestMapping(params = "command=searchProject")
    @ResponseBody
    public List<ProjectDto> searchProject() throws Exception{
    	List<ProjectDto> list = null;
    	try {
			list = projectService.searchProject();
		} catch (Exception e) {
			
		}
    	return list;
      
    }

}
