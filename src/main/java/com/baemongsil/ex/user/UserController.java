package com.baemongsil.ex.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	
	@GetMapping("/signout")
	public String signOut(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		session.removeAttribute("userId");
		session.removeAttribute("userName");
		session.removeAttribute("userNickname");
		
		return "redirect:/user/loginpage";
	}
	
}
