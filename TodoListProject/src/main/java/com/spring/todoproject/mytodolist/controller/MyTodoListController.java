package com.spring.todoproject.mytodolist.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.todoproject.mytodolist.dto.GetBoardResponseDTO;
import com.spring.todoproject.mytodolist.service.IMyTodoListService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/todok")
@RequiredArgsConstructor
@Slf4j
public class MyTodoListController {

	@Autowired
	private final IMyTodoListService service;
	

	@GetMapping("/mytodolist")
	public ModelAndView snsList(HttpSession session) {
		session.setAttribute("userId", "id12");
		String userId =  (String) session.getAttribute("userId");
		System.out.println("좀 떠주라" + userId);

		ModelAndView mv = new ModelAndView();
		//mv.addAllObjects("name", "value");
		mv.setViewName("todok/mytodolist");
		return mv; //ModelAndView를 호출하면 비동기방식컨트롤러 안에서 동기방식인 원래대로 작동시킬 수 있다.
	};
	
	// ResponseEntity<byte[]> result = null;
	
	
	@PostMapping("/mytodolist/getboard")
	@ResponseBody
	public List<GetBoardResponseDTO> getFromBoard(@RequestBody Map<String, Object> map){	
//		System.out.println("userId: " + userId);
		log.info("controller param: {}",  map);
		
		List<GetBoardResponseDTO> boardlist = service.getFromBoard((String)map.get("userId"));
		log.info("board내용: {}", boardlist);
		
		return boardlist;
	}
	
	@GetMapping("/{page}")
	public List<GetBoardResponseDTO> getBoards(@PathVariable int page, String userId) { //()생략 가능: 변수명=매개변수명
//		log.info("/snsboard/getList: GET!");
		return service.getFromBoard(userId);
	}
	
	
	
}
