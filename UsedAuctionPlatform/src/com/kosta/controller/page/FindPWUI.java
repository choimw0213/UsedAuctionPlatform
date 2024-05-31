package com.kosta.controller.page;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import com.kosta.controller.Action;
import com.kosta.controller.URLModel;

public class FindPWUI implements Action {

	@Override
	public URLModel execute(HttpServletRequest request) throws ServletException, IOException {
		// TODO Auto-generated method stub
		return new URLModel("findPW.jsp", false);
	}

}
