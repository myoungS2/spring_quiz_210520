package com.quiz.lesson03.bo;

import java.util.Date;
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
	
	// SELECT 
	// 1
	public RealEstate getRealEstateById(int id) {
		return realEstateDAO.selectRealEstateById(id);
	}
	
	// 2
	public List<RealEstate> getRealEstateByRentPrice(Integer rentPrice) {
		return realEstateDAO.selectRealEstateByRentPrice(rentPrice);
	}
	
	// 3
	public List<RealEstate> getRealEstateByAreaAndPrice(int area, int price){
		return realEstateDAO.selectRealEstateByAreaAndPrice(area, price);
	}
	
	// INSERT
	// 1
	public int addRealEstate (RealEstate realEstate) {
		return realEstateDAO.insertRealEstate(realEstate);
	}
	
	// 2
	public int addRealEstateAsField (
			int realtorId ,String address, int area, String type, int price, Integer rentPrice) {
		// "썅떼빌리버 오피스텔 814호", 45, "월세", 100000, 120
		return realEstateDAO.insertRealEstateAsField(realtorId ,address,area, type, price, rentPrice);
	}
	
	// UPDATE
	// 1
	public int updateRealEstate (int id, String type, int price) {
		return realEstateDAO.updateRealEstate(id, type, price);
	}
}
