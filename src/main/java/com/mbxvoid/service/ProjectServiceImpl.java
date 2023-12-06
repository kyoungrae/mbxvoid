package com.mbxvoid.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mbxvoid.bean.ProjectDto;
import com.mbxvoid.handler.ProjectHandler;

@Service
public class ProjectServiceImpl implements ProjectService{

	@Resource
	ProjectHandler handler;
	
    @Override
    public List<ProjectDto> searchProject() throws Exception {
        List<ProjectDto> list = null;
        try {
            list = handler.selectAll();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    
}
