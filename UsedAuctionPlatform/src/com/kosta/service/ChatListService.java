package com.kosta.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.kosta.model.dao.ChatDAO;
import com.kosta.model.dto.ChatBoxDTO;

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

	public ArrayList<ChatBoxDTO> getChatList(String userId){
		ArrayList<ChatBoxDTO> chatList = new ArrayList<ChatBoxDTO>();
		
		try (Connection conn = dataSource.getConnection();){
			chatList = new ChatDAO(conn).getChatList(userId);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return chatList;
	}

}
