package query;

public interface ChatQuery {

//	String GET_CHAT_ROOM_LIST = "SELECT chat_seq, product_seq, from_id, to_id, content, chat_date, chat_state "
//			+ "FROM ("
//			+ "SELECT chat_seq, product_seq, from_id, to_id, content, chat_date, chat_state, "
//			+ "ROW_NUMBER() OVER (PARTITION BY product_seq, CASE WHEN from_id = ? THEN to_id ELSE from_id END ORDER BY chat_date DESC, chat_seq DESC) AS rn "
//			+ "FROM chat "
//			+ "WHERE from_id = ? OR to_id = ?"
//			+ ") "
//			+ "WHERE rn = 1 "
//			+ "ORDER BY chat_date DESC, chat_seq DESC";
	
	String GET_CHAT_ROOM_LIST = "SELECT "
			+ "c.chat_seq, c.product_seq, c.from_id, c.to_id, c.content, c.chat_date, c.chat_state, "
			+ "u1.nickname AS from_nickname, u2.nickname AS to_nickname, "
			+ "p.user_id AS product_user_id, pi.product_img AS thumbnail_img "
			+ "FROM ("
			+ "SELECT "
			+ "chat_seq, product_seq, from_id, to_id, content, chat_date, chat_state, "
			+ "ROW_NUMBER() OVER ("
			+ "PARTITION BY product_seq, "
			+ "CASE WHEN from_id = ? THEN to_id ELSE from_id END "
			+ "ORDER BY chat_date DESC, chat_seq DESC"
			+ ") AS rn "
			+ "FROM chat "
			+ "WHERE from_id = ? OR to_id = ?"
			+ ") c "
			+ "JOIN users u1 ON c.from_id = u1.user_id "
			+ "JOIN users u2 ON c.to_id = u2.user_id "
			+ "JOIN product p ON c.product_seq = p.product_seq "
			+ "LEFT JOIN ("
			+ "SELECT "
			+ "product_seq, product_img "
			+ "FROM product_img "
			+ "WHERE (product_seq, img_seq) IN ("
			+ "SELECT product_seq, MIN(img_seq) "
			+ "FROM product_img "
			+ "GROUP BY product_seq"
			+ ")"
			+ ") pi ON c.product_seq = pi.product_seq "
			+ "WHERE c.rn = 1 "
			+ "ORDER BY c.chat_date DESC, c.chat_seq DESC";

	String GET_CHAT_MESSAGE_LIST = "select chat_seq, product_seq, from_id, to_id, content, chat_date, chat_state "
			+ "from chat "
			+ "where product_seq = ? "
			+ "and ((from_id = ? and to_id = ?) or (from_id = ? and to_id = ?))";

	String ADD_CHAT = "insert into chat values (chat_seq.nextval, ?, ?, ?, ?, sysdate, 'F')";
	
}