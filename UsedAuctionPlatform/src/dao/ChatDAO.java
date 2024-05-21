package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

import query.ChatQuery;
import vo.ChatVO;

public class ChatDAO {
	private Connection conn;
	
	public ChatDAO(Connection conn){
		this.conn = conn;
	}
	
	public ArrayList<ChatVO> getChatList(String userId){
		ArrayList<ChatVO> chatList = new ArrayList<ChatVO>();
		DateTimeFormatter formmatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
		
		try (PreparedStatement pstmt = conn.prepareStatement(ChatQuery.GET_CHAT_ROOM_LIST);){
			pstmt.setString(1, userId);
			pstmt.setString(2, userId);
			pstmt.setString(3, userId);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				ChatVO vo = new ChatVO(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), LocalDateTime.parse(rs.getString(6),formmatter), rs.getString(7));
				chatList.add(vo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return chatList;
	}
	
	
}
