package com.quiz.lesson03;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.quiz.lesson03.bo.Real_estateBO;
import com.quiz.lesson03.model.Real_estate;

@RestController
public class Real_estateRestController {
	// bo 연결
	@Autowired
	private Real_estateBO realEstateBO;
	
	// 1. id 로 select 하기
	// 요청 url:http://localhost/lesson03/quiz01/1?id=20
	@RequestMapping("/lesson03/quiz01")
	public Real_estate quiz01(
			@RequestParam(value="id", required=true) int id
			) {
		Real_estate realEstate = realEstateBO.getReal_estateById(id);
		return realEstate;
	}
}
