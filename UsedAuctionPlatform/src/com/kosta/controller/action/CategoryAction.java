package com.kosta.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import com.kosta.controller.Action;
import com.kosta.controller.URLModel;
import com.kosta.model.dto.ProductBoxDTO;
import com.kosta.service.ProductListService;
import com.kosta.service.ProductService;

public class CategoryAction implements Action {

	@Override
	public URLModel execute(HttpServletRequest request) throws ServletException, IOException {
		
		String region = request.getParameter("region");
		String category = request.getParameter("category");
		
		ArrayList<ProductBoxDTO> dtoList = new ProductListService().getListByCategory(region, category);
		new ProductService().setProductStateByEndDate(dtoList);
		request.setAttribute("list", dtoList);
		
		return new URLModel("asynchronous_productList.jsp", false);
	}

}
