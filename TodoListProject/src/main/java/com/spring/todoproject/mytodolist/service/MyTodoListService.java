package com.spring.todoproject.mytodolist.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.todoproject.mytodolist.dto.GetBoardResponseDTO;
import com.spring.todoproject.mytodolist.dto.GetUserResponseDTO;
import com.spring.todoproject.mytodolist.mapper.IMyTodoListMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MyTodoListService implements IMyTodoListService {

	@Autowired
	private final IMyTodoListMapper mapper;

	@Override
	public List<GetUserResponseDTO> getUserInfo(String userId) {

		
		//		for(GetBoardResponseDTO board : list) {
		//			dtolist.add(new GetUserResponseDTO());
		//		}
		//		mapper.getUserInfo(userId);

		return null;
	}

	@Override
	public List<GetBoardResponseDTO> getTodoList(int page) {
		return null;
	}
	
	/*
	public List<SnsBoardResponseDTO> getList(int page) {

		List<SnsBoardResponseDTO> dtoList = new ArrayList<>();

		List<SnsBoard> list = mapper.getList(Page.builder()
				.pageNo(page)
				.amount(3)
				.build());
		for(SnsBoard board : list) {
			dtoList.add(new SnsBoardResponseDTO(board));
		}

		return dtoList;
	}
	*/

	@Override
	public List<GetBoardResponseDTO> getFromBoard(String userId) {

		List<GetBoardResponseDTO> dtolist = new ArrayList<>();

		List<GetBoardResponseDTO> list = mapper.getFromBoard(userId);

		return list;
	}

	@Override
	public int getLikeCount(int likeBno) {
		return 0;
	}


}
