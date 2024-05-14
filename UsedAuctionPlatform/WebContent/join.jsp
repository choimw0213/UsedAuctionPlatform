<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
 <link rel="stylesheet" href="css/common.css">
 <link rel="stylesheet" href="css/join.css">
<title>Insert title here</title>
</head>
<body>
<div id = "project_container">
<div class = "container">
<div class = "joinH1">
    <h1 style="font-size:2em; font-weight:bold;">회원가입</h1>
</div>
<div id = "addInfo">
<div class = "addUserId">
    아이디ㅤ<input type = "text" name = "userId" style="background-color:#D9D9D9; border:none; border-radius:10px;"><br>
</div>

<div class = "addPassword">
    비밀번호ㅤ<input type = "password" name = "password" style="background-color:#D9D9D9; border:none; border-radius:10px;"><br>
</div>

<div class = "cheakPassword">
	비밀번호 확인 <input type = "password" name = "chaekPassword" style="background-color:#D9D9D9; border:none; border-radius:10px;"><br>
</div>

<div class = "addName">
	이름 <input type = "text" name = "name" style="background-color:#D9D9D9; border:none; border-radius:10px;"><br>
</div>

<div class = "addNickname">
	닉네임 <input type = "text" name = "nickname" style="background-color:#D9D9D9; border:none; border-radius:10px;"><br>
</div>

<div class = "addPhoneNumber">
	전화번호 <input type = "text" name = "phoneNumber" style="background-color:#D9D9D9; border:none; border-radius:10px;"><br>
</div>

<div class = "addEmail">
	이메일 <input type = "text" name = "email" style="background-color:#D9D9D9; border:none; border-radius:10px;"><br>
</div>


<div class = "addAddress">
	<div class = "addressH6">
		<h6>주소</h6>
	</div>	
	<select class="form-select" aria-label="Default select example" id="select-box" data-live-search="true" >
   		<option selected class="selectItems">금천구</option>
    	<option value="1" class="selectItems">XX구</option>
    	<option value="2" class="selectItems">AA구</option>
    	<option value="3" class="selectItems">BB구</option>
	</select>
</div>

</div>



<div class = "joinBtn">
    <form action="controller?cmd=loginAction">
        <input type="submit" value = "J O I N" class="joinbt">
    </form>
</div>
</div>
</div>
</body>
</html>