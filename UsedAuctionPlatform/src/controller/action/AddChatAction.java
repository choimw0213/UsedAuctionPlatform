package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import controller.Action;
import controller.URLModel;

public class AddChatAction implements Action {

	@Override
	public URLModel execute(HttpServletRequest request) throws ServletException, IOException {
		
		String chatContent = request.getParameter("chatContent");
		System.out.println(chatContent);
		
		return new URLModel("chat.jsp");
	}

}
