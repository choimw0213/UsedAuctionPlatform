package service;

import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import dao.UserDAO;
import vo.UserVO;

public class LoginService {
	private DataSource dataSource;

	public LoginService(){
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/myoracle");
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public int login(String userId, String userPw) {
		try {
			UserDAO dao = new UserDAO(dataSource.getConnection());
			UserVO vo = dao.login(userId, userPw);
			if(vo != null) {
				if(vo.getUserType().equals("U")) return 1;
				else if(vo.getUserType().equals("M")) return 2;
				else if(vo.getUserType().equals("D")) return 3;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return -1;
	}

}
