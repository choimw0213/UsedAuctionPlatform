package com.kosta.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import com.kosta.controller.Action;
import com.kosta.controller.URLModel;
import com.kosta.service.ChatService;

public class GetChatAction implements Action {

	@Override
	public URLModel execute(HttpServletRequest request) throws ServletException, IOException {

		int productSeq = Integer.parseInt(request.getParameter("productSeq"));
		String fromId = (String)request.getParameter("fromId");
		String toId = (String)request.getParameter("toId");
		
		//System.out.println(productSeq);
		//System.out.println(fromId);
		//System.out.println(toId);
		
		ChatService chatService = new ChatService();
		request.setAttribute("chat", chatService.getChat(productSeq, fromId, toId));
		chatService.readChat(productSeq, fromId, toId);
		
		return new URLModel("asynchronous_chat.jsp",false);
	}

}
