package com.mbxvoid.service;

import java.util.List;

import com.mbxvoid.bean.ProjectDto;

public interface ProjectService {
    public List<ProjectDto> searchProject() throws Exception;
}
