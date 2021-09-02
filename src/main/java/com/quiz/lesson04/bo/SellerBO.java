package com.quiz.lesson04.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson04.dao.SellerDAO;
import com.quiz.lesson04.model.Seller;

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
	
	// 2. seller 출력
	public Seller getLastSeller() {
		return sellerDAO.selectLastSeller();
	}
	
	//  3. seller 검색 출력
	public Seller getSellerById(int id) {
		return sellerDAO.selectSellerById(id);
	}

}
