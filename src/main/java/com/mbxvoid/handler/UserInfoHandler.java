/**
 */
package com.mbxvoid.handler;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.mbxvoid.bean.UserInfoDto;
import com.mbxvoid.util.AbstractDAO;


@Repository
public class UserInfoHandler extends AbstractDAO{

	public UserInfoHandler() {
		
	}

	public List select(UserInfoDto insertparm) throws Exception {
		return super.selectList("SELECT_COM_USER_M", insertparm);
	}

}