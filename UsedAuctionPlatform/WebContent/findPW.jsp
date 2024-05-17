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
    <link rel="stylesheet" href="css/findPW.css">
<title>Insert title here</title>
</head>
<body>
<div id = "project_container">
<div class = "container">
<div class = "findPasswordH1">
    <h1 style="font-size:2em; font-weight:bold;">비 밀 번 호 찾 기</h1>
</div>

<div class = "addUserId">
    아이디ㅤ <input type = "text" name = "userId" style="background-color:#D9D9D9; border:none; border-radius:10px; width:200px; height:25px;"><br>
</div>

<div class = "addName">
	이름ㅤ <input type = "text" name = "name"style="background-color:#D9D9D9; border:none; border-radius:10px; width:200px; height:25px;"><br>
</div>

<div class = "addEmail">
    이메일ㅤ<input type = "text" name = "email" style="background-color:#D9D9D9; border:none; border-radius:10px; width:200px; height:25px;"><br>
</div>


<div class = "findPasswordBtn">
    <form action="#">
        <input type="submit" value = "O K" class="lgbt" style="padding:0.8em 2.5em;">
    </form>
</div>
</div>
</div>
</body>
</html>