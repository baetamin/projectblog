package com.baemongsil.ex.user.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.baemongsil.ex.user.model.User;

@Repository
public interface UserDAO {

	public int insertUser(
			@Param("loginId") String loginId,
			@Param("password") String password,
			@Param("nickname") String nickname,
			@Param("email") String email			
			);
	
	public int selectCountLoginId(@Param("loginId") String loginId);
	
	
	public User selectUser(
			@Param("loginId") String loginId,
			@Param("password") String password);
	
}
