package com.quiz.lesson05;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.quiz.lesson05.bo.NewReviewBO;
import com.quiz.lesson05.bo.StoreListBO;
import com.quiz.lesson05.model.StoreList;

@RequestMapping("/lesson05/quiz06")
@Controller
public class Lesson05Quiz06Controller {
	
	// BO 연결
	@Autowired
	private StoreListBO storeListBO;
	private NewReviewBO newReviewBO;
	
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
	// store 선택시 -> localhost/lesson05/quiz06/2?storeId=1&storeName= 넘겨받기..!
	@RequestMapping("/2")
	public String storeReview(
			@RequestParam("storeId") int storeId,
			@RequestParam("storeName") String storeName,
			Model model) {
		
		model.addAttribute("storeId", storeId);
		model.addAttribute("storeName", storeName);
		model.addAttribute("review", newReviewBO.getNewReviewByStoreId(storeId)); // review DB select
		
		return "/lesson05/store/storeReview";
	}
}
