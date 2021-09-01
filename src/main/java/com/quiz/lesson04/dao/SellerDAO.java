package com.quiz.lesson04.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface SellerDAO {
	
	// 1. seller 추가
	public int insertSeller (
			@Param("nickname") String nickname,
			@Param("profileImage") String profileImage,
			@Param("temperature") double temperature);
}
