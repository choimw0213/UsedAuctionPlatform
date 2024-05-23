package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

import dto.ChatBoxDTO;
import query.ChatQuery;

public class ChatDAO {
	private Connection conn;
	
	public ChatDAO(Connection conn){
		this.conn = conn;
	}
	
	public ArrayList<ChatBoxDTO> getChatList(String userId){
		ArrayList<ChatBoxDTO> chatList = new ArrayList<ChatBoxDTO>();
		DateTimeFormatter formmatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
		
		try (PreparedStatement pstmt = conn.prepareStatement(ChatQuery.GET_CHAT_ROOM_LIST);){
			pstmt.setString(1, userId);
			pstmt.setString(2, userId);
			pstmt.setString(3, userId);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				ChatBoxDTO dto = new ChatBoxDTO(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), LocalDateTime.parse(rs.getString(6),formmatter), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11));		
				chatList.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return chatList;
	}
	
	
}
