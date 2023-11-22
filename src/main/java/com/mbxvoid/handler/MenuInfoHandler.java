/**
 */
package com.mbxvoid.handler;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.mbxvoid.bean.MenuInfoDto;
import com.mbxvoid.util.AbstractDAO;


@Repository
public class MenuInfoHandler extends AbstractDAO{

	public MenuInfoHandler() {
		
	}

	public List selectList(MenuInfoDto param) throws Exception {
		return super.selectList("SELECT_COM_MBX_MENU", param);
	}

}