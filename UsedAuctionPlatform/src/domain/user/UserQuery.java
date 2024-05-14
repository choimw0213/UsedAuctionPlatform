package domain.user;

public interface UserQuery {
	String LOGIN = "select nickname, user_type from users where user_id = ? and password = ?";
	String ADD_USER = "insert into users "
			+ "(user_id, password, name, nickname, phone_number, email, address, point, profile_img, "
			+ "rate, rate_count, user_type, report_count) "
			+ "values"
			+ "(?, ?, ?, ?, ?, ?, ?, 0,'img.png', "
			+ "0, 0, 'U', 0)";
	String ID_CHECK = "select user_id from users where user_id = ?";
	String NICK_CHECK = "select nickname from users where nickname = ?";
	}