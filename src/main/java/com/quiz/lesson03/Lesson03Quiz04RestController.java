package com.quiz.lesson03;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.quiz.lesson03.bo.RealEstateBO;

@RestController
@RequestMapping("/lesson03/quiz04")
public class Lesson03Quiz04RestController {

	// BO 연결
	@Autowired
	private RealEstateBO realEstateBO;
	
	// DELETE
	// 요청 URL : http://localhost/lesson03/quiz04/1?id=21
	@RequestMapping("/1")
	public String ex04(
			@RequestParam("id") int id) {
		
		int rowCount = realEstateBO.deleteRealEstateById(id);
		return "삭제 성공 : " + rowCount;
	}
	
}
