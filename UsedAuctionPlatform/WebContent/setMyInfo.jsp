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
<link rel="stylesheet" href="css/setMyInfo.css">
<title>Insert title here</title>
<style>

.img{
  width: 23px;
  height: 23px;
  
}



#top{
	grid-area: 1/1/2/2;
	display: flex;
	justify-content: space-between;
	align-items: center;
	width: inherit;
	height: 40px;
    position: absolute;
	transform:translateY(-650%);
	display:flex;
	flex-wrap: wrap-reverse;
	
}
#top h1{
	margin-left: 5px;
	font-size: 20px;
	font-weight: 600;
}
#top > img{
	width: 23px;
	height: 23px;
	cursor: pointer; 
}



#top-head {
  font-size: 20px;
  font-weight: 600;
}










.container {
    display : grid;
    grid-template-rows: 50px 311px 70px;

}

.setMyInfoH1 {
    grid-area : 1/1/2/2;
    display : flex;
    justify-content : center;
    margin-top: 10%;
}

#addInfo{
	grid-area:2/1/3/2;
	display:flex;
	flex-wrap:wrap;
	
	grid-row-gap: 10px;
	margin-top: 20px;
}

#addInfo div{
	display:flex;
	margin:20px auto;
	justify-content:center;
	margin:5px auto;
}

.addPassword{
	transform: translateX(-5px);
}

.cheakPassword{
	transform: translateX(-18px);
}

.addName{
	transform: translateX(20px);
}

.addNickname{
	transform: translateX(13px);
}

.addPhoneNumber{
	transform: translateX(2px);
}

.addEmail{
	transform: translateX(13px);
}


.addressH6{
	position:absolute;
	top:-45px;
	transform: translateX(-94px);
}

.addAddress{
	display:flex;
	align-items:center;
	justify-content:center;
	flex-wrap:nowrap;
	/* justify-content:space-between; */
	transform: translateX(40px);

	
}

.addAddress select{
	display:flex;
	align-self:flex-end;
	background-color:#D9D9D9;
	font-size:10px;
	border-radius:0px;
	transform:translateX(-3px);

	padding:2px 20px;
}




input:focus {
	outline: none;	
}




.setMyInfoBtn{
    grid-area : 3/1/4/2;
    display:flex;
    justify-content : center;
    transform: translateY(-30px);
    padding:1em 3em;
    font-size:1.75em;
}

.inputTxt{
	background-color:#D9D9D9; border:none; border-radius:3px;
}


.fontJoinH1{
	font-size:2em; font-weight:bold;
}

.smibt{
    color:#FFFFFF;
    background-color:#FFB966;
    border:none;
    border-radius:5px;
    padding:0.5em 1.5em;
}



</style>
</head>
<body>
	<div id="project_container">
		<br><br><br>
			  <div id="top">
				<img class="img" src="images/icon/arrow.png" onclick="history.back()">
		  	  </div>	
		 <form action="controller?cmd=setMyInfoAction" method="post"> 	  
		<div class="container">
			<div class="setMyInfoH1">
				<h1 class="fontJoinH1">회 원 정 보 수 정</h1>
			</div>
			<div id="addInfo">

				<div class="addPassword">
					ㅤㅤㅤ비밀번호<input type="password" name="password" class="inputTxt" id="password"><br>
				</div>

				<div class="checkPassword">
					비밀번호 확인 <input type="password" 
						class="inputTxt" id="checkPassword"><br>
				</div>

<!-- 				<div class="addName">
					ㅤ이름 <input type="text" name="name" class="inputTxt"><br>
				</div> -->

				<div class="addNickname">
					ㅤ닉네임 <input type="text" name="nickname" class="inputTxt"><br>
				</div>

				<div class="addPhoneNumber">
					ㅤㅤ전화번호 <input type="text" name="phoneNumber" class="inputTxt"><br>
				</div>

				<div class="addEmail">
					ㅤ이메일 <input type="text" name="email" class="inputTxt mb-4"><br>
				</div>



				<div class="addAddress mt-4">
					<div class="addressH6">
						<p>주</p>
						<p>소</p>
					</div>
					<select class="form-select mt-0 border-0" aria-label="Default select example"
						id="select-box" name="cityAddress">
						<option selected class="selectItems">서울특별시</option>
					</select>
					<select class="form-select mt-0 border-0" aria-label="Default select example"
						id="select-box" name="districtAddress">
						<option selected class="selectItems">금천구</option>
						<option value="1" class="selectItems">XX구</option>
						<option value="2" class="selectItems">AA구</option>
						<option value="3" class="selectItems">BB구</option>
					</select>
				</div>


			</div>



			<div class="setMyInfoBtn mb-0">
				
					<input type="submit" value="수정" class="smibt" onclick="return passwordTest()">
				
			</div>
		</div>
		</form>
		<jsp:include page="/navbar_my.jsp"></jsp:include>
	</div>
<script type="text/javascript">
function passwordTest(){

	var p1 = document.getElementById('password').value;
		var p2 = document.getElementById('checkPassword').value;
		if (p1 != p2) {
			alert("비밀번호가 일치 하지 않습니다");
			return false;
		} else {

			return true;
		}
	}
</script>	
</body>
</html>