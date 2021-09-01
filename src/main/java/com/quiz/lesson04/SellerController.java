package com.quiz.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.quiz.lesson04.bo.SellerBO;
import com.quiz.lesson04.model.Seller;

@Controller
@RequestMapping("/lesson04/quiz01")
public class SellerController {
	
	// bo 연결
	@Autowired
	private SellerBO sellerBO;
	
	// 1. seller 추가
	// 요청 URL : http://localhost/lesson04/quiz01/1
	@RequestMapping("/1")
	public String quiz01_1() {
		return "lesson04/addSeller"; // jsp 연결
	}
	
	// 요청 URL : http://localhost/lesson04/quiz01/add_seller
	@PostMapping("/add_seller")
	public String addSeller(
			// 닉네임, 프로필사진, 온도 
			@RequestParam("nickname") String nickname,
			@RequestParam("profileImage") String profileImage,
			@RequestParam("temperature") double temperature) {
		
		// DB
		sellerBO.addSeller(nickname, profileImage, temperature);

		return "lesson04/afterAddSeller";
	}
	
	// 2. seller 출력
	// 요청 URL : http://localhost/lesson04/quiz01/seller_info
	@GetMapping("/seller_info")
	public String getLastSeller(Model model) {
		Seller seller = sellerBO.getLastSeller();
		
		model.addAttribute("seller", seller);
		model.addAttribute("title", "판매자 정보");
		
		return "lesson04/sellerInfo";
	}
	
	// 3. seller 검색 출력
	// 요청 URL : http://localhost/lesson04/quiz01/seller_info?id=1
	@GetMapping("/seller_info")
	public String getSellerInfo(
			@RequestParam("id") int id) {
		sellerBO.getSellerInfo(id);
		return "lesson04/sellerInfo";
	}
}
