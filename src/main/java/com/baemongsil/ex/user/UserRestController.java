package com.baemongsil.ex.user;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.baemongsil.ex.user.bo.UserBO;



@RestController
@RequestMapping("/user")
public class UserRestController {

	@Autowired
	private UserBO userBO;
	
	
	@PostMapping("/sign_up")
	public Map<String, String> signUp(
			@RequestParam("loginId") String loginId,
			@RequestParam("password") String password,
			@RequestParam("nickname") String nickname,
			@RequestParam("email") String email){
		
		int count = userBO.addUser(loginId, password, nickname, email);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		}else {
			result.put("result", "fail");
		}
		return result;
	
	}
	
	
	@GetMapping("/duplicate_id")
	public Map<String, Boolean> duplicate_id(
				@RequestParam("loginId") String loginId) {
		
			boolean isDuplicate = userBO.isDuplicate(loginId);
			Map<String, Boolean> result = new HashMap<>();
			
			if(isDuplicate) {
				result.put("is_duplicate" , true);
			}else {
				result.put("is_duplicate", false);
			}
			
			return result;
			
	}
			
			
			
	
	
	
	
	
}
