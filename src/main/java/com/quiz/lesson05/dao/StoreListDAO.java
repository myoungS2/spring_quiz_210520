package com.quiz.lesson05.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.quiz.lesson05.model.StoreList;

@Repository
public interface StoreListDAO {
	
	// select
	public List<StoreList> selectStoreList();

}
