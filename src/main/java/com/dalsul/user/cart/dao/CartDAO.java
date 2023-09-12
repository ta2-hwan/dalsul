package com.dalsul.user.cart.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.dalsul.user.cart.vo.CartVO;
@Mapper
public interface CartDAO {


	public int cartInsert(CartVO cvo);
	public int cartDelete(int product_id);
	public int cartPlus(CartVO cvo);
	public int cartMinus(CartVO cvo);
	public List<CartVO> cartList();

}