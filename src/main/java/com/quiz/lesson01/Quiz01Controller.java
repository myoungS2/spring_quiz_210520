package com.quiz.lesson01;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

// @ResponseBody를 여기에 써주어도 됨! 모든 메소드에 대해서 response..!
@RequestMapping("/lesson01/quiz01")
@Controller
public class Quiz01Controller {
	
	// 요청 URL : http://localhost/lesson01/quiz01/1
	@RequestMapping("/1")
	@ResponseBody
	public String PrintString() {
		String text = "<h2>테스트 프로젝트 완성</h2>"
				+ "	<strong><p>해당 프로젝트를 통해서 문제 풀이를 진행합니다.</p></strong>" ;
		return text;
	}
	
	// 요청 URL : http://localhost/lesson01/quiz01/2
	@RequestMapping("/2")
	@ResponseBody // 요거 빼먹는 실수했음..! 값을 돌려줄 수가 없좒아ㅠ바보ㅠ
	public Map<String, Object> pringMap(){
		Map<String, Object> map = new HashMap<>();
		map.put("국어", 80);
		map.put("수학", 90);
		map.put("영어", 85);
		
		return map;
	}
	
}
