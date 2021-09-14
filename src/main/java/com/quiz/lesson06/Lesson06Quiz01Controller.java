package com.quiz.lesson06;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.quiz.lesson06.bo.BookmarkBO;
import com.quiz.lesson06.model.Bookmark;

@RequestMapping("/lesson06/quiz01")
@Controller
public class Lesson06Quiz01Controller {
	
	// bo 연결
	@Autowired
	private BookmarkBO bookmarkBO;
	
	
	// insert DB 화면
	@RequestMapping("/1")
	public String addBookmarkView() {
		return "lesson06/addBookmark";
	}
	
	// insert DB
	@PostMapping("/2")
	public String addBookmark(
			@RequestParam("name") String name,
			@RequestParam("url") String url
			) {
		
		// insert DB
		bookmarkBO.addBookmark(name, url);
		
		return "success";
	}
	
	// bookmarklist
	@RequestMapping("/3")
	public String afterAddBookmark(Model model) {
		
		// select DB
		List<Bookmark> bookmark = bookmarkBO.getBookmark();
		
		model.addAttribute("bookmark", bookmark);
		
		return "lesson06/afterAddBookmark";
	}
}
