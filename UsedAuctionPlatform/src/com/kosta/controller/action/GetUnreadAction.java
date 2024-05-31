package com.kosta.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import com.kosta.controller.Action;
import com.kosta.controller.URLModel;
import com.kosta.service.ChatService;
import com.kosta.service.NotiService;

public class GetUnreadAction implements Action {

	@Override
	public URLModel execute(HttpServletRequest request) throws ServletException, IOException {
		
		String userId = (String)request.getSession().getAttribute("userId");
		
		ChatService chatService = new ChatService();
		int count = chatService.getUnreadChat(userId);
		request.setAttribute("count", count);
		request.setAttribute("noti", new NotiService().getNotiState(userId));
		
		return new URLModel("asynchronous_unread.jsp",false);
	}

}
