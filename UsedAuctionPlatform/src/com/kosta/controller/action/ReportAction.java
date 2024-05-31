package com.kosta.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.kosta.controller.Action;
import com.kosta.controller.URLModel;
import com.kosta.service.ReportService;

public class ReportAction implements Action {

	@Override
	public URLModel execute(HttpServletRequest request) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String messageContent = "";
		
		String userId = (String) session.getAttribute("userId");
		int productSeq = Integer.parseInt(request.getParameter("productSeq"));
		String reportContent = request.getParameter("reportContent");
		
		boolean result = new ReportService().addReport(userId, productSeq, reportContent);
		
		if(result == true){
			messageContent = "신고가 접수되었습니다!";
			session.setAttribute("messageContent", messageContent);
		}else {
			
		}
		
		return new URLModel("controller?cmd=productInfoUI&productSeq="+productSeq, true);
	}
}