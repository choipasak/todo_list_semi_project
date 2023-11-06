package com.spring.todoproject.user.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter
@ToString @EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class UserInsertInfoRequestDTO {
	
	private String userId;
	private String userPw;
	private String name;
	private String nickName;
	private String email1;
	private String email2;
	
}