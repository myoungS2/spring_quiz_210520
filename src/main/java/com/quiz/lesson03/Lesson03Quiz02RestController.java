package com.quiz.lesson03;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.quiz.lesson03.bo.RealEstateBO;
import com.quiz.lesson03.model.RealEstate;

@RestController
@RequestMapping("/lesson03/quiz02")
public class Lesson03Quiz02RestController {
	@Autowired
	private RealEstateBO realEstateBO;
	
	// 1. 객체로 insert 하기
	// 요청 URL : http://localhost/lesson03/quiz02/1
	@RequestMapping("/1")
	public String quiz02_1() {

		RealEstate realEstate = new RealEstate();
		realEstate.setRealtorId(3);
		realEstate.setAddress("푸르지용 리버 303동 1104호");
		realEstate.setArea(89);
		realEstate.setType("매매");
		realEstate.setPrice(100000);
		int rowCount = realEstateBO.addRealEstate(realEstate);
		return "입력 성공 : " + rowCount; 
	}
}
