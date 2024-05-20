<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous" 
/>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/addProduct.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#img_list_container{
	display: flex;
	align-items: flex-end;
	flex-wrap: nowrap;
	height: 60px;
	gap: 5px;
	overflow-x: scroll;
}
#img_list_container::-webkit-scrollbar {
  display: none;
}
.img_container{
	width: 50px;
	height: 50px;
}
</style>
</head>
<body>
<div id = "project_container">
	<div id = top>
		<img src="./images/icon/arrow.png">
		<h1>상품등록</h1>
	</div>
	<div id="container">
		<form action="controller?cmd=addProductAction" method="post" encType="multipart/form-data">
		<div id="img_list_container">
			<div class="img_container">
				<label for="input_file">
					<img id="camera" src="./images/icon/camera.png">
					<span id="img-count">0</span><span>/5</span>
				</label>
				<input type="file" id="input_file" name="file" accept="image/*" multiple>
			</div>
		</div>
		<hr>
		<table>
			<tr>
				<td align="right"><label class="res-label">제목</label></td>
				<td><input placeholder="제목 입력" name="title" required></td>
			</tr>
			<tr>
				<td align="right"><label class="res-label">카테고리</label></td>
				<td>
					<div class="dropdown" id="category">
					<button class="btn btn-sm dropdown-toggle" type="button"
						id="categoryBtn" data-bs-toggle="dropdown" aria-expanded="false">전체</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<a class="dropdown-item active bg-warning rounded-3" href="#">전체</a>
						<a class="dropdown-item" href="#">디지털 기기</a> 
						<a class="dropdown-item" href="#">가구/인테리어</a> 
						<a class="dropdown-item" href="#">유아동</a> 
						<a class="dropdown-item" href="#">의류</a> 
						<a class="dropdown-item" href="#">잡화</a> 
						<a class="dropdown-item" href="#">생활가전</a> 
						<a class="dropdown-item" href="#">주방용품</a> 
						<a class="dropdown-item" href="#">스포츠/레저</a> 
						<a class="dropdown-item" href="#">취미/게임/음반</a> 
						<a class="dropdown-item" href="#">뷰티/미용</a> 
						<a class="dropdown-item" href="#">생활용품</a> 
						<a class="dropdown-item" href="#">도서</a> 
						<a class="dropdown-item" href="#">반려동물용품</a> 
						<a class="dropdown-item" href="#">티켓/교환권</a> 
						<a class="dropdown-item" href="#">식품</a>
						<input name="category" id="category_value">
					</div>
				</div>
				</td>
			</tr>
			<tr>
				<td align="right"><label class="res-label">주소</label></td>
				<td>
					<div class="dropdown" id="region">
					<button class="btn btn-sm dropdown-toggle" type="button"
						id="regionBtn" data-bs-toggle="dropdown" aria-expanded="false">강남구</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton" id="region">
						<a class="dropdown-item active bg-warning rounded-3" href="#">강남구</a>
						<a class="dropdown-item" href="#">강동구</a> 
						<a class="dropdown-item" href="#">강북구</a> 
						<a class="dropdown-item" href="#">강서구</a> 
						<a class="dropdown-item" href="#">관악구</a> 
						<a class="dropdown-item" href="#">광진구</a> 
						<a class="dropdown-item" href="#">구로구</a> 
						<a class="dropdown-item" href="#">금천구</a> 
						<a class="dropdown-item" href="#">노원구</a> 
						<a class="dropdown-item" href="#">도봉구</a> 
						<a class="dropdown-item" href="#">동대문구</a> 
						<a class="dropdown-item" href="#">동작구</a> 
						<a class="dropdown-item" href="#">마포구</a> 
						<a class="dropdown-item" href="#">서대문구</a> 
						<a class="dropdown-item" href="#">서초구</a> 
						<a class="dropdown-item" href="#">성동구</a> 
						<a class="dropdown-item" href="#">성북구</a> 
						<a class="dropdown-item" href="#">송파구</a> 
						<a class="dropdown-item" href="#">양천구</a> 
						<a class="dropdown-item" href="#">영등포구</a> 
						<a class="dropdown-item" href="#">용산구</a> 
						<a class="dropdown-item" href="#">은평구</a> 
						<a class="dropdown-item" href="#">종로구</a> 
						<a class="dropdown-item" href="#">중구</a> 
						<a class="dropdown-item" href="#">중랑구</a>
						<input name="region" id="region_value">
					</div>
				</div>
				</td>
			</tr>
			<tr>
				<td align="right"><label class="res-label">경매 기간</label></td>
				<td>
					<label id="sell_date_label" for="sell_date">
						<input id="3" type="radio" name="sell_date" value="3" checked>3일
						<input id="5" type="radio" name="sell_date" value="5">5일
						<input id="7" type="radio" name="sell_date" value="7">7일
					</label>
				</td>
			</tr>
			<tr>
				<td align="right"><label class="res-label">즉시구매가</label></td>
				<td><input placeholder="즉시구매가 입력" name="price" required></td>
			</tr>
			<tr>
				<td align="right"><label class="res-label">경매시작금액</label></td>
				<td><input placeholder="경매시작금액 입력" name="bid_price" required></td>
			</tr>
			<tr>
				<td valign="top" align="right"><label class="res-label">내용</label></td>
				<td><textarea name="content"></textarea></td>
			</tr>
		</table>
		<input type="submit" value="등록">
	</form>
	</div>
	<jsp:include page="/navbar_home.jsp"></jsp:include>
</div>
<script>
	$("input[type=file]").on("change", function(){
		let container = document.getElementById("img_list_container");
		let form = document.querySelector("form");
		let formData = new FormData(form);
		console.log(this.files.length);
		for(var i=0; i<this.files.length; i++){
			let newImage = document.createElement("img");
			
			newImage.src = URL.createObjectURL(this.files[i]);
			newImage.style.width = "50px";
			newImage.style.height = "50px";
			container.appendChild(newImage);
			$("#img-count").text(document.getElementById("img_list_container").getElementsByTagName("img").length - 1);
		}
	})
	$("#region div > a").on('click', function() {
		console.log($(this).text());
		$("#regionBtn").text($(this).text());
		$("#region_value").val($(this).text());
		$("#region div > a").removeClass("active bg-warning rounded-3");
		$(this).addClass("active bg-warning rounded-3");
	})
			
	$("#category div > a").on('click', function() {
		console.log($(this).text());
		$("#categoryBtn").text($(this).text());
		$("#category_value").val($(this).text());
		$("#category div > a").removeClass("active bg-warning rounded-3");
		$(this).addClass("active bg-warning rounded-3");
	})
</script>
</body>
</html>
