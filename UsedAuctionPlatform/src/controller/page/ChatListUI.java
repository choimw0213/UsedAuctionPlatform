package controller.page;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import controller.Action;
import controller.URLModel;
import service.ChatListService;

public class ChatListUI implements Action {
	private final ChatListService chatListService;
	
	public ChatListUI(){
		chatListService = new ChatListService();
	}
	
	@Override
	public URLModel execute(HttpServletRequest request) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String userId = (String)session.getAttribute("userId");
		
		
		return new URLModel("chatList.jsp", true);
	}

}
