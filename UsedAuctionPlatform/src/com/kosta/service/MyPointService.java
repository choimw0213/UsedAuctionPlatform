package com.kosta.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.kosta.model.dao.UserDAO;

public class MyPointService {
	private DataSource dataSource;
	private UserDAO dao;
	
	public MyPointService(){
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/myoracle");
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public boolean setPoint(String id, int point){
		boolean result = false;
		Connection conn = null;
		try {
			conn = dataSource.getConnection();
			conn.setAutoCommit(false);
			result = new UserDAO(conn).setPoint(id, point);
			if(result){
				conn.commit();
				
			}

		} catch (SQLException e) {
			// TODO: handle exception
			if(conn != null){
				try {
					conn.rollback();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}
			e.printStackTrace();
		}
		finally{
			if(conn != null){
				try {
					conn.setAutoCommit(true);
					conn.close();
				} catch (Exception e2) {
					// TODO: handle exception
					e2.printStackTrace();
				}
			}
		}

		return result;
	}
	
}
