package com.baemongsil.ex.list;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.baemongsil.ex.list.bo.ListBO;


@RestController
@RequestMapping("/list")
public class ListRestController {

	@Autowired
	private ListBO listBO;
	
	
	
	@GetMapping("/delete/booklist")
	
	
	public Map<String, String >deletebook(
			@RequestParam("id") int id){
		
		int count = listBO.deleteBookList(id);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		}else {
			result.put("result", "fail");
		}
		
		return result;
	}
	
	
	
	@GetMapping("/delete/videolist")
	
	public Map<String, String> deletevideo(
				@RequestParam("id") int id){
		
		int count = listBO.deleteVideoList(id);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		}else {
			result.put("result", "fail");
		}
		
		return result;
	}
			
	
	
	
	
}
