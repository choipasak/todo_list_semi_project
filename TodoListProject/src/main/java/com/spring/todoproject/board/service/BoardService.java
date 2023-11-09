package com.spring.todoproject.board.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.todoproject.board.dto.BoardRequestDTO;
import com.spring.todoproject.board.dto.BoareListRequestDTO;
import com.spring.todoproject.board.dto.page.Page;
import com.spring.todoproject.board.mapper.IBoardMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.java.Log;
import lombok.extern.slf4j.Slf4j;

@Service
@RequiredArgsConstructor
@Slf4j
public class BoardService  implements IBoardService{
	
	@Autowired
	private final IBoardMapper mapper;

	@Override
	public void boardRegist(BoardRequestDTO dto) {
		mapper.boardRegist(dto.toEntity(dto));
		
	}

//	@Override
//	public List<BoareListRequestDTO> getList(int page, int selectNum , String userId) {
//
//		List<BoareListRequestDTO> dtolist = new ArrayList<>();
//		if(selectNum == 1 ) {
//			dtolist = mapper.boardListBest(
//					(Page.builder().pageNo(page).amount(3).build())
//					, userId);
//			return dtolist;
//					
//		} else {
//			dtolist = mapper.boardListNew(
//					(Page.builder().pageNo(page).amount(3).build())
//					, userId);
//			return dtolist;
//		}
//	}
	@Override
	public List<BoareListRequestDTO> getList(Map<String, String> params) {
		
		
		String page = params.get("page");
		int pageNumber;
		try {
		    pageNumber = Integer.parseInt(page);
		} catch (NumberFormatException e) {
		    // 문자열이 유효한 정수가 아닌 경우 예외 처리
		    pageNumber = 0; // 또는 기본값 또는 다른 오류 처리 로직을 수행
		}
		
		String selectNum = params.get("selectNum");
		int selNum;
		try {
			selNum = Integer.parseInt(selectNum);
		} catch (NumberFormatException e) {
		    // 문자열이 유효한 정수가 아닌 경우 예외 처리
			selNum = 1; // 또는 기본값 또는 다른 오류 처리 로직을 수행
		}
		
		String userId = params.get("userId");
		System.out.println("/getList: params: " + pageNumber + " : " + selNum + " : " +userId);
		
		List<BoareListRequestDTO> dtolist = new ArrayList<>();
		if(selNum == 2 ) {
			
			dtolist = mapper.boardListBest
					(Page.builder()
							.pageNo(pageNumber)
							.amount(5)
							.build()
					, userId);
		
			return dtolist;
					
		} else {
			dtolist = mapper.boardListNew
					(Page.builder()
							.pageNo(pageNumber)
							.amount(5)
							.build()
					, userId);
			return dtolist;
		}
		
	}

	@Override
	public String getNickName(String userId) {	
		return mapper.getNickName(userId);
	}
	
	
}
