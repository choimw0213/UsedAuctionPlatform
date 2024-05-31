package com.kosta.controller.page;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import com.kosta.controller.Action;
import com.kosta.controller.URLModel;
import com.kosta.service.ProductBuyListService;

public class BuyListUI implements Action {

	@Override
	public URLModel execute(HttpServletRequest request) throws ServletException, IOException {

		String userId = (String)request.getSession().getAttribute("userId");
		
		request.setAttribute("buyList", new ProductBuyListService().getBuyingList(userId));
		
		return new URLModel("buyList.jsp", false);
	}

}
