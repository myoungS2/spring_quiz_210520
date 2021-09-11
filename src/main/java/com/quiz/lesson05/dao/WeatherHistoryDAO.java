package com.quiz.lesson05.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.quiz.lesson05.model.WeatherHistory;

@Repository
public interface WeatherHistoryDAO {
	
	// select
	public List<WeatherHistory> selectWeatherHistory();
	
	// insert
	public void insertWeatherHistory(WeatherHistory weatherHistory);
}
