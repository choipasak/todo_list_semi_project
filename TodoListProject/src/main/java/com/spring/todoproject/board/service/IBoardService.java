package com.spring.todoproject.board.service;

import java.util.List;
import java.util.Map;

import com.spring.todoproject.board.dto.BoardRequestDTO;
import com.spring.todoproject.board.dto.BoareListRequestDTO;


public interface IBoardService {
	void boardRegist(BoardRequestDTO dto); //board  등록

//	List<BoareListRequestDTO> getList(int page, int selectNum , String userId);

	List<BoareListRequestDTO> getList(Map<String, String> params);

	
}
