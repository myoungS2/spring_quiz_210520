package com.quiz.lesson06.bo;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson06.dao.BookingDAO;
import com.quiz.lesson06.model.Booking;

@Service
public class BookingBO {
	
	// dao 연결
	@Autowired
	private BookingDAO bookingDAO;
	
	// select DB
	public List<Booking> getBookingList() {
		return bookingDAO.selectBookingList();
	}
	
	// delete DB
	public int deleteBooingById(int id) {
		return bookingDAO.deleteBooingById(id);
	}
	
	// insert DB
	public void addBooking(String name, Date date, int day, int headcount, String phoneNumber) {
		bookingDAO.insertBooking(name, date, day, headcount, phoneNumber);
	}
}
