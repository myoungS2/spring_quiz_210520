package com.quiz.lesson02;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.quiz.lesson02.bo.StoreBO;
import com.quiz.lesson02.model.Store;

@RestController
public class StoreRestController {
	
	@Autowired // BO객체 가져오기
	private StoreBO StoreBO;
	
	@RequestMapping("/lesson02/quiz01")
	public List<Store> quiz01(){
		List<Store> storeList = StoreBO.getStoreList();
		return storeList;
	}
}
