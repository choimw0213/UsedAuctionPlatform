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

		<div class="row d-flex w-100 pt-2" id="top1">
			<div class="col-1 pt-2">
				<div class="m-0" id="pre">
					<img src="images/icon/arrow.png" id="previous" class="me-2"
						onclick="history.back()">
				</div>
				<div></div>
			</div>
		</div>
		<div class="row align-content-center w-100 h-100">
			<p class="fs-1 text-center">회원가입</p>
			<form>
				<div
					class="row g-2 d-flex align-items-center justify-content-center pt-2 pb-2">
					<div class="col-3 text-end p-0">
						<label class="col-form-label">아이디</label>
					</div>
					<div class="col-7">
						<input name="userId" type="text" id="inputId"
							class="form-control-sm">
					</div>
					<div class="col-3 text-end p-0">
						<label for="inputPassword6" class="col-form-label">비밀번호</label>
					</div>
					<div class="col-7">
						<input name="userPw" type="password" id="pw"
							class="form-control-sm" aria-describedby="passwordHelpInline">
					</div>
					<div class="col-3 text-end p-0">
						<label for="inputPassword6" class="col-form-label">비밀번호 확인</label>
					</div>
					<div class="col-7">
						<input name="userPw" type="password" class="form-control-sm"
							aria-describedby="passwordHelpInline">
					</div>
					<div class="col-3 text-end p-0">
						<label class="col-form-label">이름</label>
					</div>
					<div class="col-7">
						<input name="userId" type="text" id="inputId"
							class="form-control-sm">
					</div>
					<div class="col-3 text-end p-0">
						<label class="col-form-label">닉네임</label>
					</div>
					<div class="col-7">
						<input name="userId" type="text" id="inputId"
							class="form-control-sm">
					</div>
					<div class="col-3 text-end p-0">
						<label class="col-form-label">전화번호</label>
					</div>
					<div class="col-7">
						<input name="userId" type="text" id="inputId"
							class="form-control-sm">
					</div>
					<div class="col-3 text-end p-0">
						<label class="col-form-label">이메일</label>
					</div>
					<div class="col-7">
						<input name="userId" type="text" id="inputId"
							class="form-control-sm">
					</div>
					<div class="col-3 text-end p-0">
						<label class="col-form-label">주소</label>
					</div>
					<div class="col-7">
						<select class="form-select form-select-sm mb-2"
							aria-label=".form-select-sm example">
							<option selected>서울특별시</option>
						</select> <select class="form-select form-select-sm"
							aria-label=".form-select-smexample">
							<option selected>강남구</option>
							<option value="1">강동구</option>
							<option value="2">강북구</option>
							<option value="3">강서구</option>
						</select>
					</div>

					<div class="d-grid ps-5 pe-5 text-center mt-3">
						<button type="submit" class="btn btn-primary btn-lg">
							<div class="text-center m">JOIN</div>
						</button>
					</div>
				</div>
			</form>
		</div>
	</div>

	<script>
		
		$(document).ready(function() {
			
		});
	
	</script>
	
</body>
</html>