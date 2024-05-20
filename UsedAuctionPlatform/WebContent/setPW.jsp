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
<link rel="stylesheet" href="css/setPW.css">
<title>Insert title here</title>
</head>
<body>
	<div id="project_container">
		<br><br><br>
			  <div id="top">
				<img class="img" src="images/icon/arrow.png" onclick="history.back()">
		  	  </div>		
	
		<div class="container">
			<div class="setPWH1">
				<h1 class="fontFindPasswordH1">비 밀 번 호 찾 기</h1>
			</div>

			<div class="setPW">
				새 비밀번호<input type="password" name="password" class="inputTxt"><br>
			</div>

			<div class="checkPassword">
				비밀번호 확인 <input type="password" name="checkPassword" class="inputTxt mt-2"><br>
			</div>

			<div class="setPWBtn">
				<form action="login.jsp">
					<input type="submit" value="O K" class="lgbt">
				</form>
			</div>
		</div>
	</div>
<script type="text/javascript">
</script>	
</body>
</html>