package com.baemongsil.ex.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/main")
public class MainpageController {

	
	@GetMapping("/mainpage")
	public String main() {
		return "main/mainpage";
	}
	
	@GetMapping("/loginpage")
	public String login() {
		return "main/loginpage";
	}
	
	@GetMapping("/signuppage")
	public String signup() {
		return "main/signup";
	}
	
	
}
