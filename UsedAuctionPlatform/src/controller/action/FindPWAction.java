package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import controller.Action;
import controller.URLModel;
import service.FindPWService;

public class FindPWAction implements Action {

	@Override
	public URLModel execute(HttpServletRequest request) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String page = "controller?cmd=findPWUI";
		
		String id = request.getParameter("userId");
		String name = request.getParameter("name");
		String email = request.getParameter("email");

		
		request.setAttribute("id", id);

		
		if(new FindPWService().findPW(id, name, email)){
			page = "controller?cmd=setPWUI";
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
		}
		
		return new URLModel(page, false);
	}

}
