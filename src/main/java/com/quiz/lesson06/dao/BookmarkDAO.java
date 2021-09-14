package com.quiz.lesson06.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.quiz.lesson06.model.Bookmark;

public interface BookmarkDAO {
	
	// insert
	public void insertBookmark(@Param("name") String name, @Param("url") String url);
	
	// select 
	public List<Bookmark> selectBookmark();
	
	
}
