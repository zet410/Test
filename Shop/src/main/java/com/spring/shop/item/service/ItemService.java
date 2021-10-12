package com.spring.shop.item.service;

import java.util.List;

import com.spring.shop.item.vo.CategoryVO;
import com.spring.shop.item.vo.ItemVO;

public interface ItemService {
	//상품 카테고리 목록 조회
	List<CategoryVO> selectCategoryList();
	
	//상품 등록
	void insertItem(ItemVO itemVO);
	
	//상품 카테고리 등록
	void insertCategory(String cateName);
	
	//상품 카테고리 삭제
	void deleteCategory(String cateCode);
	
}















