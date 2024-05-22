package dao;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.Map;

import vo.NotiVO;

public class NotiDAO {
	private Connection conn;

	public NotiDAO(Connection conn){
		this.conn = conn;
	}
	
	public boolean addNoti(String id, int bidSeq, boolean state){
		
		
		return false;
	}
	
	public Map<String, Integer> getNotiUserList(int productSeq){
		Map<String, Integer> list = null;
		
		
		return list;
	}
	
	public ArrayList<NotiVO> getNotiList(String id){
		ArrayList<NotiVO> list = null;
		
		return list;
	}
}
