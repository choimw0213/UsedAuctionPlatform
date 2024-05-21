package controller.page;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import controller.Action;
import controller.URLModel;

public class ProductInfoUI implements Action {

	@Override
	public URLModel execute(HttpServletRequest request) throws ServletException, IOException {
		int productSeq = Integer.parseInt(request.getParameter("productSeq"));
		System.out.println(productSeq);
		
		
		return new URLModel("productInfo.jsp");
	}
}