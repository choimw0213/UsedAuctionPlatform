package service;

import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import dao.ProductDAO;
import vo.ProductVO;

public class AddProductService {
	private DataSource dataSource;
	
	public AddProductService(){
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/myoracle");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	public boolean addProduct(String fileName, String title, String category, String region, String bid_date,
			String price, String bid_price, String content){
		boolean result = false;
		try {
			ProductDAO dao = new ProductDAO(dataSource.getConnection());
			//ProductVO vo = new ProductVO();
			//result = dao.addProduct(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
}
