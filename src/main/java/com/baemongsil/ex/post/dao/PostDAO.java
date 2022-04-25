package com.baemongsil.ex.post.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface PostDAO {
	
	public int insertbookPost(
			@Param("userid") int userid,
			@Param("userName") String userName,
			
			@Param("bookTitle") String bookTitle,
			@Param("bookWriter") String bookWriter,
			@Param("bookPublisher") String bookPublisher,
			@Param("content") String content,
			
			@Param("imagePath") String imagePath
			
			
			);
	
}
