package com.spring.shop.item.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.shop.item.service.ItemService;

@Controller
@RequestMapping("/item")
public class ItemController {
	@Resource(name = "itemService")
	private ItemService itemService;
	
	//상품목록페이지로 이동
	@GetMapping("/itemList")
	public String selectItemList(Model model) {
		model.addAttribute("categoryList", itemService.selectCategoryList());
		return "item/item_list";
	}
	
}










