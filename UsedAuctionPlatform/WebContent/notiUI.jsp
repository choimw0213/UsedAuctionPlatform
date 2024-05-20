<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/notiUI.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>

	<div id="project_container">

		<div class="row d-flex sticky-top pt-2" id="top1">
			<div class="d-flex align-items-center justify-content-between p-2 ">
				<div class="m-0" id="pre">
					<img src="images/icon/arrow.png" id="previous" class="ms-2"
						onclick="history.back()">
				</div>
				<div>
					<h6 class="m-0 pe-4" id="top-head">알림</h6>
				</div>
			</div>
		</div>
		<div
			class="row d-flex align-content-start justify-content-center overflow-y-auto w-100 h-100 p-2"
			id="scroll">
			<div class="card d-flex align-items-center border-0 ps-2 pe-2">
				<div class="row align-content-center w-100">
					<div
						class="d-flex align-items-center justify-content-center h-100 ps-0 pe-0">
						<img src="images/product/product1/product1-img1.jpg"
							class="img-fluid">
						<div class="ms-2 w-100">
							<div class="card-text d-flex align-items-start">
								<div
									class="d-flex align-items-center justify-content-start me-1">
									<span class="badge badge-s">판매품</span>
								</div>
								<div id="item-title-group">
									<h6>신발 운동화 팔아요~ 싼 값에 가져가셔유~</h6>
									<p>Category</p>
								</div>
							</div>
							<div class="ms-1">
								<div class="card-text d-flex"></div>
								<p class="noti-content">[nickname1234567]님이 100,000P에
									입찰하셨습니다.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<hr class="m-2">
			<div class="card d-flex align-items-center border-0 ps-2 pe-2">
				<div class="row align-content-center w-100">
					<div
						class="d-flex align-items-center justify-content-center h-100 ps-0 pe-0">
						<img src="images/product/product1/product1-img1.jpg"
							class="img-fluid">
						<div class="ms-2 w-100">
							<div class="card-text d-flex align-items-start">
								<div class="d-flex justify-content-start me-1">
									<span class="badge badge-s">판매품</span>
								</div>
								<div id="item-title-group">
									<h6>Product1 Title</h6>
									<p>Category</p>
								</div>
							</div>
							<div class="ms-1">
								<div class="card-text d-flex"></div>
								<p class="noti-content">[당근짜가]님이 60,000P에 입찰하셨습니다.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<hr class="m-2">
			<div class="card d-flex align-items-center border-0 ps-2 pe-2">
				<div class="row align-content-center w-100">
					<div
						class="d-flex align-items-center justify-content-center h-100 ps-0 pe-0">
						<img src="images/product/product1/product1-img1.jpg"
							class="img-fluid">
						<div class="ms-2 w-100">
							<div class="card-text d-flex align-items-start">
								<div class="d-flex justify-content-start me-1">
									<span class="badge badge-s">판매품</span>
								</div>
								<div id="item-title-group">
									<h6>Product1 Title</h6>
									<p>Category</p>
								</div>
							</div>
							<div class="ms-1">
								<div class="card-text d-flex"></div>
								<p class="noti-content">[경매짱짱맨]님이 50,000P에 입찰하셨습니다.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<hr class="m-2">
			<div class="card d-flex align-items-center border-0 ps-2 pe-2">
				<div class="row align-content-center w-100">
					<div
						class="d-flex align-items-center justify-content-center h-100 ps-0 pe-0">
						<img src="images/product/product1/product1-img1.jpg"
							class="img-fluid">
						<div class="ms-2 w-100">
							<div class="card-text d-flex align-items-start">
								<div class="d-flex justify-content-start me-1">
									<span class="badge bg-info">구매품</span>
								</div>
								<div id="item-title-group">
									<h6>Product1 Title</h6>
									<p>Category</p>
								</div>
							</div>
							<div class="ms-1">
								<div class="card-text d-flex"></div>
								<p class="noti-content">[홍길동]님이 25,000P에 입찰하셨습니다.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<hr class="m-2">
			<div class="card d-flex align-items-center border-0 ps-2 pe-2">
				<div class="row align-content-center w-100">
					<div
						class="d-flex align-items-center justify-content-center h-100 ps-0 pe-0">
						<img src="images/product/product1/product1-img1.jpg"
							class="img-fluid">
						<div class="ms-2 w-100">
							<div class="card-text d-flex align-items-start">
								<div class="d-flex justify-content-start me-1">
									<span class="badge bg-info">구매품</span>
								</div>
								<div id="item-title-group">
									<h6>Product1 Title</h6>
									<p>Category</p>
								</div>
							</div>
							<div class="ms-1">
								<div class="card-text d-flex"></div>
								<p class="noti-content">[쾌걸춘향몽룡]님이 20,000P에 입찰하셨습니다.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<hr class="m-2">
			<div class="card d-flex align-items-center border-0 ps-2 pe-2">
				<div class="row align-content-center w-100">
					<div
						class="d-flex align-items-center justify-content-center h-100 ps-0 pe-0">
						<img src="images/product/product1/product1-img1.jpg"
							class="img-fluid">
						<div class="ms-2 w-100">
							<div class="card-text d-flex align-items-start">
								<div class="d-flex justify-content-start me-1">
									<span class="badge bg-info">구매품</span>
								</div>
								<div id="item-title-group">
									<h6>Product1 Title</h6>
									<p>Category</p>
								</div>
							</div>
							<div class="ms-1">
								<div class="card-text d-flex"></div>
								<p class="noti-content">[쾌걸춘향몽룡]님이 20,000P에 입찰하셨습니다.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<hr class="m-2">
			<div class="card d-flex align-items-center border-0 ps-2 pe-2">
				<div class="row align-content-center w-100">
					<div
						class="d-flex align-items-center justify-content-center h-100 ps-0 pe-0">
						<img src="images/product/product1/product1-img1.jpg"
							class="img-fluid">
						<div class="ms-2 w-100">
							<div class="card-text d-flex align-items-start">
								<div class="d-flex justify-content-start me-1">
									<span class="badge badge-s">판매품</span>
								</div>
								<div id="item-title-group">
									<h6>Product1 Title</h6>
									<p>Category</p>
								</div>
							</div>
							<div class="ms-1">
								<div class="card-text d-flex"></div>
								<p class="noti-content">[호박마켓]님이 10,000P에 입찰하셨습니다.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<hr class="m-2">

		</div>

		<jsp:include page="/navbar_home.jsp"></jsp:include>
	</div>
	<script>
		$(document).ready(function() {
			
		});
	</script>
</body>

</html>