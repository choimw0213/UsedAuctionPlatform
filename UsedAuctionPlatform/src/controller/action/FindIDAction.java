package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import controller.Action;
import controller.URLModel;
import dao.UserDAO;
import service.FindIDService;
import vo.UserVO;

public class FindIDAction implements Action {

	@Override
	public URLModel execute(HttpServletRequest request) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String page = "showID.jsp";
		

		
		String name = request.getParameter("name");
		String phoneNumber = request.getParameter("phoneNumber");
		String email = request.getParameter("email");
		
		String id = new FindIDService().findId(name, email, phoneNumber);
		System.out.println("아이디  : "+id);
			
		request.setAttribute("id", id);
		
		
		return  new URLModel(page, false);
	}

}
