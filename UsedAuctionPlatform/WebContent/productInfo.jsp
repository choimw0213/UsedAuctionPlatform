<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/productInfo.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div id="project_container">
		<div id=top>
			<img src="./images/icon/arrow.png">
			<h1>상품정보</h1>
			<img id="option" src="./images/icon/option.png">
		</div>
		<div id="container">

    <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
            <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="3" aria-label="Slide 4"></button>
            <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="4" aria-label="Slide 5"></button>
            <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="5" aria-label="Slide 6"></button>
            <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="6" aria-label="Slide 7"></button>
            <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="7" aria-label="Slide 8"></button>
            <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="8" aria-label="Slide 9"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="./images/product/product1/product1-img1.jpg" class="d-block w-100" alt="Image 1">
            </div>
            <div class="carousel-item">
                <img src="./images/product/product1/product1-img2.png" class="d-block w-100" alt="Image 2">
            </div>
            <div class="carousel-item">
                <img src="./images/product/product1/product1-img3.jpg" class="d-block w-100" alt="Image 3">
            </div>
            <div class="carousel-item">
                <img src="./images/product/product1/product1-img4.png" class="d-block w-100" alt="Image 4">
            </div>
            <div class="carousel-item">
                <img src="./images/product/product1/product1-img5.png" class="d-block w-100" alt="Image 5">
            </div>
            <div class="carousel-item">
                <img src="./images/product/product1/product1-img6.jpg" class="d-block w-100" alt="Image 6">
            </div>
            <div class="carousel-item">
                <img src="./images/product/product1/product1-img7.png" class="d-block w-100" alt="Image 7">
            </div>
            <div class="carousel-item">
                <img src="./images/product/product1/product1-img8.png" class="d-block w-100" alt="Image 8">
            </div>
            <div class="carousel-item">
                <img src="./images/product/product1/product1-img9.png" class="d-block w-100" alt="Image 9">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

			<div id="nickname">
				<div id="nickname_img_container">
					<img src="./images/icon/person.png">
				</div>
				<div id="nickname_container">
					<p>nickname1234</p>
				</div>
			</div>
			<hr>
			<div id="title_container">
				<span id="title">목 마를 때 마시면 좋습니다. 물 팔아요~</span> <span id="category">생활용품</span>
			</div>
			<hr>
			<div id="price">
				<span>1,100P</span> <span>즉시 구매가 3,000P</span>
			</div>
			<div id="product_state">
				<span>입찰 5건</span> <span>경매 마감까지 6일 10시간 남음</span>
			</div>
			<hr>
			<div id="button">
				<div id="bid_button">입찰</div>
				<div>즉시 구매</div>
			</div>
			<hr>
			<div id="content">
				<span> 물을 너무 많이 사서 남네요 한번도 안쓴 새겁니다. </span>
			</div>
		</div>
		<div id="nav_bar"></div>
		<div class="modal_default" id="bid_modal">
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
		<div class="modal_default" id="option_modal">
			<div class="option_button">1:1 채팅</div>
			<div class="option_button" id="report_button">신고하기</div>
		</div>
		<div class="modal_default" id="report_modal">
			<div id="report_modal_container">
				<div id="report_modal_top">신고사유</div>
				<textarea></textarea>
				<div id="report_modal_button_container">
					<div id="report_close">취소</div>
					<div>접수</div>
				</div>
			</div>
		</div>
		<jsp:include page="/navbar.jsp"></jsp:include>
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
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>