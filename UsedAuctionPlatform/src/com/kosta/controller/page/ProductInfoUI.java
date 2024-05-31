package com.kosta.controller.page;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.kosta.controller.Action;
import com.kosta.controller.URLModel;
import com.kosta.model.dto.ProductBoxDTO;
import com.kosta.model.vo.ProductVO;
import com.kosta.service.ProductService;
import com.kosta.service.UserService;

public class ProductInfoUI implements Action {

	@Override
	public URLModel execute(HttpServletRequest request) throws ServletException, IOException {
		HttpSession session = request.getSession();
		int productSeq = Integer.parseInt(request.getParameter("productSeq"));
		
		ProductBoxDTO dto = new ProductService().getProduct(productSeq);
		dto.setImgURL(new ProductService().getProductImage(productSeq));
		
		int point = new UserService().getUser((String)session.getAttribute("userId"));
		request.setAttribute("productInfo", dto);
		request.setAttribute("point", point);
		return new URLModel("productInfo.jsp");
	}
}