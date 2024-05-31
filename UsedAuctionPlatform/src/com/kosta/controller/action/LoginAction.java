package com.kosta.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.kosta.config.SHA256;
import com.kosta.controller.Action;
import com.kosta.controller.URLModel;
import com.kosta.model.vo.UserVO;
import com.kosta.service.LoginService;

public class LoginAction implements Action {
	
	private LoginService loginService = new LoginService();
	
	@Override
	public URLModel execute(HttpServletRequest request) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String messageContent = "";
		
		String userId = request.getParameter("userId");
		if(userId == ""){
			messageContent = "아이디를 입력해주세요.";
			session.setAttribute("messageContent", messageContent);
			return new URLModel("controller?cmd=loginUI", true);
		}
		String userPw = request.getParameter("userPw");
		if(userPw == ""){
			messageContent = "비밀번호를 입력해주세요.";
			session.setAttribute("messageContent", messageContent);
			return new URLModel("controller?cmd=loginUI", true);
		}
		
		//System.out.println(userPw);
		userPw = SHA256.encrypt(userPw);
		//System.out.println(userPw);
		
		UserVO vo = loginService.login(userId, userPw);
		if(vo == null){
			messageContent = "아이디 또는 비밀번호가 일치하지 않습니다.";
			session.setAttribute("messageContent", messageContent);
			//return new URLModel("loginFail.jsp", false);
			return new URLModel("controller?cmd=loginUI", true);
		}
		
		String[] address = vo.getAddress().split(" ");
//		System.out.println(address[0]);
//		System.out.println(address[1]);
		
		if(vo.getUserType().equals("U")){
			session.setAttribute("userId", vo.getUserId());
			session.setAttribute("nickName", vo.getNickName());
			session.setAttribute("address", address[1]);
			messageContent = "로그인 성공";
			session.setAttribute("messageContent", messageContent);
			return new URLModel("controller?cmd=mainUI", true);			
		/*} else if(vo.getUserType().equals("M")){	관리자 기능 없음
			session.setAttribute("userId", vo.getUserId());
			session.setAttribute("nickName", vo.getNickName());
			session.setAttribute("address", address[1]);
			return new URLModel("controller?cmd=mainManagerUI", true);*/
		} else if(vo.getUserType().equals("D")){
			messageContent = "로그인 실패";
			session.setAttribute("messageContent", messageContent);
			//return new URLModel("loginFail.jsp", false);
			return new URLModel("controller?cmd=loginUI", true);
		}
		
		return new URLModel("controller?cmd=loginUI", true);
	}

}
