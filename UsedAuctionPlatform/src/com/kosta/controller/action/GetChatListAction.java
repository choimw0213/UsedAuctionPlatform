package com.kosta.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import com.kosta.controller.Action;
import com.kosta.controller.URLModel;
import com.kosta.model.dto.ChatBoxDTO;
import com.kosta.service.ChatListService;

public class GetChatListAction implements Action {

	@Override
	public URLModel execute(HttpServletRequest request) throws ServletException, IOException {

		String userId = (String)request.getSession().getAttribute("userId");
		//System.out.println(userId);
		
		ArrayList<ChatBoxDTO> chatList = new ChatListService().getChatList(userId);
		request.setAttribute("chatList", chatList);
		
		return new URLModel("asynchronous_chatList.jsp",false);
	}

}
