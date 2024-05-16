package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import query.BidQuery;

public class BidDAO {
	private Connection conn;

	public BidDAO(Connection conn){
		this.conn = conn;
	}
	
	public int getMaxBid(int productSeq){
		int maxBid = 0;
		try(PreparedStatement pstmt = conn.prepareStatement(BidQuery.GET_MAX_BID);){
			pstmt.setInt(1, productSeq);
			try(ResultSet rs = pstmt.executeQuery();){
				if(rs.next()){
					maxBid = rs.getInt(1);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return maxBid;
	}
	
	public int getBidCount(int productSeq){
		int bidCount = 0;
		try(PreparedStatement pstmt = conn.prepareStatement(BidQuery.GET_BID_COUNT);){
			pstmt.setInt(1, productSeq);
			try(ResultSet rs = pstmt.executeQuery();){
				if(rs.next()){
					bidCount = rs.getInt(1);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return bidCount;
	}
	
	public boolean pointDeduction(int productSeq, String id, int price){
		boolean result = false;
		try(PreparedStatement pstmt = conn.prepareStatement(BidQuery.POINT_DEDUCTION);){
			pstmt.setInt(1, price);
			pstmt.setString(2, id);
			pstmt.setInt(3, productSeq);
			pstmt.setString(4, id);
			if(pstmt.executeUpdate() >= 1){
				result = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public boolean addBid(int productSeq, String id, int price){
		boolean result = false;
		try(PreparedStatement pstmt = conn.prepareStatement(BidQuery.ADD_BID);){
			pstmt.setInt(1, productSeq);
			pstmt.setString(2, id);
			pstmt.setInt(3, price);
			if(pstmt.executeUpdate() >= 1){
				result = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public boolean setPrdocutState(int productSeq){
		boolean result = false;
		try(PreparedStatement pstmt = conn.prepareStatement(BidQuery.SET_PRODUCT_STATE);){
			pstmt.setInt(1, productSeq);
			if(pstmt.executeUpdate() >= 1){
				result = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
}
