package com.quiz.lesson05.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson05.dao.StoreListDAO;
import com.quiz.lesson05.model.StoreList;


@Service
public class StoreListBO {
	// DAO 연결
	@Autowired
	private StoreListDAO storeListDAO;
	
	// select
	public List<StoreList> getStoreList(){
		List<StoreList> storeList = storeListDAO.selectStoreList(); // lesson05의 Store model인데 왜...lesson02에 대한 에러가 발생하지?
		return storeList;
	}
}
