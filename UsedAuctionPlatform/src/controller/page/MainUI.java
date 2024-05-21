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
		request.setAttribute("region", "금천구");
		request.setAttribute("list", new ProductListService().getList("금천구"));
		
		return new URLModel("mainUI.jsp");
	}

}
