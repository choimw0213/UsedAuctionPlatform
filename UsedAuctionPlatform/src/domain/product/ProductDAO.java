package domain.product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
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
		DateTimeFormatter formmatter = null;

		try (PreparedStatement pstmt = conn.prepareStatement(ProductQuery.GET_PRODUCT)){
			pstmt.setInt(1, productSeq);
			try(ResultSet rs = pstmt.executeQuery()){
				if(rs.next())
					 
					formmatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
			
					vo = new ProductVO(productSeq, rs.getString("user_id"), rs.getString("title"), rs.getString("category"),
							rs.getString("address"), LocalDateTime.parse(rs.getString("end_date"),formmatter),
							LocalDateTime.parse(rs.getString("start_date"),formmatter), 0, rs.getInt("price"), 
							rs.getInt("start_price"), rs.getString("content"), rs.getString("state"));
					
			}
		}catch (Exception e) {e.printStackTrace();}
		
		return vo;
	}
	
	public ProductBoxDTO getProductBox(int productSeq){
		ProductBoxDTO dto = null;
		DateTimeFormatter formmatter = null;
		
		try(PreparedStatement pstmt = conn.prepareStatement(ProductQuery.GET_PRODUCTBOX)){
			pstmt.setInt(1, productSeq);	
			try(ResultSet rs = pstmt.executeQuery()){
				formmatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
				
				if(rs.next()){
					dto = new ProductBoxDTO(rs.getInt("img_seq"), rs.getInt("product_seq"), rs.getString("title"),
							rs.getString("category"), rs.getInt("start_price"), rs.getInt("price"), rs.getString("address"),
							LocalDateTime.parse(rs.getString("end_date"),formmatter), rs.getString("state"),
							rs.getInt("count(bid_price)-1"), rs.getInt("max(bid_price)"));
				}
			}
		} catch (SQLException e) {e.printStackTrace();}
		
		return dto;
	}
	
	// 물품 이미지
	public ArrayList<String> getProductImage(int productSeq){
		ArrayList<String> list = new ArrayList<>();
		
		try (PreparedStatement pstmt = conn.prepareStatement(ProductQuery.GET_IMAGE)){
			pstmt.setInt(1, productSeq);
			try(ResultSet rs = pstmt.executeQuery()){
				while(rs.next()){
					list.add(rs.getString("product_img"));
				}
			}	
		} catch (SQLException e) {e.printStackTrace();}
		
		return list;
	}
	
	//상품 이미지 등록
	public boolean addProductImage(int productSeq, String productImage){
		
		try (PreparedStatement pstmt = conn.prepareStatement(ProductQuery.ADD_PRODUCT_IMG)){

			pstmt.setInt(1, productSeq);
			pstmt.setString(2, productImage);
			
			return pstmt.executeUpdate() == 1;
			
		} catch (SQLException e) {e.printStackTrace();}
		
		return false;
	}
	
	// 상품 등록
	public boolean addProduct(ProductVO vo){
		
		try (PreparedStatement pstmt = conn.prepareStatement(ProductQuery.ADD_PRODUCT)){
			pstmt.setString(1, vo.getUserId());
			pstmt.setString(2, vo.getTitle());
			pstmt.setString(3, vo.getCategory());
			pstmt.setString(4, vo.getAddress());
			pstmt.setInt(5, vo.getEndDateNum());
			pstmt.setInt(6, vo.getPrice());
			pstmt.setInt(7, vo.getStartPrice());
			pstmt.setString(8, vo.getContent());
			
			return pstmt.executeUpdate() == 1;
			
		} catch (SQLException e) {e.printStackTrace();}
		
		return false;
	}
	
	/* 구매&판매 내역*/
	
	// 판매 중 내역 조회
	public ArrayList<ProductBoxDTO> getSellingHistory(String id){	
		ArrayList<ProductBoxDTO> list = new ArrayList<>();	
		DateTimeFormatter formmatter = null;
		
		try(PreparedStatement pstmt = conn.prepareStatement(ProductQuery.GET_LIST_SALLING_HISTORY)){
			pstmt.setString(1, id);	
			try(ResultSet rs = pstmt.executeQuery()){
				formmatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
				
				while(rs.next()){
					ProductBoxDTO dto = new ProductBoxDTO(rs.getInt("img_seq"), rs.getInt("product_seq"), rs.getString("title"),
							rs.getString("category"), rs.getInt("start_price"), rs.getInt("price"), rs.getString("address"),
							LocalDateTime.parse(rs.getString("end_date"),formmatter), rs.getString("state"),
							rs.getInt("count(bid_price)-1"), rs.getInt("max(bid_price)"));
					list.add(dto);
				}
			}
		} catch (SQLException e) {e.printStackTrace();}
		
		return list;
	}
	
	// 거래 완료 내역 조회
	public ArrayList<ProductBoxDTO> getSellCompleteHistory(String id){
		ArrayList<ProductBoxDTO> list = new ArrayList<>();	
		DateTimeFormatter formmatter = null;
		
		try(PreparedStatement pstmt = conn.prepareStatement(ProductQuery.GET_LIST_COMPLETE_HISTORY)){
			pstmt.setString(1, id);	
			try(ResultSet rs = pstmt.executeQuery()){
				formmatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
				
				while(rs.next()){
					ProductBoxDTO dto = new ProductBoxDTO(rs.getInt("img_seq"), rs.getInt("product_seq"), rs.getString("title"),
							rs.getString("category"), rs.getInt("start_price"), rs.getInt("price"), rs.getString("address"),
							LocalDateTime.parse(rs.getString("end_date"),formmatter), rs.getString("state"), 
							rs.getInt("count(bid_price)-1"), rs.getInt("max(bid_price)"));
					list.add(dto);
				}
			}
		} catch (SQLException e) {e.printStackTrace();}
		
		return list;
	}
	
	// 구매 전체 내역 조회
	public ArrayList<ProductBoxDTO> getBuyingHistory(String id){
		ArrayList<ProductBoxDTO> list = new ArrayList<>();	
		DateTimeFormatter formmatter = null;
		
		try(PreparedStatement pstmt = conn.prepareStatement(ProductQuery.GET_LIST_BUYING_HISTORY)){
			pstmt.setString(1, id);	
			try(ResultSet rs = pstmt.executeQuery()){
				formmatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
				
				while(rs.next()){
					ProductBoxDTO dto = new ProductBoxDTO(rs.getInt("img_seq"), rs.getInt("product_seq"), rs.getString("title"),
							rs.getString("category"), rs.getInt("start_price"), rs.getInt("price"), rs.getString("address"),
							LocalDateTime.parse(rs.getString("end_date"),formmatter), rs.getString("state"), rs.getInt("count(bid_price)-1"),
							rs.getInt("max(bid_price)"));
					list.add(dto);
				}
			}
		} catch (SQLException e) {e.printStackTrace();}
		
		return list;
	}
	
	// 구매 확정
	public boolean setProductState(int productSeq){
		return false;
	}
	
	
	/* 메인 리스트 */
	
	// 등록순 목록 조회(default)
	public ArrayList<ProductBoxDTO> getList(){
		ArrayList<ProductBoxDTO> list = new ArrayList<>();	
		DateTimeFormatter formmatter = null;
		
		try (Statement stmt = conn.createStatement()){
			try(ResultSet rs = stmt.executeQuery(ProductQuery.GET_LIST)){
				formmatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
				while(rs.next()){
					ProductBoxDTO dto = new ProductBoxDTO(rs.getInt("img_seq"), rs.getInt("product_seq"), rs.getString("title"),
							rs.getString("category"), rs.getInt("start_price"), rs.getInt("price"), rs.getString("address"),
							LocalDateTime.parse(rs.getString("end_date"),formmatter), rs.getString("state"), 
							rs.getInt("count(bid_price)-1"),rs.getInt("max(bid_price)"));
					list.add(dto);
				}	
			}
		} catch (SQLException e) {e.printStackTrace();}
		
		return list;
	}
	
	// 카테고리별 목록 조회
	public ArrayList<ProductBoxDTO> getListByCategory(String category){
		
		ArrayList<ProductBoxDTO> list = new ArrayList<>();	
		DateTimeFormatter formmatter = null;
		
		try(PreparedStatement pstmt = conn.prepareStatement(ProductQuery.GET_LIST_CATEGORY)){
			pstmt.setString(1, category);	
			try(ResultSet rs = pstmt.executeQuery()){
				formmatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
				
				while(rs.next()){
					ProductBoxDTO dto = new ProductBoxDTO(rs.getInt("img_seq"), rs.getInt("product_seq"), rs.getString("title"),
							rs.getString("category"), rs.getInt("start_price"), rs.getInt("price"), rs.getString("address"),
							LocalDateTime.parse(rs.getString("end_date"),formmatter), rs.getString("state"), 
							rs.getInt("count(bid_price)-1"), rs.getInt("max(bid_price)"));
					list.add(dto);
				}
			}
		} catch (SQLException e) {e.printStackTrace();}
		
		return list;
	}
	
	// 지역별 목록 조회
	public ArrayList<ProductBoxDTO> getListByRegion(String region){
		ArrayList<ProductBoxDTO> list = new ArrayList<>();	
		DateTimeFormatter formmatter = null;
		
		try(PreparedStatement pstmt = conn.prepareStatement(ProductQuery.GET_LIST_REGION)){
			pstmt.setString(1, "%"+region+"%");	
			
			try(ResultSet rs = pstmt.executeQuery()){
				formmatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
				
				while(rs.next()){
					ProductBoxDTO dto = new ProductBoxDTO(rs.getInt("img_seq"), rs.getInt("product_seq"), rs.getString("title"),
							rs.getString("category"), rs.getInt("start_price"), rs.getInt("price"), rs.getString("address"),
							LocalDateTime.parse(rs.getString("end_date"),formmatter), rs.getString("state"), 
							rs.getInt("count(bid_price)-1"), rs.getInt("max(bid_price)"));
					list.add(dto);
				}
			}
		} catch (SQLException e) {e.printStackTrace();}
		
		return list;
	}
	
	
	// 입찰건순 목록 조회
	public ArrayList<ProductBoxDTO> getListByBidCount(){
		ArrayList<ProductBoxDTO> list = new ArrayList<>();	
		DateTimeFormatter formmatter = null;
		
		try (Statement stmt = conn.createStatement()){
			try(ResultSet rs = stmt.executeQuery(ProductQuery.GET_LIST_BIDCOUNT)){
				formmatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
				while(rs.next()){
					ProductBoxDTO dto = new ProductBoxDTO(rs.getInt("img_seq"), rs.getInt("product_seq"), rs.getString("title"),
							rs.getString("category"), rs.getInt("start_price"), rs.getInt("price"), rs.getString("address"),
							LocalDateTime.parse(rs.getString("end_date"),formmatter), rs.getString("state"),
							rs.getInt("count(bid_price)-1"), rs.getInt("max(bid_price)"));
					list.add(dto);
				}	
			}
		} catch (SQLException e) {e.printStackTrace();}
		
		return list;
		
	}
	
	// 마감 임박순 목록조회
	public ArrayList<ProductBoxDTO> getListByEndDate(){
		ArrayList<ProductBoxDTO> list = new ArrayList<>();	
		DateTimeFormatter formmatter = null;
		
		try (Statement stmt = conn.createStatement()){
			try(ResultSet rs = stmt.executeQuery(ProductQuery.GET_LIST_ENDDATE)){
				formmatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
				while(rs.next()){
					ProductBoxDTO dto = new ProductBoxDTO(rs.getInt("img_seq"), rs.getInt("product_seq"), rs.getString("title"),
							rs.getString("category"), rs.getInt("start_price"), rs.getInt("price"), rs.getString("address"),
							LocalDateTime.parse(rs.getString("end_date"),formmatter), rs.getString("state"), 
							rs.getInt("count(bid_price)-1"), rs.getInt("max(bid_price)"));
					list.add(dto);
				}	
			}
		} catch (SQLException e) {e.printStackTrace();}
		
		return list;
	}
	
	// 검색 상품 목록 조회
	public ArrayList<ProductBoxDTO> getListBySearch(String searchKeyWord){
		ArrayList<ProductBoxDTO> list = new ArrayList<>();	
		DateTimeFormatter formmatter = null;
		
		try(PreparedStatement pstmt = conn.prepareStatement(ProductQuery.GET_LIST_SEARCH)){
			pstmt.setString(1, "%"+searchKeyWord+"%");	
			pstmt.setString(2, "%"+searchKeyWord+"%");	
			
			try(ResultSet rs = pstmt.executeQuery()){
				formmatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
				
				while(rs.next()){
					ProductBoxDTO dto = new ProductBoxDTO(rs.getInt("img_seq"), rs.getInt("product_seq"), rs.getString("title"),
							rs.getString("category"), rs.getInt("start_price"), rs.getInt("price"), rs.getString("address"),
							LocalDateTime.parse(rs.getString("end_date"),formmatter), rs.getString("state"), 
							rs.getInt("count(bid_price)-1"), rs.getInt("max(bid_price)"));
					list.add(dto);
				}
			}
		} catch (SQLException e) {e.printStackTrace();}
		
		return list;
	}
	
}
