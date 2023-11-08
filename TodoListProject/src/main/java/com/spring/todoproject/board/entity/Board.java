package com.spring.todoproject.board.entity;

import java.time.LocalDateTime;
import java.util.List;

import com.spring.todoproject.board.dto.BoareListRequestDTO;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/*
 CREATE TABLE board
(
	board_bno number NOT NULL,
	-- 모든 문자
	content varchar2(40) NOT NULL,
	-- 게시물 등록일자인데 시간도 표현해야함
	-- 
	board_regdate date DEFAULT SYSDATE NOT NULL,
	-- (영어 대,소)+ 숫자
	user_id varchar2(30) NOT NULL,
	PRIMARY KEY (board_bno)
);

 */

@Getter  @Setter @ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Board {

	
	private int boardBno;
	private String content;
	private LocalDateTime boardRegdate;
	private String userId;
	
	/*
    한 명의 회원은 글을 여러 개 작성할 수 있습니다.
    마이페이지에서는 특정 회원이 작성한 글 목록을 나타내야 합니다.
    회원 정보와 글 목록은 서로 다른 테이블로 이루어져 있고, 마이페이지 에서는
    해당 정보를 한 번의 DB 연동으로 가져올 수 있도록 하기 위해
    JOIN 문법으로 테이블을 합친 뒤 원하는 컬럼을 선택해서 가져올 예정입니다. 
    */
	
	//BOARD 에 있는 모든 자료.
	private List<Board> BoareList;
	
}
