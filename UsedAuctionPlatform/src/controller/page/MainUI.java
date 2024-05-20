package controller.page;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import controller.Action;
import controller.URLModel;
import service.ProductListService;

public class MainUI implements Action {

	@Override
	public URLModel execute(HttpServletRequest request) throws ServletException, IOException {
		
		// ********************* 여기 수정 해줘야함 ******************************
		String region = "강남구";
		//
		ProductListService ps = new ProductListService();
		
		request.setAttribute("list", ps.getList(region));
		
		return new URLModel("mainUI.jsp", true);
	}

}
