package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import controller.Action;
import controller.URLModel;
import service.ProductListService;

public class CategoryAction implements Action {

	@Override
	public URLModel execute(HttpServletRequest request) throws ServletException, IOException {
		
		String region = request.getParameter("region");
		String category = request.getParameter("category");
		
		request.setAttribute("list", new ProductListService().getListByCategory(region, category));
		
		return new URLModel("asynchronous_productList.jsp", false);
	}

}
