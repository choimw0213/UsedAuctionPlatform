package com.kosta.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import com.kosta.controller.Action;
import com.kosta.controller.URLModel;
import com.kosta.service.ProductBuyListService;

public class BuyListAction implements Action {

	@Override
	public URLModel execute(HttpServletRequest request) throws ServletException, IOException {
		
		String userId = (String)request.getSession().getAttribute("userId");
		String type = request.getParameter("type");

		if(type.equals("buying")){
			request.setAttribute("buyList", new ProductBuyListService().getBuyingList(userId));
		} else if(type.equals("buyComplete")){
			request.setAttribute("buyList", new ProductBuyListService().getBuyCompleteList(userId));			
		}
		
		request.setAttribute("type", type);
		
		return new URLModel("asynchronous_buyList.jsp", false);
	}

}
