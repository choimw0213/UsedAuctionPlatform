package controller.action;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import controller.Action;
import controller.URLModel;
import service.AddProductService;

public class AddProductAction implements Action {

	@Override
	public URLModel execute(HttpServletRequest request) throws ServletException, IOException {
		String directory = "C:/Users/KOSTA/git/UsedAuctionPlatform/UsedAuctionPlatform/WebContent/WEB-INF/uploaded";
		int sizeLimit = 100*1024*1024;		//100MB �젣�븳

		MultipartRequest multi = new MultipartRequest(request, directory, sizeLimit, "UTF-8", new DefaultFileRenamePolicy());
		
		HttpSession session = request.getSession();
		String user_id = (String) session.getAttribute("userId");
		String fileName = multi.getOriginalFileName("file");
		String title = multi.getParameter("title");
		String category = multi.getParameter("category");
		String region = multi.getParameter("region");
		String bid_date = multi.getParameter("sell_date");
		String price = multi.getParameter("price");
		String bid_price = multi.getParameter("bid_price");
		String content = multi.getParameter("content");
		
		String page = "addProductUI";
		
		boolean result = false;
		
		result = new AddProductService().addProduct(user_id, fileName, title, category, region, bid_date, price, bid_price, content);
		
		if(result){
			page = "mainUI";
		}
		
		return new URLModel("controller?cmd=" + page, true);
	}
}