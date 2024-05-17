<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/addProduct.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id = "project_container">
	<div id = top>
		<img src="./images/arrow.png">
		<h1>상품등록</h1>
		<img id="option" src="./images/option.png">
	</div>
	<div id="container">
		<div id="img_list_container">
			<div class="img_container">
				<img id="camera" src="./images/camera.png">
				<span>04/10</span>
			</div>
			<div class="img_container">
				<img src="./images/product1-img1.png">
			</div>
			<div class="img_container">
				<img src="./images/product1-img1.png">
			</div>
			<div class="img_container">
				<img src="./images/product1-img1.png">
			</div>
			<div class="img_container">
				<img src="./images/product1-img1.png">
			</div>
		</div>
		<hr>
		<form>
		<table>
			<tr>
				<td align="right"><label class="res-label">제목</label></td>
				<td><input placeholder="제목 입력" required></td>
			</tr>
			<tr>
				<td align="right"><label class="res-label">카테고리</label></td>
				<td><input placeholder="카테고리 입력" required></td>
			</tr>
			<tr>
				<td align="right"><label class="res-label">주소</label></td>
				<td><input placeholder="주소 입력" required></td>
			</tr>
			<tr>
				<td align="right"><label class="res-label">경매 기간</label></td>
				<td>
					<label id="sell_date_label" for="sell_date">
						<input id="3" type="radio" name="sell_date" value="1">3일
						<input id="5" type="radio" name="sell_date" value="2">5일
						<input id="7" type="radio" name="sell_date" value="3">7일
					</label>
				</td>
			</tr>
			<tr>
				<td align="right"><label class="res-label">즉시구매가</label></td>
				<td><input placeholder="즉시구매가 입력" required></td>
			</tr>
			<tr>
				<td align="right"><label class="res-label">경매시작금액</label></td>
				<td><input placeholder="경매시작금액 입력" required></td>
			</tr>
			<tr>
				<td valign="top" align="right"><label class="res-label">내용</label></td>
				<td><textarea></textarea></td>
			</tr>
		</table>
		<input type="submit" value="회원가입">
	</form>
	</div>
	<div id="nav_bar">
	
	</div>
</div>
</body>
</html>