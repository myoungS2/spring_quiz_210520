package com.quiz.lesson06;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	// submit : @Controller -> view 리턴(화면으로 보낸다)
	// ajax : @Controller + @ResponseBody -> String, JSON (데이터만 보낸다)
	
	// insert DB
	@ResponseBody // 얘를 빠트리면 404에러 발생..ㅜ
	@PostMapping("/2")
	public String addBookmark(
			@RequestParam("name") String name,
			@RequestParam("url") String url) {
		
		// insert DB
		bookmarkBO.addBookmark(name, url);
		
		return "success";
		
	}
	
	/* json으로 결과를 받으려면..!
	 * 
	 * public Map<String, String> addBookmark(
	 * 			@RequestParam("name") String name
	 * 			@RequestParam("url") String url) {
	 * 
	 * 
	 * Map<String, String> result = new HashMap<>();
	 * result.put("result", "success");
	 * 
	 * return result;
	 * 
	 * }
	 * */
	
	// bookmarklist
	@RequestMapping("/3")
	public String afterAddBookmark(Model model) {
		
		// select DB
		List<Bookmark> bookmarkList = bookmarkBO.getBookmarkList();
		
		model.addAttribute("bookmarkList", bookmarkList);
		
		return "lesson06/afterAddBookmark";
	}
	
	// quiz02이지만...01에 이어서..!
	@PostMapping("/4")
	@ResponseBody
	public Map<String, Boolean> checkDuplicationUrl(
			@RequestParam("url") String url) {
			
		// url DB 조회 및 중복 체크
		Bookmark bookmark = bookmarkBO.getBookmarkByUrl(url);
		
		// 결과 map 구성
		Map<String, Boolean> result = new HashMap<>();
		result.put("isDubplication", false);
		
		if (bookmark != null) {
			result.put("isDubplication", true); // map에서는 key값이 중복되면, 새로 넣은 값으로 수정됨!
		}
		
		return result;
	}
	
	@PostMapping("/5")
	@ResponseBody
	public Map<String, String> deleteBookmark(
			@RequestParam("bookmark_id") int id){
			
		// delete DB by id
		int deletedRow = bookmarkBO.deleteBookmarkById(id); // 삭제 된 행의 count > 0 (0보다 크면 삭제가 잘 된 것)
		
		Map<String, String> result = new HashMap<>();
		result.put("result", "success");
		if (deletedRow == 0) {
			result.put("result", "fail");
		}
		return result;
		
	}
	
}
