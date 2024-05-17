package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import controller.Action;

public class AddChatAction implements Action {

	@Override
	public String execute(HttpServletRequest request) throws ServletException, IOException {
		
		String chatContent = request.getParameter("chatContent");
		System.out.println(chatContent);
		
		return null;
	}

}
