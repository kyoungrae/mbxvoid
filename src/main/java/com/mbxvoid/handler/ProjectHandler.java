/**
 */
package com.mbxvoid.handler;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Repository;

import com.mbxvoid.bean.ProjectDto;
import com.mbxvoid.controller.ProjectController;
import com.mbxvoid.util.AbstractDAO;


@Repository
public class ProjectHandler extends AbstractDAO{

	public ProjectHandler() {
		
	}
	private static final Logger logger = LogManager.getLogger(ProjectController.class);
	
	
	public List selectAll() throws Exception {
		return super.selectList("SELECT_PRJ_M");
	}
	
	public int insert(ProjectDto bean) throws Exception{
		int rtn = -1;
		try {
			rtn = (int) super.insert("INSERT_PRJ_M", bean);
		} catch (Exception e) {
			e.printStackTrace();
		}
		logger.debug("rtn : "+ rtn );
		return rtn; 
	}
	
	public int update(ProjectDto bean) throws Exception{
		int rtn = -1;
		try {
			rtn = (int) super.update("UPDATE_PRJ_M", bean);
		} catch (Exception e) {
			e.printStackTrace();
		}
		logger.debug("rtn : "+ rtn );
		return rtn;
	}
	public int delete(ProjectDto bean) throws Exception{
		int rtn = -1;
		try {
			rtn = (int) super.delete("DELETE_PRJ_M", bean);
		} catch (Exception e) {
			e.printStackTrace();
		}
		logger.debug("rtn : "+ rtn );
		return rtn;
	}

}