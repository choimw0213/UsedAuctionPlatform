package query;

public interface NotiQuery {
	String GET_NOTI_LIST = "select noti_seq, b.bid_seq, p.product_seq, noti_state, b.user_id, u.nickname, product_img, b.bid_price, p.title, p.category, p.user_id "
			+ "from noti n, bid b, product p, users u, product_img i "
			+ "where n.bid_seq = b.bid_seq and b.user_id = u.user_id and b.product_seq = p.product_seq and p.product_seq = i.product_seq "
			+ "and n.user_id = ? and img_seq in (select min(img_seq) from product_img group by product_seq) "
			+ "order by noti_seq desc";
}
