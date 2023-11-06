package com.spring.todoproject.user.service;

import org.springframework.stereotype.Service;

import com.spring.todoproject.user.dto.UserInsertInfoRequestDTO;
import com.spring.todoproject.user.mapper.IUserMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class UserService implements IUserService {

	private final IUserMapper mapper;
	
	@Override
	public void insertUserData(UserInsertInfoRequestDTO dto) {
		// TODO Auto-generated method stub
		mapper.insertUserData(dto);
	}

	@Override
	public void selectUserData(String userId) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteUserData() {
		// TODO Auto-generated method stub

	}

	@Override
	public void updateUserDate() {
		// TODO Auto-generated method stub

	}

}