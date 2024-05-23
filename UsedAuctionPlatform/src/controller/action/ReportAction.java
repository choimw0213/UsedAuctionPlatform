package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import controller.Action;
import controller.URLModel;

public class ReportAction implements Action {

	@Override
	public URLModel execute(HttpServletRequest request) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userId");
		int productSeq = Integer.parseInt(request.getParameter("productSeq"));
		String reportContent = request.getParameter("reportContent");
		
		
		
		String page = "productInfoUI&productSeq=" + productSeq;
		return new URLModel("controller?cmd=" + page);
	}
}