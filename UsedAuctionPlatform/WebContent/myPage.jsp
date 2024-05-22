<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/common.css">
<!-- <link rel="stylesheet" href="css/myPage.css"> -->
<title>Insert title here</title>
<style>
#imgIcon {
	width: 60px;
	height: 60px;
}

.pointTxt {
	text-align: center;
	transform: translateX(40%);
}

.pointFont {
	font-size: 2em;
}

.nicknameP {
	transform: translateY(40%);
}

.rateP {
	transform: translateY(-20%);
}

.modal-header {
	background-color: #FFB966;
}

.modal-body {
	background-color: #FFB966;
}

.modal-title {
	background-color: #FFB966;
	color: #FFFFFF;
}

.modal-footer {
	background-color: #FFB966;
}

#modalBtn {
	background-color: #FFD9AC !important;
	color: #000000;
}

a {
	text-decoration: none;
	color: #FFFFFF;
}

.btn {
	background-color: #FFB966;
	border: none;
}

#myActButton {
	z-index: 10;
	transform: translateX(40%);
}

.cBeB {
	display: flex;
	flex-wrap: nowrap;
	transform: translateX(-15%);
}

.chargeButton {
	transform: translateX(-50%);
}

.aButtons {
	transform: translateX(-18%);
}

.loPointFont {
	transform: translateX(-18%);
}

button {
	white-space: nowrap;
}

.exchangeButton {
	transform: translateX(40%);
}
</style>
</head>
<body>


	<div id="project_container">
		<div class="container-fulid">
			<table class="table">
				<thead>
					<tr class="table-borderless">
						<th class="col-md-3"><img src="images/icon/icon.png"
							class="img-fluid rounded-circle border" id="imgIcon"></th>
						<th class="maPageInfo">
							<p class="nicknameP"><%=request.getAttribute("nickname")%></p>
							<p class="rateP">
								★<%=request.getAttribute("rate")%></p>
						</th>
					</tr>
					<tr>
						<th class="pointTxt">
							<div class="loPointFont">
								<p class="pointFont"><%=request.getAttribute("point")%></p>
							</div>
							<div class="cBeB">
								<div class="chargeButton">

									<button type="button" class="btn btn-primary"
										data-bs-toggle="modal" data-bs-target="#chargeModal">
										충전</button>
								</div>
								<div class="exchangeButton">

									<button type="button" class="btn btn-primary"
										data-bs-toggle="modal" data-bs-target="#exchangeModal">
										환전</button>
								</div>
							</div>
						</th>
						<th></th>
					</tr>
					<tr>
						<th id="myActButton" class="border-0">
							<div class="aButtons">
								<br>
								<button type="button" class="btn btn-primary">
									<a href="controller?cmd=setMyInfoUI">회원정보수정</a>
								</button>
								<br>
								<br>
								<button type="button" class="btn btn-primary">
									<a href="controller?cmd=logoutAction">ㅤ로그아웃ㅤ</a>
								</button>
								<br>
								<br>
								<button type="button" class="btn btn-primary">
									<a href="controller?cmd=deleteMyInfoAction">ㅤ회원탈퇴ㅤ</a>
								</button>
							</div>
						</th>

					</tr>
				</thead>
			</table>


			<!-- Modal -->
			<div class="modal fade" id="chargeModal" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">얼마를 충전하시겠습니까?</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<form action="controller?cmd=myPointAction" method="post">
							<div class="modal-body">
								<input class="form-control form-control-lg" type="number"
									name="plusPoint">
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary" id="modalBtn"
									data-bs-dismiss="modal">닫기</button>

								<button type="submit" class="btn btn-primary" id="modalBtn">확인</button>

							</div>
						</form>
					</div>
				</div>
			</div>





			<!-- Modal -->
			<div class="modal fade" id="exchangeModal" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">얼마를 환전하시겠습니까?</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<form action="controller?cmd=myPointAction" method="post">
							<div class="modal-body">
								<input class="form-control form-control-lg" type="number"
									name="minusPoint">
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary" id="modalBtn"
									data-bs-dismiss="modal">닫기</button>

								<button type="submit" class="btn btn-primary" id="modalBtn">확인</button>

							</div>
						</form>
					</div>
				</div>
			</div>



		</div>
		<jsp:include page="/navbar_my.jsp"></jsp:include>
	</div>
	<script type="text/javascript">


</script>
</body>
</html>