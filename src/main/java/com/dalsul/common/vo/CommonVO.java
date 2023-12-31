package com.dalsul.common.vo;

import lombok.Data;
//import lombok.Data;

@Data
public class CommonVO {
	private String search = "";
	private String keyword = "";
	
	
	// 페이징 처리를 위한 변수
	private int pageNum = 0; // 페이지 번호 
	private int amount = 10; // 페이지에 보여줄 데이터 
	
	// 날짜 검색시 사용할 필드 (시작일, 종료일)
	private String start_date = ""; 
	private String end_date = "";
	
	
	public CommonVO() {
		this(1, 10);
	}
	
	public CommonVO(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
}
