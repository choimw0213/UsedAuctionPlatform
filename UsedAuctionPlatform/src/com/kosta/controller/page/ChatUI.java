package com.kosta.controller.page;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import com.kosta.controller.Action;
import com.kosta.controller.URLModel;
import com.kosta.service.ChatService;
import com.kosta.service.ProductService;
import com.kosta.service.UserService;

public class ChatUI implements Action {

	@Override
	public URLModel execute(HttpServletRequest request) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int productSeq = Integer.parseInt(request.getParameter("productSeq"));
		String userId = (String)request.getSession().getAttribute("userId");
		String toId = (String)request.getParameter("toId");
		
		//System.out.println(productSeq);
		//System.out.println(userId);
		//System.out.println(toId);
		
		ChatService chatService = new ChatService();
		request.setAttribute("chat", chatService.getChat(productSeq, userId, toId));
		chatService.readChat(productSeq, userId, toId);
		
		ProductService productService = new ProductService();
		request.setAttribute("product", productService.getProductChat(productSeq));
		
		UserService userService = new UserService();
		request.setAttribute("toNickName", userService.getUsers(toId).getNickName());
		
		return new URLModel("chat.jsp", false);
	}

}
