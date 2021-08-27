package com.quiz.lesson03;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.quiz.lesson03.bo.RealEstateBO;
import com.quiz.lesson03.model.RealEstate;

@RestController
@RequestMapping("/lesson03/quiz01")
public class Lesson03Quiz01RestController {
	@Autowired
	private RealEstateBO realEstateBO;
	
	// 1. id로 select하기
	// 요청 url: http://localhost/lesson03/quiz01/1?id=20
	@RequestMapping("/1")
	public RealEstate quiz01_1(
			@RequestParam("id") int id) {
		RealEstate realEstate = realEstateBO.getRealEstateById(id); // 이렇게 하면 디버깅 하기에 용이!
		return realEstate;
	}
	
	// 2. 월세 조건 select
	// 요청 url: http://localhost/lesson03/quiz01/2?rentPrice=90
	@RequestMapping("/2")
	public List<RealEstate> quiz01_2(
			@RequestParam(value="rentPrice", required=false) Integer rentPrice) {
		return realEstateBO.getRealEstateByRentPrice(rentPrice);
	}

	// 3. 복합조건 select
//	아래 두 parameter를 받고 매매 매물 중 조건에 모두 부합하는 매물 정보를 아래와 같이 json으로 출력하세요.
//	넓이(area) - 매물의 넓이가 전달 받은 넓이 이상인 것
//	가격(price) - 매물의 매매금이 전달받은 매매금 보다 이하인 것
//	등록일을 기준으로 내림 차순으로 정렬하세요.
	// http://localhost/lesson03/quiz01/3?area=90&price=130000
	@RequestMapping("/3")
	public List<RealEstate> quiz01_3(
			@RequestParam(value="area", required=true) int area,
			@RequestParam(value="price", required=true) int price 
			) {
		
		return realEstateBO.getRealEstateByAreaAndPrice(area, price);
	}
}
