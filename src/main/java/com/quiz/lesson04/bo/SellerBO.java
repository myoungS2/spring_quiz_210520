package com.quiz.lesson04.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson04.dao.SellerDAO;

@Service
public class SellerBO {
	
	// dao 연결
	@Autowired
	private SellerDAO sellerDAO;
	
	// 1. seller 추가
	public int addSeller (
			String nickname, String profileImage, double temperature) {
		return sellerDAO.insertSeller(nickname, profileImage, temperature);
	}
}
