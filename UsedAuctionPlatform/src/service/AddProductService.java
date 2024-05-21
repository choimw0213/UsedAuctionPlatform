package service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import dao.BidDAO;
import dao.ProductDAO;
import vo.ProductVO;

public class AddProductService {
	private DataSource dataSource;
	private Connection conn;
	
	public AddProductService(){
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/myoracle");
			conn = dataSource.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public boolean addProduct(String user_id, String fileName, String title, String category, String region, String bid_date,
			String price, String bid_price, String content){
		//		if(category.equals("카테고리") || category == null){
		//			return false;
		//		}
		boolean result = false;
		int productSeq = 0;
		try {
			ProductDAO pDAO = new ProductDAO(conn);
			ProductVO vo = new ProductVO(0, user_id, title, category, "서울특별시 " + region, null, null, Integer.parseInt(bid_date), Integer.parseInt(price), Integer.parseInt(bid_price), content, "s");

			conn.setAutoCommit(false);

			productSeq = pDAO.addProduct(vo);
			if(productSeq >= 1){
				result = pDAO.addProductImage(productSeq, fileName);
				if(result){
					BidDAO bDAO = new BidDAO(conn);
					result = bDAO.addBid(productSeq, user_id, 0);
				} 
			}
			conn.commit();
		} catch (Exception e) {
			if(conn != null){
				try {
					conn.rollback();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}
			e.printStackTrace();
		}finally{
			if(conn != null){
				try {
					conn.setAutoCommit(true);
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return result;
	}
}
