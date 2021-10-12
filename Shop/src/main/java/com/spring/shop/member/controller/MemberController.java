package com.spring.shop.member.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.shop.member.service.MemberService;
import com.spring.shop.member.vo.MemberVO;

@Controller
@RequestMapping("/member")
public class MemberController {
	@Resource(name = "memberService")
	private MemberService memberService;
	
	//회원가입 페이지로 이동
	@GetMapping("/join")
	public String goJoin() {
		return "member/join";
	}

	//회원가입
	@PostMapping("/join")
	public String join(MemberVO memberVO) {
		memberService.join(memberVO);
		
		return "redirect:/item/itemList";
	}

	//로그인
	@PostMapping("/login")
	public String login(MemberVO memberVO, HttpSession session) {
		MemberVO loginInfo = memberService.login(memberVO);
		
		if(loginInfo != null) {
			session.setAttribute("loginInfo", loginInfo);
			
			if(loginInfo.getIsAdmin().equals("Y")) {
				return "redirect:/admin/categoryManage";
			}
			else {
				return "redirect:/item/itemList";
			}
		}
		
		return "redirect:/item/itemList";
	}
	
	//id 중복 체크
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("loginInfo");
		return "redirect:/item/itemList";
	}
	
	//id 중복 체크
	@ResponseBody
	@PostMapping("/checkId")
	public boolean checkId(String id) {
		//기가입 : true, 미가입 : false
		return memberService.isJoined(id);
	}
	
}





















