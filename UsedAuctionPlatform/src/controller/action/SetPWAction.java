package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import controller.Action;
import controller.URLModel;
import service.JoinService;
import service.SetPWService;

public class SetPWAction implements Action {

	@Override
	public URLModel execute(HttpServletRequest request) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String page = "setPW.jsp";
		
		// 아직 덜함String id = request.getAttribute("id"); 
		//findPW에서 리퀘스트 넘겨줘야 함
		
		/* 아직 덜함
		if(new SetPWService().setPw(id, pw)){
			page = "login.jsp";
		}*/
		
		
		return null;
	}

}
