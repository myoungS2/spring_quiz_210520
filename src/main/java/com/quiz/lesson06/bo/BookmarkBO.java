package com.quiz.lesson06.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson06.dao.BookmarkDAO;
import com.quiz.lesson06.model.Bookmark;

@Service
public class BookmarkBO {
	
	// dao 연결
	@Autowired
	private BookmarkDAO bookmarkDAO;
	
	// insert
	public void addBookmark(String name, String url) {
		bookmarkDAO.insertBookmark(name, url);
	}
	
	// select 
	public List<Bookmark> getBookmarkList() {
		return bookmarkDAO.selectBookmarkList();
	}
	
	// quiz02 
	public Bookmark getBookmarkByUrl(String url) {
		return bookmarkDAO.selectBookmarkByUrl(url);
	}
	
	// delete
	public int deleteBookmarkById (int id) {
		return bookmarkDAO.deleteBookmarkById(id);
	}
}
