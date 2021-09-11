package com.quiz.lesson05;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.quiz.lesson05.bo.StoreListBO;
import com.quiz.lesson05.model.StoreList;

@RequestMapping("/lesson05/quiz06")
@Controller
public class Lesson05Quiz06Controller {
	
	// BO 연결
	@Autowired
	private StoreListBO storeListBO;
	
	// storeList (store 테이블)
	// 요청 url : http://localhost/lesson05/quiz06/1
	@RequestMapping("/1")
	public String storeList(Model model) {
		
		// select DB
		List<StoreList> storeList = storeListBO.getStoreList();
		
		model.addAttribute("StoreList", storeList);
		
		return "/lesson05/store/storeList"; // storeList jsp
	}
	
	// storeReview (new_review 테이블)
	// 요청 url : http://localhost/lesson05/quiz06? -> store id, name 파라미터 넘겨받기..!
	@RequestMapping("2")
	public String storeReview() {
		
		return "/lesson05/store/storeReview";
	}
}
