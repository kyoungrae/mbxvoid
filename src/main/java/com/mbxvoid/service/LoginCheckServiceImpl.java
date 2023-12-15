package com.mbxvoid.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.DelegatingPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.crypto.password.Pbkdf2PasswordEncoder;
import org.springframework.security.crypto.scrypt.SCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.mbxvoid.bean.UserInfoDto;
import com.mbxvoid.handler.UserInfoHandler;

@Service
public class LoginCheckServiceImpl implements LoginCheckService{
	
	@Resource
	UserInfoHandler userinfohandler;
	
	@Override
	public boolean loginCheck(UserInfoDto bean) throws Exception {
		boolean flag = false;
		List<UserInfoDto> list = null;
		String rq_user_id = bean.getUser_id();
		String rp_user_id = "";
		String rq_user_pw = bean.getUser_pw();
		String rp_user_pw = "";
		try {
			list = userinfohandler.select(bean);
				if(!list.isEmpty()) {
					rp_user_id = list.get(0).getUser_id();
					rp_user_pw = list.get(0).getUser_pw();
				if(rq_user_id.equals(rp_user_id) && rq_user_pw.equals(rp_user_pw)) {
					flag = true;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
	public static PasswordEncoder createDelegatingPasswordEncoder() {
		String encodingId = "bcrypt";
		Map<String, PasswordEncoder> encoders = new HashMap<>();
		encoders.put(encodingId, new BCryptPasswordEncoder());
		encoders.put("ldap", new org.springframework.security.crypto.password.LdapShaPasswordEncoder());
		encoders.put("MD4", new org.springframework.security.crypto.password.Md4PasswordEncoder());
		encoders.put("MD5", new org.springframework.security.crypto.password.MessageDigestPasswordEncoder("MD5"));
		encoders.put("pbkdf2", new Pbkdf2PasswordEncoder());
		encoders.put("scrypt", new SCryptPasswordEncoder());
		encoders.put("SHA-1",  new org.springframework.security.crypto.password.MessageDigestPasswordEncoder("SHA-1"));
		encoders.put("SHA-256",new org.springframework.security.crypto.password.MessageDigestPasswordEncoder("SHA-256"));
		encoders.put("sha256", new org.springframework.security.crypto.password.StandardPasswordEncoder());
		return new DelegatingPasswordEncoder(encodingId, encoders);
	}
}
