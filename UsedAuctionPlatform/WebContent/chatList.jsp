<%@page import="vo.ChatVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String userId = (String)session.getAttribute("userId"); %>
<% if(userId == null) response.sendRedirect("controller?cmd=loginUI"); %>
<% ArrayList<ChatVO> chatList = (ArrayList<ChatVO>)request.getAttribute("chatList"); %>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/chatList.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<style>
.chatP {
	width: 240px;
	height: 18px;
	white-space: wrap;
	overflow: hidden;
	text-overflow: ellipsis;
}

a {
	text-decoration: none;
	color: #000000;
}
</style>

<body>

	<div id="project_container">

		<div id="top">
			<div id="previous"></div>
			<h6 id="top-head">채팅</h6>
			<a href="chat.jsp"> <img src="images/icon/headset.png">
			</a>
		</div>

		<div class="container">
			<ul class="list-group w-100">
				<% if(chatList != null){ %>
					<% for(int i=0; i<chatList.size(); i++){ %>
					<% String toId = (chatList.get(i).getFromId().equals(userId)) ? chatList.get(i).getToId() : chatList.get(i).getFromId(); %>
					<li class="list-group-item border-0 p-0">
						<a href="controller?cmd=chatUI&productSeq=<%= chatList.get(i).getProductSeq() %>&toId=<%= toId %>">
							<div class="d-flex">
								<img src="images/product/product1/product1-img1.jpg" class="img-fluid">
								<div class="ms-1">
									<div class="card-text d-flex">
										<div id="item-title-group">
											<div class="d-flex">
												<span class="badge badge-s">판매품</span>
												<p>nickname1234</p>
											</div>
											<p class="chatP"><%= chatList.get(i).getContent() %></p>
										</div>
									</div>
								</div>
							</div>
						</a>
					</li>
					<hr class="my-1">
					<% } %>
				<% } %>
			</ul>
		</div>
		<jsp:include page="/navbar_chat.jsp"></jsp:include>
	</div>

</body>
</html>