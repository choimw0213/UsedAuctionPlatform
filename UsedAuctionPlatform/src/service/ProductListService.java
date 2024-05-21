package service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import dao.ProductDAO;
import dto.ProductBoxDTO;

public class ProductListService {
	private DataSource dataSource;
	private Connection conn;
	
	public ProductListService(){
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/myoracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<ProductBoxDTO> getList(String address){
		ArrayList<ProductBoxDTO> list = new ArrayList<>();
		try {
			conn = dataSource.getConnection();
			list = new ProductDAO(conn).getList(address);
			
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
	
	public ArrayList<ProductBoxDTO> getListByCategory(String address, String category){
		ArrayList<ProductBoxDTO> list = new ArrayList<>();
		try {
			conn = dataSource.getConnection();
			list = new ProductDAO(conn).getListByCategory(category, address);
			
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
