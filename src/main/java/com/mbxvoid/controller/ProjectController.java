package com.mbxvoid.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

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
			list = projectService.retriveProject();
		} catch (Exception e) {
			
		}
    	return list;
      
    }
    @RequestMapping(params = "command=saveProject")
    public void saveProject(@RequestBody ProjectDto bean) throws Exception{
    	System.out.println(bean.getPrj_nm());
    	projectService.createProject(bean);
    }
    @RequestMapping(params = "command=modifyProject")
    public void modifyProject(@RequestBody ProjectDto bean) throws Exception{
    	projectService.updateProject(bean);
    }
    @RequestMapping(params = "command=deleteProject")
    public void deleteProject(@RequestBody ProjectDto bean) throws Exception{
    	projectService.deleteProject(bean);
    }

}
