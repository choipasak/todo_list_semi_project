package com.spring.todoproject.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.todoproject.board.dto.BoareListRequestDTO;
import com.spring.todoproject.board.dto.page.Page;
import com.spring.todoproject.board.entity.Board;

public interface IBoardMapper {
	
	
	void boardRegist(Board board); //board  등록
	
	// 최신순 보드 list + 좋아요 count
	List<BoareListRequestDTO> boardListNew(@Param("paging") Page page, @Param("userId") String userId);
	
	// 인기순 보드 list + 좋아요 count
	List<BoareListRequestDTO> boardListBest(@Param("paging") Page page, @Param("userId") String userId);

	// 아이디 값으로 닉네임 가져오기
	String getNickName(String userId);
	
}
