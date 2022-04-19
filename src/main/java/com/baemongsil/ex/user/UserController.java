package com.baemongsil.ex.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {

	
	
	@GetMapping("/loginpage")
	public String login() {
		return "user/loginpage";
	}
	
	@GetMapping("/signuppage")
	public String signup() {
		return "user/signup";
	}
	
}
