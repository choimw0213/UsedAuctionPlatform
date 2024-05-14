package domain.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {
	private Connection conn;
	
	public UserDAO(Connection conn){
		this.conn = conn;
	}
	
	public UserVO login(String id, String pw){
		UserVO VO = null;
		try {
			PreparedStatement pstmt = conn.prepareStatement(UserQuery.LOGIN);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()){
				VO = new UserVO(rs.getString(1), rs.getString(2));
			}
			rs.close();
			pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return VO;
	}
	
	public boolean addUser(String id, String pw, String name, String nickname, String phoneNumber, String email, String address){
		boolean result = false;
		try {
			PreparedStatement pstmt = conn.prepareStatement(UserQuery.ADD_USER);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, name);
			pstmt.setString(4, nickname);
			pstmt.setString(5, phoneNumber);
			pstmt.setString(6, email);
			pstmt.setString(7, address);
			if(pstmt.executeUpdate() >= 1){
				result = true;
			}
			pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	public boolean idCheck(String id){
		boolean result = false;
		try {
			PreparedStatement pstmt = conn.prepareStatement(UserQuery.ID_CHECK);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()){
				result = true;
			}
			rs.close();
			pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public boolean nickCheck(String nickName){
		boolean result = false;
		try {
			PreparedStatement pstmt = conn.prepareStatement(UserQuery.NICK_CHECK);
			pstmt.setString(1, nickName);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()){
				result = true;
			}
			rs.close();
			pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
//	public boolean findId(String name, String email, String phoneNumber){
//		boolean result = false;
//		PreparedStatement pstmt = 
//		return result;
//	}
//	
//	boolean findPw(Strind id, String name, String email){
//		
//	}
//	
//	boolean setPw(String id, String pw){
//		
//	}
//	
//	boolean setRate(int productSeq, double rate){
//		
//	}
//	
//	UserVO getUser(String id){
//		
//	}
//	
//	boolean setPoint(String id, int point){
//		
//	}
//	
//	boolean setUser(Strind pw, String name, String nickname, String phoneNumber, String email, String address){
//		
//	}
//	
//	boolean setUserType(String id){
//		
//	}
//	
//	ArrayList<UserVO> getUserList(){
//		
//	}
//	
//	ArrayList<UserVO> getUserList(String id){
//		
//	}
}