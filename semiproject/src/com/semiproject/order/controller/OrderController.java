package com.semiproject.order.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.semiproject.controller.Controller;
import com.semiproject.topping.model.ToppingService;
import com.semiproject.topping.model.ToppingVO;

public class OrderController implements Controller{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		//회원정보 받아오기
		
		ToppingService toppingServ = new ToppingService();
		
		List<ToppingVO> tlist = null;
		
		try {
			tlist=toppingServ.showMenu();
		}catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}

	@Override
	public boolean isRedirect() {
		return false;
	}
	
}
