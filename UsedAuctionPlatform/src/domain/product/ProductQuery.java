package domain.product;

public interface ProductQuery {
	String ADD_PRODUCT = "insert into product "
			+ "(product_seq, user_id, title, category, address, end_date, price, start_price, content, state, start_date) "
			+ "values(product_seq.nextval, ?, ?, ?, ?, sysdate + ?, ?, ?, ?, 'S', sysdate)";
			
}
