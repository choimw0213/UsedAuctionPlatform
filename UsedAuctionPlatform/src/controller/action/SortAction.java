package controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import controller.Action;
import controller.URLModel;
import dto.ProductBoxDTO;
import service.ProductListService;

public class SortAction implements Action {

	@Override
	public URLModel execute(HttpServletRequest request) throws ServletException, IOException {
		
		String region = request.getParameter("region");
		System.out.println(region);
		ArrayList<ProductBoxDTO> list= new ProductListService().getList(region);

		request.setAttribute("list", new ProductListService().getList(region));
		
		
		return new URLModel("asynchronous_productList.jsp", false);
	}

}
