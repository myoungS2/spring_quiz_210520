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
	// 1 
	public int insertRealEstate (RealEstate realEstate);
	
	// 2
	public int insertRealEstateAsField(
		@Param("realtorId") int realtorId,
		@Param("address") String address,
		@Param("area") int	area, 
		@Param("type") String	type, 
		@Param("price")	int price, 
		@Param("rentPrice") Integer	rentPrice);
	
	// UPDATE
	// 1
	public int updateRealEstate (
			@Param("id") int id, 
			@Param("type") String type, 
			@Param("price") int price);
	
	// DELETE
	// 1
	public int deleteRealEstateById (int id);
}
