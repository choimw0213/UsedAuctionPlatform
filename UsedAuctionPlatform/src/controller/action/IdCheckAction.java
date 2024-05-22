package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import controller.Action;
import controller.URLModel;
import service.DuplicationService;

public class IdCheckAction implements Action {

	@Override
	public URLModel execute(HttpServletRequest request) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("userId");
		
		if(new DuplicationService().idCheck(id)){
			request.setAttribute("idCheck", "사용할 수 있는 아이디입니다.");
		} else {
			request.setAttribute("idCheck", "사용할 수 없는 아이디입니다.");
		}
		
		
		return new URLModel("idCheck.jsp", false);
	}

}
