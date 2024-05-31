package com.kosta.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.kosta.controller.Action;
import com.kosta.controller.URLModel;
import com.kosta.model.vo.UserVO;
import com.kosta.service.DeleteMyInfoService;

public class DeleteMyInfoAction implements Action {

	@Override
	public URLModel execute(HttpServletRequest request) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String page = "controller?cmd=myPageUI";
		
		HttpSession session = request.getSession(true);
		String id = (String) session.getAttribute("userId");
		session.invalidate();
		
	
		
		if(new DeleteMyInfoService().setUserType(id)){
			page = "controller?cmd=loginUI";
		}
		
		return new URLModel(page, true);
	}

}
