package query;

public interface ProductQuery {
	String ADD_PRODUCT = "insert into product "
			+ "(product_seq, user_id, title, category, address, end_date, price, start_price, content, state, start_date) "
			+ "values(product_seq.nextval, ?, ?, ?, ?, sysdate + ?, ?, ?, ?, 'S', sysdate)";
	
	String GET_PRODUCT = "select user_id, title, category, address, end_date, price, start_price, content, state, start_date "
			+ "from product where product_seq = ?";

	String GET_PRODUCTBOX = "select img_seq, p.product_seq, title, category, start_price, price, address, end_date, state, count(bid_price)-1, max(bid_price) "
			+ "from product p, product_img i, bid b "
			+ "where b.product_seq = p.product_seq and p.product_seq = i.product_seq and "
			+ "img_seq in (select min(img_seq) from product_img group by product_seq) and p.product_seq = ? "
			+ "group by img_seq, p.product_seq, title, category, start_price, price, address, end_date, state, start_date;";
	
	String GET_IMAGE = "select product_img from product_img where product_seq = ?";

	String ADD_PRODUCT_IMG = "insert into product_img values(img_seq.nextval, ?, ?)";

	
	String GET_LIST = "select img_seq, p.product_seq, title, category, start_price, price, address, end_date, state, count(bid_price)-1, MAX(bid_price) "
			+ "from product p, product_img i, bid b "
			+ "where b.product_seq = p.product_seq and p.product_seq = i.product_seq and "
			+ "img_seq in (select min(img_seq) from product_img group by product_seq) and state='S' and address like ?"
			+ "group by img_seq, p.product_seq, title, category, start_price, price, address, end_date, state, start_date "
			+ "order by start_date desc";

	String GET_LIST_CATEGORY = "select img_seq, p.product_seq, title, category, start_price, price, address, end_date, state, count(bid_price)-1, MAX(bid_price) "
			+ "from product p, product_img i, bid b "
			+ "where b.product_seq = p.product_seq and p.product_seq = i.product_seq and "
			+ "img_seq in (select min(img_seq) from product_img group by product_seq) and state='S' and category= ? and address like ? "
			+ "group by img_seq, p.product_seq, title, category, start_price, price, address, end_date, state, start_date "
			+ "order by start_date desc";

	String GET_LIST_REGION = "select img_seq, p.product_seq, title, category, start_price, price, address, end_date, state, count(bid_price)-1, MAX(bid_price) "
			+ "from product p, product_img i, bid b "
			+ "where b.product_seq = p.product_seq and p.product_seq = i.product_seq and "
			+ "img_seq in (select min(img_seq) from product_img group by product_seq) and state='S' and address like ? "
			+ "group by img_seq, p.product_seq, title, category, start_price, price, address, end_date, start_date, state "
			+ "order by start_date desc";

	String GET_LIST_BIDCOUNT = "select img_seq, p.product_seq, title, category, start_price, price, address, end_date, state, count(bid_price)-1, MAX(bid_price) "
			+ "from product p, product_img i, bid b "
			+ "where b.product_seq = p.product_seq and p.product_seq = i.product_seq and "
			+ "img_seq in (select min(img_seq) from product_img group by product_seq) and state='S' and address like ? "
			+ "group by img_seq, p.product_seq, title, category, start_price, price, address, end_date, start_date, state "
			+ "order by count(bid_price) desc, start_date desc";

	String GET_LIST_ENDDATE = "select img_seq, p.product_seq, title, category, start_price, price, address, end_date, state, count(bid_price)-1, MAX(bid_price) "
			+ "from product p, product_img i, bid b "
			+ "where b.product_seq = p.product_seq and p.product_seq = i.product_seq and "
			+ "img_seq in (select min(img_seq) from product_img group by product_seq) and state='S' and address like ? "
			+ "group by img_seq, p.product_seq, title, category, start_price, price, address, end_date, state, start_date "
			+ "order by end_date";

	String GET_LIST_SEARCH = "select img_seq, p.product_seq, title, category, start_price, price, address, end_date, state, count(bid_price)-1, MAX(bid_price) "
			+ "from product p, product_img i, bid b "
			+ "where b.product_seq = p.product_seq and p.product_seq = i.product_seq and "
			+ "img_seq in (select min(img_seq) from product_img group by product_seq) and state='S' and (title like ? or content like ?) and address like ? "
			+ "group by img_seq, p.product_seq, title, category, start_price, price, address, end_date, state, start_date "
			+ "order by start_date desc";
	
	String GET_LIST_SALLING_HISTORY = "select img_seq, p.product_seq, title, category, start_price, price, address, end_date, state, count(bid_price)-1, MAX(bid_price) "
			+ "from product p, product_img i, bid b "
			+ "where b.product_seq = p.product_seq and p.product_seq = i.product_seq and "
			+ "img_seq in (select min(img_seq) from product_img group by product_seq) "
			+ "and (state = 'S' or state = 'T') and p.user_id = ? "
			+ "group by img_seq, p.product_seq, title, category, start_price, price, address, end_date, state, start_date "
			+ "order by start_date desc";

	String GET_LIST_COMPLETE_HISTORY = "select img_seq, p.product_seq, title, category, start_price, price, address, end_date, state, count(bid_price)-1, MAX(bid_price) "
			+ "from product p, product_img i, bid b "
			+ "where b.product_seq = p.product_seq and p.product_seq = i.product_seq and "
			+ "img_seq in (select min(img_seq) from product_img group by product_seq) "
			+ "and state = 'E' and p.user_id = ? "
			+ "group by img_seq, p.product_seq, title, category, start_price, price, address, end_date, state, start_date "
			+ "order by start_date desc";

	String GET_LIST_BUYING_HISTORY = "";
			
}
