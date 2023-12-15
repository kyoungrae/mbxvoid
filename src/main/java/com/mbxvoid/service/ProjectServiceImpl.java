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
    public List<ProjectDto> retriveProject() throws Exception {
        List<ProjectDto> list = null;
        try {
            list = handler.selectAll();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

	@Override
	public int createProject(ProjectDto bean) throws Exception {
		int rtn = -1;
		try {
			System.out.println(bean.getPrj_nm());
			handler.insert(bean);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rtn;
	}

	@Override
	public int deleteProject(ProjectDto bean) throws Exception {
		int rtn = -1;
		try {
			handler.delete(bean);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rtn;
	}

	@Override
	public int updateProject(ProjectDto bean) throws Exception {
		int rtn = -1;
		try {
			handler.update(bean);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rtn;
	}
    
}
