package com.spring.shop.admin.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.shop.common.service.CommonService;
import com.spring.shop.item.service.ItemService;
import com.spring.shop.item.vo.ItemVO;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Resource(name = "itemService")
	private ItemService itemService;
	
	@Resource(name = "commonService")
	private CommonService commonService;
	
	//카테고리 관리 페이지로 이동
	@GetMapping("/categoryManage")
	public String goCategoryManage(Model model) {
		//선택한 사이드 메뉴를 지정하기 위한 데이터
		model.addAttribute("sidePage", "categoryManage");
		
		//카테고리 목록조회 후 jsp로 전달
		model.addAttribute("categoryList", itemService.selectCategoryList());

		//메뉴 목록조회 후 jsp로 전달
		model.addAttribute("menuList", commonService.selectMenuList());
		
		//사이드 메뉴 목록 조회
		model.addAttribute("sideMenuList", commonService.selectSideMenuList("MENU_001"));
		
		return "admin/category_manage";
	}

	//상품 등록 페이지로 이동
	@GetMapping("/regItem")
	public String goRegItem(Model model) {
		//선택한 사이드 메뉴를 지정하기 위한 데이터
		model.addAttribute("sidePage", "regItem");
		
		//카테고리 목록조회 후 jsp로 전달
		model.addAttribute("categoryList", itemService.selectCategoryList());
		
		//메뉴 목록조회 후 jsp로 전달
		model.addAttribute("menuList", commonService.selectMenuList());
		
		//사이드 메뉴 목록조회 후 jsp로 전달
		model.addAttribute("sideMenuList", commonService.selectSideMenuList("MENU_001"));
		
		return "admin/reg_item";
	}

	//상품 등록
	@PostMapping("/regItem")
	public String regItem(Model model, ItemVO itemVO) {
		itemService.insertItem(itemVO);
		return "redirect:/admin/regItem";
	}

	//상품 카테고리 등록
	@PostMapping("/insertCategory")
	public String insertCategory(String cateName) {
		itemService.insertCategory(cateName);
		return "redirect:/admin/categoryManage";
	}

	//상품 카테고리 삭제
	@PostMapping("/deleteCategory")
	public String deleteCategory(String cateCode) {
		itemService.deleteCategory(cateCode);
		return "redirect:/admin/categoryManage";
	}

	//회원 목록 조회 페이지로 이동
	@GetMapping("/selectMemberList")
	public String selectMemberList(Model model) {
		//선택한 사이드 메뉴를 지정하기 위한 데이터
		model.addAttribute("sidePage", "selectMemberList");
		
		//메뉴 목록조회 후 jsp로 전달
		model.addAttribute("menuList", commonService.selectMenuList());
		
		//사이드 메뉴 목록 조회
		model.addAttribute("sideMenuList", commonService.selectSideMenuList("MENU_002"));
		
		return "admin/member_list";
	}
	
	
	
	
}











