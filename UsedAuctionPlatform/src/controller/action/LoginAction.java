package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import config.SHA256;
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
		HttpSession session = request.getSession();
		
		//System.out.println(userPw);
		userPw = SHA256.encrypt(userPw);
		//System.out.println(userPw);
		
		UserVO vo = loginService.login(userId, userPw);
		if(vo == null){
			return new URLModel("controller?cmd=loginUI", true);
		}
		
		String[] address = vo.getAddress().split(" ");
//		System.out.println(address[0]);
//		System.out.println(address[1]);
		
		if(vo.getUserType().equals("U")){
			session.setAttribute("userId", vo.getUserId());
			session.setAttribute("nickName", vo.getNickName());
			session.setAttribute("address", address[1]);
			return new URLModel("controller?cmd=mainUI", true);			
		/*} else if(vo.getUserType().equals("M")){	관리자 기능 없음
			session.setAttribute("userId", vo.getUserId());
			session.setAttribute("nickName", vo.getNickName());
			session.setAttribute("address", address[1]);
			return new URLModel("controller?cmd=mainManagerUI", true);*/
		} else if(vo.getUserType().equals("D")){
			return new URLModel("controller?cmd=loginUI", true);
		}
		
		return new URLModel("controller?cmd=loginUI", true);
	}

}
