package com.kosta.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import com.kosta.controller.Action;
import com.kosta.controller.URLModel;
import com.kosta.model.dto.ProductBoxDTO;
import com.kosta.service.MyPointService;
import com.kosta.service.ProductService;
import com.kosta.service.SetRateService;

public class SetRateAction implements Action {

	@Override
	public URLModel execute(HttpServletRequest request) throws ServletException, IOException {

		int productSeq = Integer.parseInt(request.getParameter("productSeq"));
		double rate = Double.parseDouble(request.getParameter("rate"));
		System.out.println(productSeq);
		System.out.println(rate);
		
		SetRateService setRateService = new SetRateService();
		setRateService.setRate(productSeq, rate);
		ProductBoxDTO dto = new ProductService().getProduct(productSeq);
		new MyPointService().setPoint(dto.getId(), dto.getBidMax());
		return new URLModel("controller?cmd=buyListUI", true);
	}
}