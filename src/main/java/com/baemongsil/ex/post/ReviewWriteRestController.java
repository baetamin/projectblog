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
import org.springframework.web.multipart.MultipartFile;

import com.baemongsil.ex.post.bo.PostBO;

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
			@RequestParam(value = "file", required = false) MultipartFile file,
			HttpServletRequest request){
		
		HttpSession session = request.getSession();
		int userid = (Integer)session.getAttribute("userId");
		String username = (String)session.getAttribute("userNickname");
		
		int count = postBO.addPost(userid, username,bookTitle, author, Publisher, content,file);
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		}else {
			result.put("result", "fail");
		}
		
		
		return result; 
		
	}
	
	
	@PostMapping("/videocreate")
	public Map<String, String> videowrite(
			@RequestParam("videoTitle") String videoTitle,
			@RequestParam("videoactor") String videoactor,
			@RequestParam("videoday") String  videoday,
			@RequestParam("content") String content,
			@RequestParam(value = "file", required = false) MultipartFile file,
			HttpServletRequest request){
		
		HttpSession session = request.getSession();
		int userid = (Integer)session.getAttribute("userId");
		String username = (String)session.getAttribute("userNickname");
		
		int count = postBO.videoPost(userid, username, videoTitle, videoactor, videoday, content, file);
		Map <String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		}else {
			result.put("result", "fail");
		}
		return result;
		
	}
	
	
	
	
	
}
