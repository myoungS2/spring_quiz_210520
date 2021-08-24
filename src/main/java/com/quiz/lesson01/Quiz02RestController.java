package com.quiz.lesson01;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/lesson01/quiz02")
@RestController // data만 내려주는 애! (view화면x)
public class Quiz02RestController {
	
	
	// 요청 URL : http://localhost/lesson01/quiz02/1
	@RequestMapping("/1")
	public List<Map<String, Object>> quiz02_1() {
		List<Map<String, Object>> result =  new ArrayList<>();
		Map<String, Object> movieMap = new HashMap<>(); // A map (힙영역)
	
		movieMap.put("rate", 15);
		movieMap.put("director", "봉준호");
		movieMap.put("time", 131);
		movieMap.put("title", "기생충");
		result.add(movieMap);
		
		// movieMap 재활용, new를 해서 새로운 map을 만들어 다음 값을 넣어줌!
		
		movieMap = new HashMap(); // B map
		movieMap.put("rate", 0);
		movieMap.put("director", "로베르토 베니니");
		movieMap.put("time", 116);
		movieMap.put("title", "인생은 아름다워");
		result.add(movieMap);
		
		movieMap = new HashMap(); // C map
		movieMap.put("rate", 12);
		movieMap.put("director", "크리스토퍼 놀란");
		movieMap.put("time", 147);
		movieMap.put("title", "인셉션");
		result.add(movieMap);
		
		movieMap = new HashMap();
		movieMap.put("rate", 19);
		movieMap.put("director", "윤종빈");
		movieMap.put("time", 133);
		movieMap.put("title", "범죄와의 전쟁 : 나쁜놈들 전성시대");
		result.add(movieMap);
		
		movieMap = new HashMap();
		movieMap.put("rate", 15);
		movieMap.put("director", "프란시스 로렌스");
		movieMap.put("time", 137);
		movieMap.put("title", "헝거게임");
		result.add(movieMap);
		
		return result ;
		
		}
	
	// 요청 URL : http://localhost/lesson01/quiz02/2
	@RequestMapping("/2")
	public List<Board> quiz02_2(){
		List<Board> result = new ArrayList<>();
		Board board = new Board(); // 참조형데이터 -> heap영역
		
		board.setTitle("안녕하세요 가입인사 드립니다."); // A 주소 board
		board.setUser("hagulu");
		board.setContent("안녕하세요. 가입했어요. 앞으로 잘 부탁 드립니다. 활동 열심히 하겠습니다.");
		result.add(board);
		
		board = new Board(); // B 주소 board
		board.setTitle("헐 대박"); // A 주소 board
		board.setUser("bada");
		board.setContent("오늘 목요일이 었어... 금요일인줄");
		result.add(board);
		
		board = new Board(); // B 주소 board
		board.setTitle("오늘 데이트 한 이야기 해드릴게요."); // A 주소 board
		board.setUser("dulumary");
		board.setContent("....");
		result.add(board);
		
		return result;
	}
	
	// 요청 URL : http://localhost/lesson01/quiz02/3
	@RequestMapping("/3")
	public ResponseEntity<Board> quiz02_3() {
		Board board = new Board();
		
		board.setTitle("안녕하세요 가입인사 드립니다.");
		board.setUser("hagulu");
		board.setContent("안녕하세요. 가입했어요. 앞으로 잘 부탁 드립니다. 활동 열심히 하겠습니다.");
		
		return new ResponseEntity<>(board,HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
}
