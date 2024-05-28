package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import config.SHA256;
import controller.Action;
import controller.URLModel;
import service.JoinService;
import service.SetPWService;

public class SetPWAction implements Action {

	@Override
	public URLModel execute(HttpServletRequest request) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String page = "controller?cmd=setPWUI";
		
		String id = request.getParameter("id");
		String pw = request.getParameter("password");
		
		//System.out.println(pw);
		pw = SHA256.encrypt(pw);
		//System.out.println(pw);
		
		if(new SetPWService().setPw(id, pw)){
			page = "controller?cmd=loginUI";
		}
		
		return new URLModel(page, true);
	}

}
