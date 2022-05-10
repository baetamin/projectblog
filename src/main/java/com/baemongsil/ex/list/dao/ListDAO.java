package com.baemongsil.ex.list.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.baemongsil.ex.list.model.BookPost;
import com.baemongsil.ex.list.model.VideoPost;

@Repository
public interface ListDAO {

	
	public List<BookPost> selectBookList ();
	
	
	public BookPost selectBookPost(@Param("id") int id);

	
	public List<VideoPost> selectVideoList();
	
	
	public VideoPost selectVideoPost(@Param("id") int id);
	
	
	public int deleteBookList(@Param("id")int id);
	
	public int deleteVideoLsit(@Param("id") int id);
}
