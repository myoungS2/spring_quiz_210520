package com.quiz.lesson03.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.quiz.lesson03.model.RealEstate;

@Repository
public interface RealEstateDAO {
	// SELECT
	// 1
	public RealEstate selectRealEstateById(int id);
	
	// 2
	public List<RealEstate> selectRealEstateByRentPrice(Integer rentPrice);

	// 3
	public List<RealEstate> selectRealEstateByAreaAndPrice(@Param("area") int area, @Param("price") int price);

	// INSERT
	//1 
	public int insertRealEstate (RealEstate realEstate);
}
