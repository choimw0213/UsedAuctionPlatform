package domain.user;

import java.sql.Connection;

public class UserDAO {
	private Connection conn;
	
	public UserDAO(Connection conn){
		this.conn = conn;
	}
	
	UserVO login(String id, String pw){
		
	}
	
	boolean addUser(String id, String pw, String name, String nickname, String phoneNumber, String email, String address){
		
	}
	
	boolean idCheck(String id){
		
	}
	
	boolean nickCheck(String id){
		
	}
	
	boolean findId(String name, String email, String phoneNumber){
		
	}
	
	boolean findPw(Strind id, String name, String email){
		
	}
	
	boolean setPw(String id, String pw){
		
	}
	
	boolean setRate(int productSeq, double rate){
		
	}
	
	UserVO getUser(String id){
		
	}
	
	boolean setPoint(String id, int point){
		
	}
	
	boolean setUser(Strind pw, String name, String nickname, String phoneNumber, String email, String address){
		
	}
	
	boolean setUserType(String id){
		
	}
	
	ArrayList<UserVO> getUserList(){
		
	}
	
	ArrayList<UserVO> getUserList(String id){
		
	}
}