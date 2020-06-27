package com.semiproject.topping.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class ToppingDAO {

	private com.semiproject.db.ConnectionPoolMgr pool;

	public ToppingDAO() {
		pool = new com.semiproject.db.ConnectionPoolMgr();
	}
	
	public List<ToppingVO> showMenu() throws SQLException{
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		List<ToppingVO> list = null;
		
		try {
			con=pool.getConnection();
			
			String sql="select * from topping";
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				ToppingVO vo = new ToppingVO();
				vo.setTopNo(rs.getInt("topNo"));
				vo.setFat(rs.getInt("fat"));
				vo.setFileName(rs.getString("filename"));
				vo.setFileSize(rs.getLong("filesize"));
				vo.setKcal(rs.getInt("kcal"));
				vo.setNa(rs.getInt("na"));
				vo.setOrigin(rs.getString("origin"));
				vo.setOriginalFileName(rs.getString("originalfilename"));
				vo.setPrice(rs.getInt("price"));
				vo.setProtein(rs.getInt("protein"));
				vo.setServePer(rs.getInt("setveper"));
				vo.setSugar(rs.getInt("sugar"));
				vo.setTopDesc(rs.getString("topdesc"));
				vo.setTopName(rs.getString("topname"));
				vo.setTopNo(rs.getInt("topno"));
				vo.setToptypeNo(rs.getInt("toptypeno"));
				
				list.add(vo);
			}
			System.out.println("토핑목록 결과 = "+list.size());
			
			return list;
		}finally {
			pool.dbClose(con, ps, rs);
		}
		
	}
}
