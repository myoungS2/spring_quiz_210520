package com.quiz.lesson06.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.quiz.lesson06.model.Bookmark;

@Repository
public interface BookmarkDAO {
	
	// insert
	public void insertBookmark(
			@Param("name") String name, 
			@Param("url") String url);
	
	// select 
	public List<Bookmark> selectBookmarkList();
	
	// quiz02
	public Bookmark selectBookmarkByUrl(String url);
	
	// delete
	public int deleteBookmarkById (int id); 
}
