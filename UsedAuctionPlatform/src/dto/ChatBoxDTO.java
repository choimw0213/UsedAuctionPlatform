package dto;

import java.time.LocalDateTime;

public class ChatBoxDTO {
	private int imgSeq;
	private String imgURL;
	private String productUserId;
	private String fromNickName;
	private String toNickName;
	
	private int chatSeq;
	private int productSeq;
	private String fromId;
	private String toId;
	private String content;
	private LocalDateTime chatDate;
	private String chatState;
}
