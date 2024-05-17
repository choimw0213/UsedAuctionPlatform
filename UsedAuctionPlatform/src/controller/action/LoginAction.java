package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import controller.Action;
import service.LoginService;

public class LoginAction implements Action {
	private final LoginService loginService;
	
	public LoginAction(){
		loginService = new LoginService();
	}

	@Override
	public String execute(HttpServletRequest request) throws ServletException, IOException {

		String userId = request.getParameter("userId");
		String userPw = request.getParameter("userPw");
		
		System.out.println(userId + " " + userPw);
		
		//loginService.login();
		
		
		return null;
	}

}
