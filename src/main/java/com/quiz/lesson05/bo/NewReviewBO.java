package com.quiz.lesson05.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson05.dao.NewReviewDAO;
import com.quiz.lesson05.model.NewReview;

@Service
public class NewReviewBO {
	
	// dao 연결
	@Autowired
	private NewReviewDAO newReviewDAO;
	
	// select -> review (storeId로)
	public List<NewReview> getNewReviewByStoreId(int storeId) {
		return newReviewDAO.selectNewReviewByStoreId(storeId);// 
	}
}
