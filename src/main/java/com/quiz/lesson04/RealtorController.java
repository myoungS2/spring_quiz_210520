package com.quiz.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.quiz.lesson04.bo.RealtorBO;
import com.quiz.lesson04.model.Realtor;

@RequestMapping("/lesson04/quiz02")
@Controller
public class RealtorController {
	
	// bo 연결
	@Autowired
	private RealtorBO realtorBO;
	
	// 요청 URL : http://localhost/lesson04/quiz02/1
	@RequestMapping("/1")
	public String quiz02_1() {
		return "lesson04/addRealtor"; // realtor 입력받는 jsp
	}
	
	// 요청 URL : http://localhost/lesson04/quiz02/add_realtor
	@PostMapping("/add_realtor")
	public String addRealtor(
			@ModelAttribute Realtor realtor,
			Model model) {
		
		// DB INSERT
		realtorBO.addRealtor(realtor);
		
		// DB SELECT
		Realtor realtorModel = realtorBO.getRealtorById(realtor.getId()); // bo에서 get
		// VIEW
		
		model.addAttribute("realtor", realtorModel); // select가 된 데이터(by id)
		
		return "lesson04/afterAddRealtor"; // realtor 출력 jsp
	}
}
