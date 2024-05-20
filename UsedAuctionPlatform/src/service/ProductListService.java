package service;

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
	
	public ProductListService(){
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/myoracle");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<ProductBoxDTO> getList(String address){
		ArrayList<ProductBoxDTO> list = new ArrayList<>();
		
		try {
			list = new ProductDAO(dataSource.getConnection()).getList(address);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
}
