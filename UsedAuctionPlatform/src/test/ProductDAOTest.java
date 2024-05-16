package test;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
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
		String url = "jdbc:oracle:thin:@192.168.0.97:1521:XE";
		conn = DriverManager.getConnection(url, "hr1", "hr1");
		System.out.println("2 connection OK");
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
		conn.close();
	}
	
	@Test
	public void addProductTest() throws Exception{
		conn.setAutoCommit(false);

		/*
		 * int productSeq, String userId, String title, String category, String address, LocalDateTime endDate,
			LocalDateTime startDate, int endDateNum, int price, int startPrice, String content, String state
		 */
		ProductVO vo = new ProductVO(1, "user001", "의류 팔아요", "의류", "금천구", null, null,3, 3000, 1000, "의류 팖", "S");
		assertTrue(new ProductDAO(conn).addProduct(vo));	
		
		conn.rollback();
		conn.setAutoCommit(true);
	}
	
	@Test
	public void getProductTest() throws SQLException{
		assertNotNull(new ProductDAO(conn).getProduct(2));
	}
	
	@Test
	public void getProductImgTest() {
		assertNotNull(new ProductDAO(conn).getProductImage(2));
	}
	
	@Test
	public void addProductImgTest() throws SQLException{
		conn.setAutoCommit(false);
		
		assertTrue(new ProductDAO(conn).addProductImage(2, "images/product2_01.jpg"));
		
		conn.rollback();
		conn.setAutoCommit(true);
	}

	@Test
	public void getProductList() {
		assertNotNull(new ProductDAO(conn).getSellCompleteHistory("user001"));
	}
}
