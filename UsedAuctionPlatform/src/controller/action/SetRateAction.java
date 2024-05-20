package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import controller.Action;
import controller.URLModel;

public class SetRateAction implements Action {

	@Override
	public URLModel execute(HttpServletRequest request) throws ServletException, IOException {
		
		//System.out.println("SetRateAction TEST");
		//System.out.println(request.getParameter("rate"));
		
		double rate = Double.parseDouble(request.getParameter("rate"));
		//System.out.println(rate);
		
		return null;
	}

}
