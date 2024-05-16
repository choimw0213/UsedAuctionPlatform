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
    <link rel="stylesheet" href="css/login.css">
<title>Insert title here</title>
</head>
<body>
<div id = "project_container">
<div class = "container">
<div class = "loginH1">
    <h1 class="fontLoginH1">로그인</h1>
</div>
<div id = "addInfo">
<div class = "addUserId">
    아이디ㅤ<input type = "text" name = "userId" class="inputTxt"><br>
</div>

<div class = "addPassword">
    비밀번호ㅤ<input type = "password" name = "password" class="inputTxt"><br>
</div>
</div>
<!--href에 해당 UI만들고 채워야 함ㅇㅇ-->
<div id = "findRegisterTxt">
    <div class = "idFindTxt">
        <a class="fontTxt" href = "https://gemini.google.com/app">아이디 찾기</a>
    </div>
    <h15 class="fontTxt">|</h15>
    <div class = "pwFindTxt">
        <a class="fontTxt"href = "#">비밀번호 찾기</a>
    </div>
    <h15 class="fontTxt">|</h15>
    <div class = "registerTxt">
        <a class="fontTxt"href = "#">회원가입</a>
    </div>
</div>

<div class = "loginBtn">
    <form action="controller?cmd=loginAction">
        <input type="submit" value = "L O G I N" class="lgbt">
    </form>
</div>
</div>
</div>
</body>
</html>