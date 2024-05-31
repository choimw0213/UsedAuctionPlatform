package com.kosta.controller.page;

import java.io.IOException;
import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.sql.DataSource;

import com.kosta.controller.Action;
import com.kosta.controller.URLModel;
import com.kosta.model.dao.UserDAO;

public class JoinUI implements Action {

	@Override
	public URLModel execute(HttpServletRequest request) throws ServletException, IOException {
		// TODO Auto-generated method stub

		return new URLModel("join.jsp", false);
	}

}
