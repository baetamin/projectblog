package com.baemongsil.ex.post;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/review")
public class ReviewWriteController {

	@GetMapping("/write")
	public String review() {
		return "review/writepage";
	}
	
}
