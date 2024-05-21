package service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import vo.ChatVO;

public class ChatListService {
	
	private DataSource dataSource;

	public ChatListService(){
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/myoracle");
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public ArrayList<ChatVO> getChatList(String userId){
		
		ArrayList<ChatVO> chatList = new ArrayList<ChatVO>();
		
		try {
			Connection conn = dataSource.getConnection();
			//chatList = new ChatDAO(conn).getChatList(userId);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return chatList;
	}

}
