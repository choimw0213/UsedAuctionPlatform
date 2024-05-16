package domain.bid;

public interface BidQuery {

	String GET_MAX_BID = "select max(b.bid_price) from bid b, product p "
			+ "where b.product_seq = p.product_seq and b.product_seq = ?";
	String GET_BID_COUNT = "select count(b.bid_price) from bid b, product p "
			+ "where b.product_seq = p.product_seq and b.product_seq = ?";
	String POINT_DEDUCTION = "update users set point = point - (? - (SELECT NVL(max(bid_price),0) "
			+ "from bid where user_id = ? and product_seq = ?)) "
			+ "where user_id = ?";
	String ADD_BID = "insert into bid (bid_seq, product_seq, user_id, bid_price) "
			+ "values(bid_seq.nextval, ?, ?, ?)";
	String SET_PRODUCT_STATE = "update product set state = 'T' where product_seq = ?";
	

}