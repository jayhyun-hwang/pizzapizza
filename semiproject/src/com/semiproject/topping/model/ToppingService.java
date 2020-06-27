package com.semiproject.topping.model;

import java.sql.SQLException;
import java.util.List;

public class ToppingService {
	ToppingDAO toppingDao = new ToppingDAO();
	
	public List<ToppingVO> showMenu() throws SQLException{
		return toppingDao.showMenu();
	}
	
}
