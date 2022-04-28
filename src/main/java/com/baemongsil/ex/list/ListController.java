package com.baemongsil.ex.list;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/list")
public class ListController {
	
	@GetMapping("/book/listpage")
	public String list() {
		return "list/booklist";
	}
	
	@GetMapping("/videolist")
	public String videoCreateView() {
		return "list/videolist";
				
	}
	
	@GetMapping("/book/detailbooklist")
	public String detailbook() {
		return "list/detailbooklist";
	}
	
	
	
}
