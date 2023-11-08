package com.spring.todoproject.mytodolist.service;

import java.util.List;

import com.spring.todoproject.mytodolist.dto.GetBoardResponseDTO;
import com.spring.todoproject.mytodolist.dto.GetUserResponseDTO;


public interface IMyTodoListService {
	
	// 로그인 정보 -> userId값을 받아서 닉네임이랑 프로필 컬러
	List<GetUserResponseDTO> getUserInfo(String userId);
	
	// 페이지가 로드되면 유저의 글 목록을 불러온다.
	List<GetBoardResponseDTO> getTodoList(int page);
	
	//board 테이블에서 글번호, 내용, 등록일
	List<GetBoardResponseDTO> getFromBoard(String userId);
	
	//위에서 가져온 게시글이 받은 하트 개수
	int getLikeCount(int likeBno);
	
	
}
