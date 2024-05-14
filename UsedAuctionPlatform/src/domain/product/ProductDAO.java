package domain.product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import domain.product.dto.ProductBoxDTO;

public class ProductDAO {
	private Connection conn;
	
	public ProductDAO(Connection conn){
		this.conn = conn;
	}
	
	// 물품 정보
	public ProductVO getProduct(int productSeq){
		ProductVO vo = null;
		return null;
	}
	
	// 물품 이미지
	public ArrayList<String> getProductImage(int productSeq){
		ArrayList list = null;
		
		return list;
	}
	
	//상품 이미지 등록
	public boolean addProductImage(int productSeq, String productImage){
		
		return false;
	}
	
	// 상품 등록
	public boolean addProduct(ProductVO vo){
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(ProductQuery.ADD_PRODUCT);
			pstmt.setString(1, vo.getUserId());
			pstmt.setString(2, vo.getTitle());
			pstmt.setString(3, vo.getCategory());
			pstmt.setString(4, vo.getAddress());
			pstmt.setInt(5, vo.getEndDate());
			pstmt.setInt(6, vo.getPrice());
			pstmt.setInt(7, vo.getStartPrice());
			pstmt.setString(8, vo.getContent());
			
			return pstmt.executeUpdate() == 1;
			
		} catch (SQLException e) {e.printStackTrace();}
		
		return false;
	}
	
	
	// 등록순 목록 조회(default)
	public ArrayList<ProductBoxDTO> getList(){
		
		ArrayList list = null;
		
		return list;
	}
	
	
	/* 구매&판매 내역*/
	
	// 판매 중 내역 조회
	public ArrayList<ProductBoxDTO> getSellingHistory(String id){
		ArrayList list = null;
		
		return list;
	}
	
	// 거래 완료 내역 조회
	public ArrayList<ProductBoxDTO> getSellCompleteHistory(String id){
		ArrayList list = null;
		
		return list;
	}
	
	// 구매 전체 내역 조회
	public ArrayList<ProductBoxDTO> getBuyingHistory(String id){
		ArrayList list = null;
		
		return list;
	}
	
	// 구매 확정
	public boolean setProductState(int productSeq){
		return false;
	}
	
	
	/* 메인 리스트 */
	
	// 카테고리별 목록 조회
	public ArrayList<ProductBoxDTO> getListByCategory(String category){
		
		ArrayList list = null;
		
		return list;
	}
	
	// 지역별 목록 조회
	public ArrayList<ProductBoxDTO> getListByRegion(String region){
		ArrayList list = null;
		
		return list;
	}
	
	
	// 입찰건순 목록 조회
	public ArrayList<ProductBoxDTO> getListByBidCount(){
		ArrayList list = null;
		
		return list;
		
	}
	
	// 마감 임박순 목록조회
	public ArrayList<ProductBoxDTO> getListByEndDate(){
		ArrayList list = null;
		
		return list;
	}
	
	// 검색 상품 목록 조회
	public ArrayList<ProductVO> getListBySearch(String searchKeyWord){
		ArrayList list = null;
		
		return list;
	}
	
}
