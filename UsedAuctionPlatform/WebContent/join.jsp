<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/join.css">
<title>Insert title here</title>
</head>
<body>
	<div id="project_container">
		<br><br><br>
			  <div id="top">
				<img class="img" src="images/icon/arrow.png" onclick="history.back()">
		  	  </div>	
	
	
		<div class="container">
			<div class="joinH1">
				<h1 class="fontJoinH1">회원가입</h1>
			</div>
			<div id="addInfo">
				<div class="addUserId">
					ㅤㅤㅤ아이디<input type="text" name="userId" class="inputTxt"><br>
				</div>

				<div class="addPassword">
					ㅤㅤㅤ비밀번호<input type="password" name="password" class="inputTxt"><br>
				</div>

				<div class="checkPassword">
					비밀번호 확인 <input type="password" name="checkPassword"
						class="inputTxt"><br>
				</div>

				<div class="addName">
					ㅤ이름 <input type="text" name="name" class="inputTxt"><br>
				</div>

				<div class="addNickname">
					ㅤ닉네임 <input type="text" name="nickname" class="inputTxt"><br>
				</div>

				<div class="addPhoneNumber">
					ㅤㅤ전화번호 <input type="text" name="phoneNumber" class="inputTxt"><br>
				</div>

				<div class="addEmail">
					ㅤ이메일 <input type="text" name="email" class="inputTxt"><br>
				</div>


				<div class="addAddress">
					<div class="addressH6">
						<p>주</p>
						<p>소</p>
					</div>
					<select class="form-select mt-0" aria-label="Default select example"
						id="select-box">
						<option selected class="selectItems">서울특별시</option>
					</select>
					<select class="form-select mt-0" aria-label="Default select example"
						id="select-box">
						<option selected class="selectItems">금천구</option>
						<option value="1" class="selectItems">XX구</option>
						<option value="2" class="selectItems">AA구</option>
						<option value="3" class="selectItems">BB구</option>
					</select>
				</div>

			</div>



			<div class="joinBtn">
				<form action="controller?cmd=loginAction">
					<input type="submit" value="J O I N" class="joinbt">
				</form>
			</div>
		</div>
	</div>
</body>
</html>