package test;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.time.LocalDateTime;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

import domain.product.ProductDAO;
import domain.product.ProductVO;

public class ProductDAOTest {

private static Connection conn;
	
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		Class.forName("oracle.jdbc.OracleDriver");
		System.out.println("1 loading OK");
		
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:XE";
		conn = DriverManager.getConnection(url, "hr", "hr");
		System.out.println("2 connection OK");
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
		conn.close();
	}
	//@Test
	public void addProductTest() throws Exception{
		conn.setAutoCommit(false);

		ProductVO vo = new ProductVO(1, "c001", "의류 팔아요", "의류", "금천구", null, 3, 3000, 1000, "의류 팖", "S");
		assertTrue(new ProductDAO(conn).addProduct(vo));	
		
		conn.rollback();
		conn.setAutoCommit(true);
	}

}
