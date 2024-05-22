package service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import dao.BidDAO;
import dao.ProductDAO;
import dao.UserDAO;
import dto.ProductBoxDTO;
import vo.ProductVO;

public class ProductService {
	private DataSource dataSource;

	public ProductService(){
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/myoracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public boolean addProduct(String user_id, String fileName, String title, String category, String region, String bid_date,
			String price, String startPrice, String content){
		Connection conn = null;
		//		if(category.equals("카테고리") || category == null){
		//			return false;
		//		}
		boolean result = false;
		int productSeq = 0;
		try {
			conn = dataSource.getConnection();
			ProductDAO pDAO = new ProductDAO(conn);
			ProductVO vo = new ProductVO(0, user_id, title, category, "서울특별시 " + region, null, null, Integer.parseInt(bid_date), Integer.parseInt(price), Integer.parseInt(startPrice), content, "s");

			conn.setAutoCommit(false);

			productSeq = pDAO.addProduct(vo);
			if(productSeq >= 1){
				result = pDAO.addProductImage(productSeq, fileName);
				if(result){
					BidDAO bDAO = new BidDAO(conn);
					result = bDAO.addBid(productSeq, user_id, Integer.parseInt(startPrice));
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

	public ProductBoxDTO getProduct(int productSeq) {
		Connection conn = null;
		ProductBoxDTO dto = null;

		try {
			conn = dataSource.getConnection();
			dto = new ProductDAO(conn).getProductBox(productSeq);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			if(conn != null){
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return dto;
	}
	
	public boolean addBid(int productSeq, String id, int price){
		Connection conn = null;
		boolean result = false;
		try {
			conn = dataSource.getConnection();
			BidDAO dao = new BidDAO(conn);
			conn.setAutoCommit(false);
			result = dao.addBid(productSeq, id, price);
			if(result){
				result = dao.pointDeduction(productSeq, id, price);
			}
			conn.commit();
		} catch (SQLException e) {
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
