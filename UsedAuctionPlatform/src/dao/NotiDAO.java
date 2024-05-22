package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Map;

import dto.NotiBoxDTO;
import dto.ProductBoxDTO;
import query.NotiQuery;
import query.ProductQuery;

public class NotiDAO {
	private Connection conn;

	public NotiDAO(Connection conn){
		this.conn = conn;
	}
	
	public boolean addNoti(String id, int bidSeq, boolean state){
		
		
		return false;
	}
	
	public Map<String, Integer> getNotiUserList(int productSeq){
		Map<String, Integer> list = null;
		
		
		return list;
	}
	
	public ArrayList<NotiBoxDTO> getNotiList(String id){
		ArrayList<NotiBoxDTO> list = new ArrayList<>();
		
		try(PreparedStatement pstmt = conn.prepareStatement(NotiQuery.GET_NOTI_LIST)){
			pstmt.setString(1, id);			
			try(ResultSet rs = pstmt.executeQuery()){
				while(rs.next()){
					NotiBoxDTO vo = new NotiBoxDTO(rs.getString("product_img"), rs.getString("title"),
							rs.getString("nickname"), rs.getString("category"), rs.getInt("bid_price"), 
							rs.getInt("bid_seq"), rs.getInt("product_seq"), rs.getString(11));
					list.add(vo);
				}
			}
		} catch (SQLException e) {e.printStackTrace();}
		
		return list;	
	}
}
