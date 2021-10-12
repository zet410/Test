package com.spring.shop.item.service;

import java.util.List;

import javax.print.attribute.standard.MediaSize.NA;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.shop.item.vo.CategoryVO;
import com.spring.shop.item.vo.ItemVO;

@Service("itemService")
public class ItemServiceImpl implements ItemService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<CategoryVO> selectCategoryList() {
		return sqlSession.selectList("itemMapper.selectCategoryList");
	}

	@Override
	public void insertItem(ItemVO itemVO) {
		sqlSession.insert("itemMapper.insertItem", itemVO);
	}

	@Override
	public void insertCategory(String cateName) {
		sqlSession.insert("itemMapper.insertCategory", cateName);
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public void deleteCategory(String cateCode) {
		sqlSession.delete("itemMapper.deleteItemByCateCode", cateCode);
		sqlSession.delete("itemMapper.deleteCategory", cateCode);
	}

}


















