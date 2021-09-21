package com.quiz.lesson06;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quiz.lesson06.bo.BookingBO;
import com.quiz.lesson06.model.Booking;

@Controller
@RequestMapping("/lesson06/quiz02")
public class Lesson06Quiz02Controller {
	// bo 연결
	@Autowired
	private BookingBO bookingBO;
	
	// 요청 url: http://localhost/lesson06/quiz02/1
	// 메인(예약확인->alert)
	@RequestMapping("/1")
	public String main() {
		return "lesson06/bookingMain";
	}
	
	// 예약목록
	@RequestMapping("/2")
	public String booking_list(Model model) {
		
		// select DB
		List<Booking> bookingList = bookingBO.getBookingList();
		
		model.addAttribute("bookingList", bookingList);
		
		return "lesson06/bookingList";
	}
	
	// 예약목록 삭제
	@PostMapping("/3")
	@ResponseBody
	public Map<String, String> deleteBooing(
			@RequestParam("booking_id") int id) {
		
		// delete DB by id
		int deletedRow = bookingBO.deleteBooingById(id);
		
		Map<String, String> result = new HashMap<>();
		result.put("result", "success");
		if (deletedRow == 0) {
			result.put("result", "fail");
		}
		
		return result;
	}
	
	// 예약하기 view
	@RequestMapping("/4")
	public String booking() {
		return "lesson06/addBooking";
	}
	
	// 예약하기
	@PostMapping("/5")
	@ResponseBody
	public Map<String, String> addBooking(
			@RequestParam("name") String name,
			@RequestParam("date") Date date,
			@RequestParam("day") int day,
			@RequestParam("headcount") int headcount,
			@RequestParam("phoneNumber") String phoneNumber) {
		
		// insert DB
		bookingBO.addBooking(name, date, day, headcount, phoneNumber);
		
		Map<String, String> result = new HashMap<>();
		result.put("result", "success");
		
		return result;
		
	}
}
