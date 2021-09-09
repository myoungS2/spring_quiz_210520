package com.quiz.lesson05;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.quiz.lesson05.bo.WeatherHistoryBO;
import com.quiz.lesson05.model.WeatherHistory;

@RequestMapping("/lesson05/quiz05")
@Controller
public class Lesson05quiz05Controller {
	
	// bo 연결
	@Autowired
	private WeatherHistoryBO weatherHistoryBO; 
	
	// 요청 url : http://localhost/lesson05/quiz05/1
	@RequestMapping("/1")
	public String quiz05_1(Model model) {
		
		// select DB
		List<WeatherHistory> weatherHistory = weatherHistoryBO.getWeatherHistory(); // bo한테 가져오라고 할 것..!
		
		model.addAttribute("weatherHistory", weatherHistory);
		
		return "lesson05/weather/weatherHistory"; // weatherHistory jsp
	}
	
	@RequestMapping("/2")
	public String quiz05_2() {
		
		return "lesson05/weather/addWeather"; // addWeather jsp (이 안에서 바로 add_weather로 넘어가서 insert DB)
	}
	
//	@RequestMapping("/3")
//	public String addWeather(
//			@RequestParam("date") String date,
//			@RequestParam("weather") String weather,
//			@RequestParam("microDust") String microDust,
//			@RequestParam("temperatures") double temperatures,
//			@RequestParam("precipitation") double precipitation,
//			@RequestParam("windSpeed") double windSpeed
//			) {
//		
//		// insert DB
//		
//		return "lesson05/weather/weatherHistory"; // insert 후 다시 weatherHistory jsp보여주기
//	}
}
