package com.spring.shop.common.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.shop.common.vo.MenuVO;
import com.spring.shop.common.vo.SideMenuVO;

@Service("commonService")
public class CommonServiceImpl implements CommonService{
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public List<MenuVO> selectMenuList() {
		return sqlSession.selectList("commonMapper.selectMenuList");
	}

	@Override
	public List<SideMenuVO> selectSideMenuList(String menuCode) {
		return sqlSession.selectList("commonMapper.selectSideMenuList", menuCode);
	}
	
	
}
















