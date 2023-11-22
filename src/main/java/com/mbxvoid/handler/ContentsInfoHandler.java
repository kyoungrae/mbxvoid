/**
 */
package com.mbxvoid.handler;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.mbxvoid.bean.ContentsInfoDto;
import com.mbxvoid.bean.MenuInfoDto;
import com.mbxvoid.util.AbstractDAO;


@Repository
public class ContentsInfoHandler extends AbstractDAO{

	public ContentsInfoHandler() {
		
	}

	public List selectList(ContentsInfoDto param) throws Exception {
		return super.selectList("SELECT_COM_MBX_CONTENTS", param);
	}

}