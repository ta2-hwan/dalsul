package com.dalsul.user.pay.vo;

import lombok.Data;

@Data
public class PayVO {
	private int	order_no;  //주문번호 시퀀스
	private int user_no;  //회원 일련번호 시퀀스
	//private int order_use_point;  //사용적립금
	private int order_dlv_fee; //배송비
	private int order_total_price;  //총 상품금액
	//private int order_set_point;  //결제 적립금
	private int order_use_coupon; //사용쿠폰
	private String order_delivery_info; //배송지
	private String order_status; //주문상태
	private String order_date; //주문일자
	private String order_update_date; //주문수정일자
}
