<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/findId.css">
<title>Insert title here</title>
</head>
<body>
<div id = "project_container">
<div class = "container">
<div class = "findIdH1">
    <h1 class="fontFindIdH1">아 이 디 찾 기</h1>
</div>

<div class = "addName">
    이름ㅤ <input type = "text" name = "name" class="inputTxt"><br>
</div>

<div class = "addEmail">
	이메일ㅤ <input type = "text" name = "email" class="inputTxt"><br>
</div>

<div class = "addPhoneNumber">
    전화번호ㅤ<input type = "text" name = "phoneNumber" class="inputTxt"><br>
</div>


<div class = "findIdBtn">
    <form action="#">
        <input type="submit" value = "O K" class="lgbt" >
    </form>
</div>
</div>
</div>
</body>
</html>