package test;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

import domain.user.UserDAO;

public class UserDAOTest {
	private static Connection conn;
	
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		Class.forName("oracle.jdbc.OracleDriver");
		System.out.println("1 loading OK");
		String url = "jdbc:oracle:thin:@192.168.0.97:1521:XE";
		conn = DriverManager.getConnection(url, "hr1", "hr1");
		System.out.println("2 connection OK");
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
		conn.close();
	}

	//@Test
	public void loginTest() {
		assertNull(new UserDAO(conn).login("user001", "user0001")); //로그인 실패
		assertEquals(new UserDAO(conn).login("user001", "user001").getNickName(), "유저001"); //로그인 성공
	}
	
	@Test
	public void addUserTest() throws Exception {
		conn.setAutoCommit(false);
		assertTrue(new UserDAO(conn).addUser("user005", "1234", "최민우", "cmw", "010-4845-3293", "certes1@nate.com", "서울특별시 금천구"));
		conn.rollback();
		conn.setAutoCommit(true);
	}
	
	@Test
	public void idCheckTest(){
		assertFalse(new UserDAO(conn).idCheck("user005")); //아이디 중복이 아닐 때
		assertTrue(new UserDAO(conn).idCheck("user001")); //아이디가 중복일 때
	}
	
	@Test
	public void nickCheckTest(){
		assertFalse(new UserDAO(conn).nickCheck("user005")); //닉네임 중복이 아닐 때
		assertTrue(new UserDAO(conn).nickCheck("user001")); //닉네임이 중복일 때
	}
}