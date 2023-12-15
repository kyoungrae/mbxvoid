package com.mbxvoid.service;

import java.util.List;

import com.mbxvoid.bean.ProjectDto;

public interface ProjectService {
    public List<ProjectDto> retriveProject() throws Exception;
    public int createProject(ProjectDto bean) throws Exception;
    public int deleteProject(ProjectDto bean) throws Exception;
    public int updateProject(ProjectDto bean) throws Exception;
}
