<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/productInfo.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<div id = "project_container">
	<div id = top>
		<img src="./images/arrow.png">
		<h1>상품정보</h1>
		<img id="option" src="./images/option.png">
	</div>
	<div id="container">
		<div id="image">
			<img src="./images/product1-img1.png">
		</div>
		<div id="carousel_slider">
			carousel slider
		</div>
		<div id="nickname">
			<div id="nickname_img_container">
				<img src="./images/person.png">
			</div>
			<div id="nickname_container">
				<p>nickname1234</p>
			</div>
		</div>
		<hr>
		<div id="title_container">
			<span id="title">목 마를 때 마시면 좋습니다. 물 팔아요~</span>
			<span id="category">생활용품</span>
		</div>
		<hr>
		<div id="price">
			<span>1,100P</span>
			<span>즉시 구매가 3,000P</span>
		</div>
		<div id="product_state">
			<span>입찰 5건</span>
			<span>경매 마감까지 6일 10시간 남음</span>
		</div>
		<hr>
		<div id="button">
			<div id="bid_button">입찰</div>
			<div>즉시 구매</div>
		</div>
		<hr>
		<div id="content">
			<span>
				물을 너무 많이 사서 남네요 한번도 안쓴 새겁니다.
			</span>
		</div>
	</div>
	<div id="nav_bar">
	
	</div>
	<div class="modal" id="bid_modal">
		<div id="bid_modal_container">
			<div id="bid_modal_top">얼마를 입찰 하시겠습니까?</div>
			<div id="bid_modal_input_container">
				<input placeholder="0P" value="">
			</div>
			<div id="bid_modal_button_container">
				<div>확인</div>
				<div id="close">취소</div>
			</div>
		</div>
	</div>
	<div class="modal" id="option_modal">
		<div class="option_button">
			1:1 채팅
		</div>
		<div class="option_button" id="report_button">
			신고하기
		</div>
	</div>
	<div class="modal" id="report_modal">
		<div id="report_modal_container">
			<div id="report_modal_top">신고사유</div>
			<textarea></textarea>
			<div id="report_modal_button_container">
				<div id="report_close">취소</div>
				<div>접수</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	$("#bid_button").click(function(){
		$("#bid_modal")[0].style.display="flex";
		$("#bid_modal")[0].style.position="absolute";
	});
	$("#close").click(function(){
		$("#bid_modal")[0].style.display="none";
	});
	$("#option").click(function(){
		$("#option_modal")[0].style.display="flex";
		$("#option_modal")[0].style.position="absolute";
	});
	$("#container").click(function(){
		$("#option_modal")[0].style.display="none";
	});
	$("#report_button").click(function(){
		$("#option_modal")[0].style.display="none";
		$("#report_modal")[0].style.display="flex";
		$("#report_modal")[0].style.position="absolute";
	});
	$("#report_close").click(function(){
		$("#report_modal")[0].style.display="none";
	});
</script>
</body>
</html>