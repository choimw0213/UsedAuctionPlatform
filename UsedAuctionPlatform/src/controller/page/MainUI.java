package controller.page;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import controller.Action;
import controller.URLModel;
import dto.ProductBoxDTO;
import service.ProductListService;

public class MainUI implements Action {

	@Override
	public URLModel execute(HttpServletRequest request) throws ServletException, IOException {
		
		String id = (String)request.getSession().getAttribute("userId");
		String address = (String)request.getSession().getAttribute("address");
		
		request.setAttribute("list", new ProductListService().getList(address));
		
		return new URLModel("mainUI.jsp");
	}

}
