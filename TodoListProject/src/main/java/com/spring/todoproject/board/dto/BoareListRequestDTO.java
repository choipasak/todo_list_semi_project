package com.spring.todoproject.board.dto;

import java.time.LocalDateTime;



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

public class BoareListRequestDTO {
	
	//Board 전체 list 를 담는다.
	private int boardBno; 
	private String content;
	private LocalDateTime boardRegdate;
	private String userId; 
	private String profileColor;
	private int likeCount; //board_like count 
	private String likeFlag; // login id 가 좋아요 누른  flag
	
	
	

}
