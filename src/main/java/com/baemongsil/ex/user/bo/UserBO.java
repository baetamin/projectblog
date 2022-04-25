package com.baemongsil.ex.user.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baemongsil.ex.common.EncryptUtils;
import com.baemongsil.ex.user.dao.UserDAO;
import com.baemongsil.ex.user.model.User;




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
	
	
	public boolean isDuplicate(String loginId) {
		
		 int count = userDAO.selectCountLoginId(loginId);
		 
		 if(count == 0) {
			 return false;
		 }else	{
			 return true;
		 }
	}
	
	public User signIn(String loginId, String password) {
		
		String encryptPassword = EncryptUtils.md5(password);
		
		return userDAO.selectUser(loginId, encryptPassword);
		
	}
	
	
}
