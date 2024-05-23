<%@page import="vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" />
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/2.3.0/uicons-regular-rounded/css/uicons-regular-rounded.css'>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<link rel="stylesheet" href="css/common.css" />
<link rel="stylesheet" href="css/mainUI.css" />
</head>

<body>
	<div id="project_container" class="d-flex">
		<!-- 상단바 -->
		<div class="row d-flex sticky-top pt-2 w-100" id="top1">
			<div class="d-flex align-items-center justify-content-between p-2 ">
				<div class="dropdown" id="region">
					<button class="btn btn-sm dropdown-toggle" type="button"
						id="regionBtn" data-bs-toggle="dropdown" aria-expanded="false">강남구</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton"
						id="region">
						<a class="dropdown-item active bg-warning rounded-3" href="#">강남구</a> <a class="dropdown-item"
							href="#">강동구</a> <a class="dropdown-item" href="#">강북구</a> <a
							class="dropdown-item" href="#">강서구</a> <a class="dropdown-item"
							href="#">관악구</a> <a class="dropdown-item" href="#">광진구</a> <a
							class="dropdown-item" href="#">구로구</a> <a class="dropdown-item"
							href="#">금천구</a> <a class="dropdown-item" href="#">노원구</a> <a
							class="dropdown-item" href="#">도봉구</a> <a class="dropdown-item"
							href="#">동대문구</a> <a class="dropdown-item" href="#">동작구</a> <a
							class="dropdown-item" href="#">마포구</a> <a class="dropdown-item"
							href="#">서대문구</a> <a class="dropdown-item" href="#">서초구</a> <a
							class="dropdown-item" href="#">성동구</a> <a class="dropdown-item"
							href="#">성북구</a> <a class="dropdown-item" href="#">송파구</a> <a
							class="dropdown-item" href="#">양천구</a> <a class="dropdown-item"
							href="#">영등포구</a> <a class="dropdown-item" href="#">용산구</a> <a
							class="dropdown-item" href="#">은평구</a> <a class="dropdown-item"
							href="#">종로구</a> <a class="dropdown-item" href="#">중구</a> <a
							class="dropdown-item" href="#">중랑구</a>
					</div>
				</div>

				<input class="input-field" value="" id="search"/>
				<div class="me-2">
					<button class="input-button border-0 bg-body" id="searchBtn">
						<i class="fi fi-rr-search"></i>
					</button>
					<button class="input-button border-0 bg-body" id="noti">
						<i class="fi fi-rr-bell"></i>
					</button>
				</div>
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

		<div class="row d-flex align-content-start justify-content-center overflow-y-auto w-100 h-100 p-2"
			id="scroll">
			<c:forEach items='${list}' var='p'>
				<div class="card d-flex align-items-center border-0 p-2"
					data-productseq="${p.getProductSeq()}">
					<div class="row align-content-center w-100">
						<div
							class="d-flex align-items-center justify-content-center h-100 ps-0 pe-0">
							<img src="images/product/product1/product1-img1.jpg"
								class="img-fluid" />
							<div class="ms-2 w-100">
								<div
									class="card-text d-flex align-items-start justify-content-between">
									<h6>${p.getTitle()}</h6>
									<div class="d-flex justify-content-end ms-1">
										<span class="badge badge-s">경매중</span>
									</div>
								</div>
								<div class="d-flex text-group pt-1">
									<p class="product-info">${p.getCategory()}</p>
									<p class="product-info ms-2 me-2">|</p>
									<p class="product-info">${p.getAddress()}</p>
								</div>
								<div class="text-group-point pt-1 pb-1">
									<p class="bpr m-0 text-danger" id="bidMax">${p.getBidMax()}</p>
									<p class="pr m-0" id="nowprice">${p.getPrice()}</p>
								</div>
								<div class="d-flex justify-content-between text-group">
									<p class="product-info">${p.getEndDate()}</p>
									<p class="product-info me-2">입찰 ${p.getBidCount()}건</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<hr class="m-0">
			</c:forEach>
		</div>

		<button class="btn btn-primary floating-btn border-0" id="addProduct"
			style="background-color: #ffb966; position: relative; bottom: 10px; left: 130px; border-radius: 50%">
			<i class="fi fi-rr-plus-small"></i>
		</button>

		<jsp:include page="/navbar_home.jsp"></jsp:include>

	</div>

	<script>
		var userAddress = "${address}";
		$("#regionBtn").text(userAddress);
		$("#region div > a").removeClass("active bg-warning rounded-3");
		$("#region div > a").each(function(){
			if(userAddress === $(this).text()){
				$(this).addClass("active bg-warning rounded-3");
			}
		})
		
		// url 이동
		$("#noti").on('click', function() {
			location.href = "controller?cmd=notiUI";
		})
		$("#addProduct").on('click', function() {
			location.href = "controller?cmd=addProductUI";
		})
		
		$(document).ready(function() {	
			dropboxList();
			searchBtn();
			cardClick();
			priceShow();
		});
	
		priceShow = function(){
			$(".bpr").each(function(){
				$(this).text("입찰가 " + Number($(this).text()).toLocaleString('ko-KR') + "P");
			})
			$(".pr").each(function(){
				$(this).text("즉구가 " + Number($(this).text()).toLocaleString('ko-KR') + "P");
			})
		}
		
		dropboxList = function() {
			// 드롭다운 text 변경
			$("#region div > a").on('click', function() {
				$("#regionBtn").text($(this).text());
				regionList($(this).text()); // 비동기작동
			})
			$("#category div > a").on('click', function() {
				$("#categoryBtn").text($(this).text());
				categoryList($("#regionBtn").text(), $(this).text());
			})
			$("#hopelist div > a").on('click', function() {
				$("#hopelistBtn").text($(this).text());
				hopeList($(this).text());
			})

			//마우스 눌렀을 경우 active 변화
			$("#region div > a").on('mousedown',function() {
				$("#region div > a").removeClass("active bg-warning rounded-3");
				$(this).addClass("active bg-warning rounded-3");
			})
			$("#category div > a").on('mousedown',function() {
				$("#category div > a").removeClass("active bg-warning rounded-3");
				$(this).addClass("active bg-warning rounded-3");
			})
			$("#hopelist div > a").on('mousedown',function() {
				$("#hopelist div > a").removeClass("active bg-warning rounded-3");
				$(this).addClass("active bg-warning rounded-3")
			})
		}
		
		regionList = function(reg) { // 지역별 리스트
			$.ajax({
				url : "controller?cmd=sortAction",
				type : "POST",
				data : {
					region : reg
				},
				success : function(response) {
					categoryInit();
					hopeInit();
					$("#search").val("");
					$("#scroll").html(response);
					cardClick();
					priceShow();
				}
			});
		}
		
		categoryList = function(reg, cg){	// 카테고리별
			$.ajax({
				url : "controller?cmd=categoryAction",
				type : "POST",
				data : {
					region : reg,
					category : cg
				},
				success : function(response) {
					hopeInit();
					$("#search").val("");
					$("#scroll").html(response);
					cardClick();
					priceShow();
				}
			});
		}
		
		hopeList = function(h){		// 등록순, 입찰건순, 마감임박순
			$.ajax({
				url : "controller?cmd=hopeAction",
				type : "POST",
				data : {
					region : userAddress,
					hope : h
				},
				success : function(response) {
					$("#search").val("");
					regionInit();
					categoryInit();
					
					$("#scroll").html(response);
					cardClick();
					priceShow();
				}
			});
		}
	
		searchBtn = function() { // 상품검색
			$("#searchBtn").on("click", function() {
				$.ajax({
					url : "controller?cmd=searchAction",
					type : "POST",
					data : {
						search : $("#search").val(),
						region : userAddress
					},
					success : function(response) {
						regionInit();
						categoryInit();
						hopeInit();
				
						$("#scroll").html(response);
						cardClick();
						priceShow();
					}
				});
			})
		};
		
		cardClick = function(){
			$(".card").on('click', function() {
				location.href = "controller?cmd=productInfoUI&productSeq="+ this.dataset.productseq;
			})
		}
		
		// 초기화
		regionInit = function(){
			$("#regionBtn").text(userAddress);
			$("#region div > a").removeClass("active bg-warning rounded-3");
			$("#region div > a").each(function(){
				if(userAddress === $(this).text()){
					$(this).addClass("active bg-warning rounded-3");
				}
			})
		}
		
		categoryInit = function(){
			$("#categoryBtn").text("전체");
			$("#category div > a").removeClass("active bg-warning rounded-3");
			$("#category div > a").each(function(){
				if("전체" === $(this).text()){
					$(this).addClass("active bg-warning rounded-3");
				}
			})
		}
		
		hopeInit = function(){
			$("#hopelistBtn").text("등록순");
			$("#hopelist div > a").removeClass("active bg-warning rounded-3");
			$("#hopelist div > a").each(function(){
				if("등록순" === $(this).text()){
					$(this).addClass("active bg-warning rounded-3");
				}
			})
		}
		
	</script>
</body>
</html>
