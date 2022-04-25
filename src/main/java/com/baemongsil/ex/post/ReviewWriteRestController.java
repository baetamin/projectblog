package com.baemongsil.ex.post;



import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.baemongsil.ex.post.bo.PostBO;
import com.baemongsil.ex.post.model.BookModel;

@RestController
@RequestMapping("/post")
public class ReviewWriteRestController {

	@Autowired
	private PostBO postBO;
	
	
	@PostMapping("/bookcreate")
	public Map <String, String> bookwrite(
			
			@RequestParam("bookTitle") String bookTitle,
			@RequestParam("author") String author,
			@RequestParam("Publisher") String Publisher,
			@RequestParam("content") String content,
			HttpServletRequest request){
		
		HttpSession session = request.getSession();
		int userid = (Integer)session.getAttribute("userid");
		String username = (String)session.getAttribute("username");
		
		int count = postBO.addPost(userid, username,bookTitle, author, Publisher, content,null);
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		}else {
			result.put("result", "fail");
		}
		
		
		
		
		return result; 
		
	}
	
	
}
