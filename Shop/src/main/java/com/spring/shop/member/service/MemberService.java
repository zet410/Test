package com.spring.shop.member.service;

import com.spring.shop.member.vo.MemberVO;

public interface MemberService {
	//회원가입
	void join(MemberVO memberVO);
	
	//로그인
	MemberVO login(MemberVO memberVO);
	
	//id 체크
	boolean isJoined(String id);
	
}














