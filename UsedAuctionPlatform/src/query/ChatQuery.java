package query;

public interface ChatQuery {
	
	String GET_CHAT_ROOM_LIST = "SELECT chat_seq, product_seq, from_id, to_id, content, chat_date, chat_state "
			+ "FROM ("
			+ "SELECT chat_seq, product_seq, from_id, to_id, content, chat_date, chat_state, "
			+ "ROW_NUMBER() OVER (PARTITION BY product_seq, CASE WHEN from_id = ? THEN to_id ELSE from_id END ORDER BY chat_date DESC, chat_seq DESC) AS rn "
			+ "FROM chat "
			+ "WHERE from_id = ? OR to_id = ?"
			+ ") "
			+ "WHERE rn = 1 "
			+ "ORDER BY chat_date DESC, chat_seq DESC";
	String GET_CHAT_MESSAGE_LIST = "";
	
}