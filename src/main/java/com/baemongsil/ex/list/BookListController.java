package com.baemongsil.ex.list;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/list")
public class BookListController {
	
	@GetMapping("/listpage")
	public String list() {
		return "list/booklist";
	}
}
