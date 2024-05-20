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
	
	public boolean addProduct(String user_id, String fileName, String title, String category, String region, String bid_date,
			String price, String bid_price, String content){
		boolean result = false;
		try {
			ProductDAO dao = new ProductDAO(dataSource.getConnection());
			ProductVO vo = new ProductVO(0, user_id, title, category, region, null, null, Integer.parseInt(bid_date), Integer.parseInt(price), Integer.parseInt(bid_price), content, "s");
			result = dao.addProduct(vo);
			
//			if(result){
//				result = dao.addProductImage(productSeq, fileName);
//			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
}
