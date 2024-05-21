
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

		<div class="row align-content-center w-100 h-100">
			<p class="fs-1 text-center">회원가입</p>
			<form action="controller?cmd=joinAction" method="post">
				<div
					class="row g-2 d-flex align-items-center justify-content-center pt-2 pb-2">
					<div class="col-3 text-end p-0">
						<label class="col-form-label">아이디</label>
					</div>
					<div class="col-7 ms-1">
						<input name="userId" type="text" id="id"
							class="form-control-sm">
						<span id="idCheck"></span>	
					</div>
					<div class="col-3 text-end p-0">
						<label for="inputPassword6" class="col-form-label">비밀번호</label>
					</div>
					<div class="col-7 ms-1">
						<input name="userPw" type="password" id="pw"
							class="form-control-sm" aria-describedby="passwordHelpInline">
					</div>
					<div class="col-3 text-end p-0">
						<label for="inputPassword6" class="col-form-label">비밀번호 확인</label>
					</div>
					<div class="col-7 ms-1">
						<input name="userPw" type="password" class="form-control-sm"
							aria-describedby="passwordHelpInline">
					</div>
					<div class="col-3 text-end p-0">
						<label class="col-form-label">이름</label>
					</div>
					<div class="col-7 ms-1">
						<input name="name" type="text" id="inputId"
							class="form-control-sm">
					</div>
					<div class="col-3 text-end p-0">
						<label class="col-form-label">닉네임</label>
					</div>
					<div class="col-7 ms-1">
						<input name="nickname" type="text" id="inputId"
							class="form-control-sm">
					</div>
					<div class="col-3 text-end p-0">
						<label class="col-form-label">전화번호</label>
					</div>
					<div class="col-7 ms-1">
						<input name="phoneNumber" type="text" id="inputId"
							class="form-control-sm">
					</div>
					<div class="col-3 text-end p-0">
						<label class="col-form-label">이메일</label>
					</div>
					<div class="col-7 ms-1">
						<input name="email" type="text" id="inputId"
							class="form-control-sm">
					</div>
					<div class="col-3 text-end p-0">
						<label class="col-form-label pt-1 mb-4">주소</label>
					</div>
					<div class="col-7 ms-1">
						<select class="form-select form-select-sm mb-2"
							aria-label=".form-select-sm example" name="cityAddress" onchange="selectBox1(this.value);">
							<option selected value="서울특별시">서울특별시</option>
						</select> <select class="form-select form-select-sm"
							aria-label=".form-select-smexample" name="districtAddress" onchange="selectBox2(this.value);">
							<option selected value="강남구">강남구</option>
							<option value="강동구">강동구</option>
							<option value="강북구">강북구</option>
							<option value="강서구">강서구</option>
						</select>
					</div>

					<div class="d-grid ps-5 pe-5 text-center mt-4 mb-3">
						<button type="submit" class="btn btn-primary btn-lg">
							<div class="text-center m">JOIN</div>
						</button>
					</div>
				</div>
			</form>
		</div>
	</div>

	<script>
	
	
		$("id").on("change", function(){
			$.ajax({url:"controller?cmd=idCheck",
					data : {id : $(this).val},
					success : function(responseText){
						
						alert(result_data.result);
					}});
		});
			
		
	</script>
	
</body>
</html>