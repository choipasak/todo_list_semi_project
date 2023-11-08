package com.spring.todoproject.mytodolist.dto;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.ToString;

@Getter
@ToString @EqualsAndHashCode
public class GetBoardResponseDTO {
	
	private String boardRegdate;
	private String content;
	
	public GetBoardResponseDTO(String boardRegdate, String content) {
		this.boardRegdate = boardRegdate;
		this.content = content;
	}

	static String makePrettierDateString(LocalDateTime regDate) {
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		return dtf.format(regDate);
	}


}
