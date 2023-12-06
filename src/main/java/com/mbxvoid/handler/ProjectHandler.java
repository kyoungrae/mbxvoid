/**
 */
package com.mbxvoid.handler;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.mbxvoid.bean.ProjectDto;
import com.mbxvoid.bean.UserInfoDto;
import com.mbxvoid.util.AbstractDAO;


@Repository
public class ProjectHandler extends AbstractDAO{

	public ProjectHandler() {
		
	}

	public List selectAll() throws Exception {
		return super.selectList("SELECT_PRJ_M");
	}

}