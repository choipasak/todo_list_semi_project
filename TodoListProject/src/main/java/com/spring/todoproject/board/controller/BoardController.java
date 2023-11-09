package com.spring.todoproject.board.controller;



import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.spring.todoproject.board.dto.BoardRequestDTO;
import com.spring.todoproject.board.dto.BoareListRequestDTO;
import com.spring.todoproject.board.service.IBoardService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@RestController //이걸 사용하려면 , ModelAndView 를 사용해야 화면이 보인다.
@RequestMapping("/board")
@RequiredArgsConstructor
@Slf4j
public class BoardController {
	
	@Autowired
	private final IBoardService service;
	
	//글쓰기 페이지를 열어주는 메서드
	@GetMapping("")
	public ModelAndView boardList() {		
		ModelAndView mv = new ModelAndView();		
		mv.setViewName("todok/board");
		return mv;
	}
	
	//글 등록 처리
	@PostMapping("/regist")
	public String regist(BoardRequestDTO dto) {
		log.info("!!!!!!!!!!!!!!! 요청 !!!!!!!!!!!!!!!");
		service.boardRegist(dto);
		return "insertSuccess";		
	}
	
	//보드에 등록된 글 모두 가져온다
	@PostMapping("/getList") 
	public List<BoareListRequestDTO> getList(@RequestBody Map<String,String> params) {
		System.out.println("reg date : " + service.getList(params));
		return service.getList(params);	
	}
	
	// 닉네임 가져오기
	@PostMapping("/getNickName/{userId}")
	public String getNickName(@PathVariable String userId) {
		log.info("userId: {}", userId);
		
		
		String nickname = service.getNickName(userId);
		
		log.info("nickname: {}", nickname);
		
		return nickname;
		
	}
		

}
