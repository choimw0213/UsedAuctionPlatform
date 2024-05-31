package com.kosta.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.kosta.controller.Action;
import com.kosta.controller.URLModel;
import com.kosta.service.NotiService;
import com.kosta.service.ProductService;

public class BidAction implements Action {

	@Override
	public URLModel execute(HttpServletRequest request) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String messageContent = "";
		
		int productSeq = Integer.parseInt(request.getParameter("productSeq"));
		int bidPrice = Integer.parseInt(request.getParameter("bidPrice"));
		String userId = (String) session.getAttribute("userId");
		
		boolean result = new ProductService().addBid(productSeq, userId, bidPrice);
		if(new NotiService().addNoti(productSeq)){}
		
		if(result == true){
			if(request.getParameter("state").equals("0")) messageContent = "입찰완료!";
			else if(request.getParameter("state").equals("1")) messageContent = "구매완료!";
			session.setAttribute("messageContent", messageContent);
		}
		
		return new URLModel("controller?cmd=productInfoUI&productSeq=" + productSeq, true);
	}
}