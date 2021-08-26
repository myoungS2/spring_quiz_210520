package com.quiz.lesson02.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.quiz.lesson02.model.Store;

@Repository
public interface StoreDAO {

	public List<Store> selectStoreList();
	// list가 아닌 Store slecetSotreList();로 가져오려고 하면, Too many result error (쿼리의 결과는 여러행인데, 리턴되는 타입은 단건이다라는 뜻)
}
