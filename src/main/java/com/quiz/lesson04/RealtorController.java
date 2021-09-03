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
	
	/*
	 * 하나의 컨트롤러에 2개 이상의 BO를 연결하려면...!
	 * 
	 * @Autowired -> 각각 생성!
	 * private RealtorBO realtorBO;
	 * 
	 * BO에서 DAO를 연결할때도 마찬가지로 @Autowired를 각각 생성!
	 * 
	 * 
	 * Mapper에선 join을 권장x
	 * 코드에서 합치는 방향으로..!
	 * A table, B table -> 전체를 select -> BO에서 반복문을 돌려서 join을 쿼리가 아닌 코드로 짜줌..!
	 * */
	
	// 요청 URL : http://localhost/lesson04/quiz02/1
	@RequestMapping("/1")
	public String quiz02_1() {
		return "lesson04/addRealtor"; // realtor 입력받는 jsp
	}
	
	// 요청 URL : http://localhost/lesson04/quiz02/add_realtor
	// 요청 URL : http://localhost/lesson04/quiz02?id=3
	@PostMapping("/add_realtor")
	public String addRealtor(
			@ModelAttribute Realtor realtor,
			Model model) {
		// 파라미터 받기 (@RequestParam/ @ModelAttribute)
		
		// DB INSERT
		realtorBO.addRealtor(realtor); // insert용..!
		
		// DB SELECT
		Realtor newRealtor = realtorBO.getRealtorById(realtor.getId()); // bo에서 get
		// input용, 뿌리기용 객체를 구분하기 위해서..! newRealtor라고 이름 지어주기!
		
		// VIEW
		model.addAttribute("realtor", newRealtor); // select가 된 데이터(by id)
		
		return "lesson04/afterAddRealtor"; // realtor 출력 jsp
	}
}
