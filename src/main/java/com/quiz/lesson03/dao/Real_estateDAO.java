package com.quiz.lesson03.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.quiz.lesson03.model.Real_estate;

@Repository
public class Real_estateDAO {
	public Real_estate selectReal_estateById(@Param("id") int id); // 왜..에러나는걸꽈...
}
