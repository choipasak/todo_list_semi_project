package com.spring.todoproject.mytodolist.dto;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.ToString;

@Getter
@ToString @EqualsAndHashCode
public class GetUserResponseDTO {
	
	private String nickName;
	private String profileColor;

}
