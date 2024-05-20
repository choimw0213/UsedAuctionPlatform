package controller.action;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import controller.Action;
import controller.URLModel;

public class AddProductAction implements Action {

	@Override
	public URLModel execute(HttpServletRequest request) throws ServletException, IOException {
		String directory = "C:/Users/KOSTA/git/UsedAuctionPlatform/UsedAuctionPlatform/WebContent/images/uploaded";
		int sizeLimit = 100*1024*1024;		//100MB 제한
		
		MultipartRequest multi = new MultipartRequest(request, directory, sizeLimit, "UTF-8", new DefaultFileRenamePolicy());
		System.out.println("--getParameterNames");
		Enumeration enumeration01 = multi.getParameterNames();
		while(enumeration01.hasMoreElements()){
			System.out.println(enumeration01.nextElement());
		}
		
		System.out.println("--getFileNames");
		Enumeration enumeration02 = multi.getFileNames();
		while(enumeration02.hasMoreElements()){
			System.out.println(enumeration02.nextElement());
		}
		System.out.println("--getOriginalFileName");
		String ori1 = multi.getOriginalFileName("file");
		System.out.println(ori1);
		
		System.out.println("title: " + multi.getParameter("title"));
		System.out.println("title: " + multi.getParameter("category"));
		System.out.println("title: " + multi.getParameter("region"));
		System.out.println("title: " + multi.getParameter("sell_date"));
		System.out.println("title: " + multi.getParameter("price"));
		System.out.println("title: " + multi.getParameter("bid_price"));
		System.out.println("title: " + multi.getParameter("content"));
		return new URLModel("mainUI.jsp", true);
	}
}