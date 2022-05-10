package com.baemongsil.ex.list;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baemongsil.ex.list.bo.ListBO;
import com.baemongsil.ex.list.model.BookPost;
import com.baemongsil.ex.list.model.VideoPost;

@Controller
@RequestMapping("/list")
public class ListController {
	
	
	@Autowired
	private ListBO listBO;
	
	
	
	
	
	@GetMapping("/book/listpage")
	public String book(Model model) {
		
		List<BookPost> bookpost = listBO.getBookList();
		model.addAttribute("booklist",bookpost);
		
		
		return "list/booklist";
	}
	
	
	@GetMapping("/book/detailpage")
	public String detailbook(@RequestParam("id") int id, Model model) {
		
		BookPost bookpost = listBO.getBookPost(id);
		
		model.addAttribute("bookpost" , bookpost);
		
		return "list/detailbooklist";
	}
	
	
	@GetMapping("/video/listpage")
	public String video(Model model) {
		
		List<VideoPost> videopost = listBO.getVideoList();
		model.addAttribute("videolist" , videopost);
		
		return "list/videolist";
	}
	
	@GetMapping("/video/detailpage")
	public String detailvideo(@RequestParam("id") int id, Model model) {
		
		VideoPost videopost = listBO.getVideoPost(id);
		
		model.addAttribute("videopost",videopost);
		
		
		return "list/detailvideolist";
	}
	
	
	
	
	
	
}
