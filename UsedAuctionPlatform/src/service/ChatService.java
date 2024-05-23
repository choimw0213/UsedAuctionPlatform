package service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import dao.ChatDAO;
import vo.ChatVO;

public class ChatService {
	private DataSource dataSource;
	
	public ChatService(){
		Context context;
		try {
			context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/myoracle");
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public ArrayList<ChatVO> getChat(int productSeq, String fromId, String toId){
		ArrayList<ChatVO> chat = new ArrayList<ChatVO>();
		
		try (Connection conn = dataSource.getConnection();){
			chat = new ChatDAO(conn).getChat(productSeq, fromId, toId);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return chat;
	}
	
}
