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

public class HopeAction implements Action {

	@Override
	public URLModel execute(HttpServletRequest request) throws ServletException, IOException {
		String region = request.getParameter("region");
		String hope = request.getParameter("hope");
		
		ArrayList<ProductBoxDTO> dtoList = new ProductListService().getListByHope(region, hope);
		new ProductService().setProductStateByEndDate(dtoList);
		request.setAttribute("list", dtoList);
		return new URLModel("asynchronous_productList.jsp", false);
	}

}
