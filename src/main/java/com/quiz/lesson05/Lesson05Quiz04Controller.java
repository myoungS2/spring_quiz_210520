package com.quiz.lesson05;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.quiz.lesson05.model.Member;

@Controller
public class Lesson05Quiz04Controller {
	
	// 요청 url: localhost/lesson05/quiz04
	@RequestMapping("/lesson05/quiz04")
	public String quiz04(
			@ModelAttribute Member member,
			Model model) {
		// List
		List<Member> members = new ArrayList<>();
		
		Member member1 = new Member();
		member1.setName("유비");
		member1.setPhoneNumber("010-1234-5678");
		member1.setEmail("youbee@gmail.com");
		member1.setNationality("삼국시대 촉한");
		member1.setIntroduce("저는 촉의 군주 유비입니다. 삼국통일을 위해 열심히 일하겠습니다.");
		members.add(member1);

		member1 = new Member();
		member1.setName("관우");
		member1.setPhoneNumber("010-1234-5678");
		member1.setEmail("woo@naver.com");
		member1.setNationality("삼국시대 촉한");
		member1.setIntroduce("관우에요. 저는 유비형님 보다 나이는 많지만 일단 아우입니다.");
		members.add(member1);

		member1 = new Member();
		member1.setName("장비");
		member1.setPhoneNumber("02-111-3333");
		member1.setNationality("삼국시대 촉한");
		member1.setEmail("tools@gmail.com");
		member1.setIntroduce("장비라우");
		members.add(member1);

		member1 = new Member();
		member1.setName("조조");
		member1.setPhoneNumber("010-0987-4321");
		member1.setNationality("삼국시대 위");
		member1.setEmail("jojo@gmail.com");
		member1.setIntroduce("이름은 조조 자는 맹덕이라 하오");
		members.add(member1);

		member1 = new Member();
		member1.setName("주유");
		member1.setPhoneNumber("010-0000-1111");
		member1.setNationality("삼국시대 오");
		member1.setEmail("jooyou@kakao.com");
		member1.setIntroduce("주유는 주유소에서 ㅋㅋ");
		members.add(member1);

		member1 = new Member();
		member1.setName("황충");
		member1.setPhoneNumber("031-432-0000");
		member1.setNationality("삼국시대 촉한");
		member1.setEmail("yellowbug@naver.com");
		member1.setIntroduce("내 수염 좀 멋있는 듯");
		members.add(member1);
		
		model.addAttribute("member", members);
		
		return "lesson05/quiz04";
	}
}
