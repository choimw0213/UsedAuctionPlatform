package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import controller.Action;
import controller.URLModel;
import service.LoginService;

public class LoginAction implements Action {
	
	private LoginService loginService = new LoginService();
	
	@Override
	public URLModel execute(HttpServletRequest request) throws ServletException, IOException {
		String userId = request.getParameter("userId");
		String userPw = request.getParameter("userPw");
		HttpSession session = request.getSession();
		
		int result = loginService.login(userId, userPw);
		
		if(result == 1){
			session.setAttribute("userId", userId);
			return new URLModel("mainUI.jsp", true);
		} else if(result == 2){
			session.setAttribute("userId", userId);
			return new URLModel("mainManager.jsp", true);
		}
		
		return new URLModel("login.jsp", true);
	}

}
