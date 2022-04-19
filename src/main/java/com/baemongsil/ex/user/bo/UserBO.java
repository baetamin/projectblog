package com.baemongsil.ex.user.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baemongsil.ex.common.EncryptUtils;
import com.baemongsil.ex.user.dao.UserDAO;




@Service
public class UserBO {
	
	
	@Autowired UserDAO userDAO;

	public int addUser(
			String loginId,
			String password,
			String name,
			String email) {
		
		String encryptPassword = EncryptUtils.md5(password);
		
	return userDAO.insertUser(loginId, encryptPassword, name, email);
		
	}
	
	
}
