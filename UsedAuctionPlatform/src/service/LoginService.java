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

	public UserVO login(String userId, String userPw) {
		UserVO vo = new UserVO();
		
		try {
			UserDAO dao = new UserDAO(dataSource.getConnection());
			vo = dao.login(userId, userPw);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return vo;
	}

}
