package com.kosta.controller.page;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.kosta.controller.Action;
import com.kosta.controller.URLModel;
import com.kosta.model.dto.ChatBoxDTO;
import com.kosta.service.ChatListService;

public class ChatListUI implements Action {
	private final ChatListService chatListService;
	
	public ChatListUI(){
		chatListService = new ChatListService();
	}
	
	@Override
	public URLModel execute(HttpServletRequest request) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String userId = (String)session.getAttribute("userId");
		ArrayList<ChatBoxDTO> chatList = chatListService.getChatList(userId);
		request.setAttribute("chatList", chatList);
		
		return new URLModel("chatList.jsp", false);
	}

}
