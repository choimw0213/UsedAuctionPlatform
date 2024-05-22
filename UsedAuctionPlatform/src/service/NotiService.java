package service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import dao.NotiDAO;
import dao.ProductDAO;
import dto.NotiBoxDTO;
import dto.ProductBoxDTO;

public class NotiService {
	private DataSource dataSource;
	private Connection conn;
	
	public NotiService(){
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/myoracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<NotiBoxDTO> getNotiList(String id){
		ArrayList<NotiBoxDTO> list = new ArrayList<>();
		try {
			conn = dataSource.getConnection();
			list = new NotiDAO(conn).getNotiList(id);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(conn!=null){
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return list;
	}
}
