package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import controller.Action;
import controller.URLModel;
import service.MyPointService;

public class MyPointAction implements Action {

	@Override
	public URLModel execute(HttpServletRequest request) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String page = "myPage.jsp";
		
		String id = (String)request.getSession().getAttribute("userId");
		
		
		String strPlusPoint = null;
		String strMinusPoint = null;
		String temp = null;
		int point = 0;

		try {
			strMinusPoint = request.getParameter("minusPoint");
			strPlusPoint = request.getParameter("plusPoint");
			
			/*request.setAttribute("plusPoint", strPlusPoint);*/
			
			
			if(strMinusPoint == null){
				point = Integer.parseInt(strPlusPoint);
			}else{
				temp = "-"+strMinusPoint;
				point = Integer.parseInt(temp);
			}
		} catch (NumberFormatException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		if(new MyPointService().setPoint(id, point)){
			page = "pointActionCheck.jsp";
		}
		
		System.out.println("\nMyPointAction");
		System.out.println("아이디 : " + id);
		System.out.println("추가된 포인트 : " + point);
		
		return new URLModel(page, true);
	}

}
