package com.spring.todoproject.user.mapper;

import com.spring.todoproject.user.dto.UserInsertInfoRequestDTO;

public interface IUserMapper {
	
	//회원 가입
	void insertUserData(UserInsertInfoRequestDTO dto);
	
	//회원 정보 가져오기!
	void selectUserData(String userId);
	
	//회원 정보 삭제
	void deleteUserData();
	
	//회원 정보 수정
	void updateUserDate();
	
}