package com.spring.todoproject.board.dto;

import com.spring.todoproject.board.entity.Board;

import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter @ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
public class BoardRequestDTO {
	private String content;
	private String userId;
	
	
	
	public Board toEntity(BoardRequestDTO dto) {
		return Board.builder()
			.content(this.content)
			.userId(this.userId)
			.build();
			
	}
}
