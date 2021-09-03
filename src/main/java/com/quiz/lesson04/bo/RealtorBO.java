package com.quiz.lesson04.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson04.dao.RealtorDAO;
import com.quiz.lesson04.model.Realtor;

@Service
public class RealtorBO {
	
	// dao 연결
	@Autowired
	private RealtorDAO realtorDAO;
	
	// insert
	public void addRealtor(Realtor realtor) {
		realtorDAO.insertRealtor(realtor); // dao 리턴
	}
	
	// select 
	public Realtor getRealtorById(int id) {
		return realtorDAO.selectRealtorById(id);
	}
}
