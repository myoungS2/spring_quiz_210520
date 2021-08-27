package com.quiz.lesson03.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson03.dao.Real_estateDAO;
import com.quiz.lesson03.model.Real_estate;

@Service
public class Real_estateBO {
	// dao 연결
	@Autowired
	private Real_estateDAO realEstateDAO;
	
	// 1. id 로 select 하기
	public Real_estate getReal_estateById(int id) {
		return realEstateDAO.selectReal_estateById(id);
	}
}
