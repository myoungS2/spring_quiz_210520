package com.quiz.lesson03.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson03.dao.RealEstateDAO;
import com.quiz.lesson03.model.RealEstate;

@Service
public class RealEstateBO {
	
	// dao 연결
	@Autowired
	private RealEstateDAO realEstateDAO; // 객체는 관례적으로 소문자로 시작!
	
	public RealEstate getRealEstateById(int id) {
		return realEstateDAO.selectRealEstateById(id);
	}
	
	public List<RealEstate> getRealEstateByRentPrice(Integer rentPrice) {
		return realEstateDAO.selectRealEstateByRentPrice(rentPrice);
	}
//	
	public List<RealEstate> getRealEstateByAreaAndPrice(int area, int price){
		return realEstateDAO.selectRealEstateByAreaAndPrice(area, price);
	}
}
