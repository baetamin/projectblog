package com.baemongsil.ex.list.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baemongsil.ex.list.dao.ListDAO;
import com.baemongsil.ex.list.model.BookPost;
import com.baemongsil.ex.list.model.VideoPost;

@Service
public class ListBO {

	@Autowired
	private ListDAO listDAO;

	public List<BookPost> getBookList(){
		
		return listDAO.selectBookList();
	}
	
	public BookPost getBookPost(int id) {
		
		return listDAO.selectBookPost(id);
		
	}
	
	public List<VideoPost> getVideoList(){
		
		return listDAO.selectVideoList();
	}
	
	public VideoPost getVideoPost(int id) {
		
		return listDAO.selectVideoPost(id);
	}
	
	
	public int deleteBookList(int id) {
		return listDAO.deleteBookList(id);
	}
	
	
	public int deleteVideoList(int id) {
		return listDAO.deleteVideoLsit(id);
	}
}
