package com.spring.todoproject.user.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.todoproject.user.dto.UserInsertInfoRequestDTO;
import com.spring.todoproject.user.service.IUserService;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/todok")
@RequiredArgsConstructor
public class UserController {
	
	@Autowired
	private final IUserService service;
	
	// @RequestMapping(value = "/test1", method = RequestMethod.GET)
	@GetMapping("/test1")
	public String insertUserDate(HttpServletRequest request, Model model, UserInsertInfoRequestDTO dto) {
		// service.insertUserData();
		
		String id = request.getParameter("userId");
		String pw = request.getParameter("userPw");
		String name = request.getParameter("name");
		String nickName = request.getParameter("nickName");
		String email1= request.getParameter("email1");
		String email2 = request.getParameter("email2");
//		System.out.println("입력한 id값" + id);
		
		dto.setUserId(id);
		dto.setUserPw(pw);
		dto.setName(name);
		dto.setNickName(nickName);
		dto.setEmail1(email1);
		dto.setEmail2(email2);
		
		service.insertUserData(dto);
		
		return "todok/test1";
	}
	
	
}