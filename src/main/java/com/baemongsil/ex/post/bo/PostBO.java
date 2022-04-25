package com.baemongsil.ex.post.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.baemongsil.ex.post.dao.PostDAO;

@Service
public class PostBO {

	@Autowired
	PostDAO postDAO;
	
	
	public int addPost(
			int userid,
			String userName,
			String bookTitle,
			String bookWriter,
			String bookPublisher,
			String content,
			MultipartFile img
			) {
		
		return postDAO.insertbookPost(userid, userName, bookTitle, bookWriter, bookPublisher, content, "");
		
		
	}
}
