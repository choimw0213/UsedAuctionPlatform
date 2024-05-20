<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
<link rel="stylesheet" href="css/common.css" />
<link rel="stylesheet" href="css/mainUI.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>

<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/2.3.0/uicons-regular-rounded/css/uicons-regular-rounded.css'>
</head>

<body>
	<div id="project_container" class="d-flex">
		<!-- 상단바 -->
		<div class="row d-flex sticky-top pt-2" id="top1">
			<div class="d-flex justify-content-between p-2 ">
				<div class="dropdown" id="region">
					<button class="btn btn-sm dropdown-toggle" type="button"
						id="regionBtn" data-bs-toggle="dropdown" aria-expanded="false">강남구</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton"
						id="region">
						<a class="dropdown-item active bg-warning rounded-3" href="#">강남구</a>
						<a class="dropdown-item" href="#">강동구</a> <a class="dropdown-item"
							href="#">강북구</a> <a class="dropdown-item" href="#">강서구</a> <a
							class="dropdown-item" href="#">관악구</a> <a class="dropdown-item"
							href="#">광진구</a> <a class="dropdown-item" href="#">구로구</a> <a
							class="dropdown-item" href="#">금천구</a> <a class="dropdown-item"
							href="#">노원구</a> <a class="dropdown-item" href="#">도봉구</a> <a
							class="dropdown-item" href="#">동대문구</a> <a class="dropdown-item"
							href="#">동작구</a> <a class="dropdown-item" href="#">마포구</a> <a
							class="dropdown-item" href="#">서대문구</a> <a class="dropdown-item"
							href="#">서초구</a> <a class="dropdown-item" href="#">성동구</a> <a
							class="dropdown-item" href="#">성북구</a> <a class="dropdown-item"
							href="#">송파구</a> <a class="dropdown-item" href="#">양천구</a> <a
							class="dropdown-item" href="#">영등포구</a> <a class="dropdown-item"
							href="#">용산구</a> <a class="dropdown-item" href="#">은평구</a> <a
							class="dropdown-item" href="#">종로구</a> <a class="dropdown-item"
							href="#">중구</a> <a class="dropdown-item" href="#">중랑구</a>
					</div>
				</div>
				<input class="input-field" value="" />
				<button class="input-button border-0 bg-body" id="searchBtn">
					<i class="fi fi-rr-search"></i>
				</button>
				<button class="input-button border-0 bg-body" id="noti">
					<i class="fi fi-rr-bell"></i>
				</button>
			</div>
		</div>


		<!-- 메인내용 -->
		<div class="row w-100 g-2">
			<div class="btn-group justify-content-between g-0 p-2 pb-0">
				<div class="dropdown" id="category">
					<button class="btn btn-sm dropdown-toggle" type="button"
						id="categoryBtn" data-bs-toggle="dropdown" aria-expanded="false">전체</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<a class="dropdown-item active bg-warning rounded-3" href="#">전체</a>
						<a class="dropdown-item" href="#">디지털 기기</a> <a
							class="dropdown-item" href="#">가구/인테리어</a> <a
							class="dropdown-item" href="#">유아동</a> <a class="dropdown-item"
							href="#">의류</a> <a class="dropdown-item" href="#">잡화</a> <a
							class="dropdown-item" href="#">생활가전</a> <a class="dropdown-item"
							href="#">주방용품</a> <a class="dropdown-item" href="#">스포츠/레저</a> <a
							class="dropdown-item" href="#">취미/게임/음반</a> <a
							class="dropdown-item" href="#">뷰티/미용</a> <a class="dropdown-item"
							href="#">생활용품</a> <a class="dropdown-item" href="#">도서</a> <a
							class="dropdown-item" href="#">반려동물용품</a> <a
							class="dropdown-item" href="#">티켓/교환권</a> <a
							class="dropdown-item" href="#">식품</a>
					</div>
				</div>

				<div class="dropdown" id="hopelist">
					<button class="btn btn-sm dropdown-toggle" type="button"
						id="hopelistBtn" data-bs-toggle="dropdown" aria-expanded="false">등록순</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<a class="dropdown-item active bg-warning rounded-3" href="#">등록순</a>
						<a class="dropdown-item" href="#">입찰건순</a> <a
							class="dropdown-item" href="#">마감임박순</a>
					</div>
				</div>
			</div>
		</div>

		<!-- 리스트  -->
		<!-- 나중에 비동기로 Action에 넣을것임 
		<div class="row d-flex align-content-start justify-content-center overflow-y-auto w-100 h-100 p-2"
			id="scroll">
		</div>
		-->

		<div
			class="row d-flex align-content-start justify-content-center overflow-y-auto w-100 h-100 p-2"
			id="scroll">

			<div class="card d-flex align-items-center border-0 ps-2 pe-2"
				data-productSeq=2>
				<div class="row align-content-center w-100">
					<div
						class="d-flex align-items-center justify-content-center h-100 ps-0 pe-0">
						<img src="images/product/product1/product1-img1.jpg"
							class="img-fluid h-75" />
						<div class="ms-2 w-100">
							<div
								class="card-text d-flex align-items-start justify-content-between">
								<h6>신발팔아요</h6>
								<div class="d-flex justify-content-end ms-1">
									<span class="badge badge-s">경매중</span>
								</div>
							</div>
							<div class="d-flex text-group pt-1">
								<p class="product-info">생활용품</p>
								<p class="product-info ms-2 me-2">|</p>
								<p class="product-info">서울특별시 금천구</p>
							</div>
							<div class="text-group-point pt-1 pb-1">
								<p class="m-0 text-danger">입찰가 10,000P</p>
								<p class="m-0">즉구가 50,000P</p>
							</div>
							<div class="d-flex justify-content-between text-group">
								<p class="product-info">2024년 5월 12일 24:00 마감</p>
								<p class="product-info me-2">입찰 5건</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<hr class="m-0">
			<div class="card d-flex align-items-center border-0 ps-2 pe-2"
				data-productSeq=2>
				<div class="row align-content-center w-100">
					<div
						class="d-flex align-items-center justify-content-center h-100 ps-0 pe-0">
						<img src="images/product/product1/product1-img1.jpg"
							class="img-fluid h-75" />
						<div class="ms-2 w-100">
							<div
								class="card-text d-flex align-items-start justify-content-between">
								<h6>운동화 경매가 10,000원부터~~</h6>
								<div class="d-flex justify-content-end ms-1">
									<span class="badge badge-s">경매중</span>
								</div>
							</div>
							<div class="d-flex text-group pt-1">
								<p class="product-info">생활용품</p>
								<p class="product-info ms-2 me-2">|</p>
								<p class="product-info">서울특별시 금천구</p>
							</div>
							<div class="text-group-point pt-1 pb-1">
								<p class="m-0 text-danger">입찰가 10,000P</p>
								<p class="m-0">즉구가 50,000P</p>
							</div>
							<div class="d-flex justify-content-between text-group">
								<p class="product-info">2024년 5월 12일 24:00 마감</p>
								<p class="product-info me-2">입찰 5건</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<hr class="m-0">
			<div class="card d-flex align-items-center border-0 ps-2 pe-2"
				data-productSeq=2>
				<div class="row align-content-center w-100">
					<div
						class="d-flex align-items-center justify-content-center h-100 ps-0 pe-0">
						<img src="images/product/product1/product1-img1.jpg"
							class="img-fluid h-75" />
						<div class="ms-2 w-100">
							<div
								class="card-text d-flex align-items-start justify-content-between">
								<h6>신발팔아요</h6>
								<div class="d-flex justify-content-end ms-1">
									<span class="badge badge-s">경매중</span>
								</div>
							</div>
							<div class="d-flex text-group pt-1">
								<p class="product-info">생활용품</p>
								<p class="product-info ms-2 me-2">|</p>
								<p class="product-info">서울특별시 금천구</p>
							</div>
							<div class="text-group-point pt-1 pb-1">
								<p class="m-0 text-danger">입찰가 10,000P</p>
								<p class="m-0">즉구가 50,000P</p>
							</div>
							<div class="d-flex justify-content-between text-group">
								<p class="product-info">2024년 5월 12일 24:00 마감</p>
								<p class="product-info me-2">입찰 5건</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<hr class="m-0">
			<div class="card d-flex align-items-center border-0 ps-2 pe-2"
				data-productSeq=2>
				<div class="row align-content-center w-100">
					<div
						class="d-flex align-items-center justify-content-center h-100 ps-0 pe-0">
						<img src="images/product/product1/product1-img1.jpg"
							class="img-fluid h-75" />
						<div class="ms-2 w-100">
							<div
								class="card-text d-flex align-items-start justify-content-between">
								<h6>신발팔아요</h6>
								<div class="d-flex justify-content-end ms-1">
									<span class="badge badge-s">경매중</span>
								</div>
							</div>
							<div class="d-flex text-group pt-1">
								<p class="product-info">생활용품</p>
								<p class="product-info ms-2 me-2">|</p>
								<p class="product-info">서울특별시 금천구</p>
							</div>
							<div class="text-group-point pt-1 pb-1">
								<p class="m-0 text-danger">입찰가 10,000P</p>
								<p class="m-0">즉구가 50,000P</p>
							</div>
							<div class="d-flex justify-content-between text-group">
								<p class="product-info">2024년 5월 12일 24:00 마감</p>
								<p class="product-info me-2">입찰 5건</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<hr class="m-0">

		</div>

		<button class="btn btn-primary floating-btn border-0" id="addProduct"
			style="background-color: #ffb966; position: relative; bottom: 10px; left: 130px; border-radius: 50%">
			<i class="fi fi-rr-plus-small"></i>
		</button>

		<jsp:include page="/navbar_home.jsp"></jsp:include>

	</div>

	<script>
		$(document).ready(function() {
			
			dropboxList();
			
			// url 이동
			$("#noti").on('click', function() {
				location.href = "notiUI.jsp";
			})

			$("#addProduct").on('click', function() {
				location.href = "addProduct.jsp";
			})

			$(".card").on('click', function() {
				location.href = "productInfo.jsp"
			})
		});
		
		dropboxList = function(){	
			// 카테고리
			$("#region div > a").on('click', function() {
				$("#regionBtn").text($(this).text());		
			})							
			$("#category div > a").on('click', function() {
				$("#categoryBtn").text($(this).text());
			})						
			$("#hopelist div > a").on('click', function() {
				$("#hopelistBtn").text($(this).text());
			})
			
			//마우스 눌렀을 경우
			$("#region div > a").on('mousedown', function(){
				$("#region div > a").removeClass("active bg-warning rounded-3");
				$(this).addClass("active bg-warning rounded-3");
			})
			$("#category div > a").on('mousedown', function(){
				$("#category div > a").removeClass("active bg-warning rounded-3");
				$(this).addClass("active bg-warning rounded-3");
			})
			$("#hopelist div > a").on('mousedown', function(){
				$("#hopelist div > a").removeClass("active bg-warning rounded-3");
				$(this).addClass("active bg-warning rounded-3")
			})
		}
		
		regionList = function(region){
			$.ajax({
				url : "controller?cmd=mainUI&region="+region,
				type : "POST",
				data : {},
				success : function(response) {
					$("#scroll").html(response);
				}
			});		
		}
		
		searchBtn = function(){	// 책 검색
			$("#searchBtn").on("click", function(){
				
				$.ajax({
					url : "controller?cmd=searchAction",
					type : "POST",
					data : {
						search : $("#search").val()
					},
					success : function(response) {
						$("#searchDiv").html(response);
						cardClick();
					}
				});
			})

		}
		
		cardClick = function(){
			$(".card").on("click", function() {
				location.href = "controller?cmd=productInfo&seq="+this.dataset.productSeq;
			})
		}

		
	</script>
</body>
</html>
