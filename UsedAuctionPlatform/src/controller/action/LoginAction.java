package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import controller.Action;
import controller.URLModel;
import service.LoginService;
import vo.UserVO;

public class LoginAction implements Action {
	
	private LoginService loginService = new LoginService();
	
	@Override
	public URLModel execute(HttpServletRequest request) throws ServletException, IOException {

		String userId = request.getParameter("userId");
		String userPw = request.getParameter("userPw");
		
		//System.out.println(userId + " " + userPw);
		//System.out.println(loginService.login(userId, userPw));
		
		UserVO vo = loginService.login(userId, userPw);
		
		if(vo == null){
			//System.out.println("아이디, 비밀번호가 틀렸습니다.");
			return new URLModel("login.jsp", true);
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("user", vo);
		}
		
		if(vo.getUserType().equals("U")){
			return new URLModel("mainUI.jsp", true);			
		} else if(vo.getUserType().equals("D")) {
			return new URLModel("login.jsp", true);
		} else if (vo.getUserType().equals("M")) {
			return new URLModel("mainManager.jsp", true);
		} else {
			return new URLModel("login.jsp", true);
		}
		
	}

}
