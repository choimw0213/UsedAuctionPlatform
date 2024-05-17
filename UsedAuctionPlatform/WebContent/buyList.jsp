<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/buyList.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<style type="text/css">
.modal-title {
	color: white;
}

.modal-header, .modal-footer {
	border: none;
}

.modal-header, .modal-body, .modal-footer {
	padding: 5px;
}

.modal-content {
	background-color: #FFB966;
	width: 270px;
	height: 155px;
}

.modal-footer>button {
	background-color: #FFD9AC;
	border-color: #FFD9AC;
	color: black;
	font-weight: 600;
	margin-right: 10px;
}

.btn:hover {
	background-color: #AAAAAA;
	border-color: #AAAAAA;
}

.btn:active {
	background-color: #AAAAAA !important;
	border-color: #AAAAAA !important;
}

#starContainer {
	display: flex;
	justify-content: center;
	align-items: center;
}

.star {
	width: 50px;
	height: 50px;
	background-size: cover;
	display: inline-block;
}
</style>

</head>

<body>

	<div id="project_container">

		<div id="top">
			<img src="images/icon/arrow.png" id="previous">
			<h6 id="top-head">구매내역</h6>
			<div></div>
		</div>

		<div class="container">

			<ul class="list-group w-100">
				<hr class="my-1">
				<li class="list-group-item border-0 p-0">
					<div class="d-flex">
						<img src="images/product/product1/product1-img1.jpg"
							class="img-fluid">
						<div class="ms-1">
							<div class="card-text d-flex">
								<div id="item-title-group">
									<h6>Product1 Title</h6>
									<p>Category</p>
									<p>서울특별시 금천구 | 종료일 2024-05-12</p>
									<span class="badge badge-s">입찰가</span> <span>10,000P</span> <span
										class="badge badge-s">즉구가</span> <span>20,000P</span> <span>입찰
										7건</span>
								</div>
							</div>
						</div>
					</div>
				</li>
				<hr class="my-1">
				<li class="list-group-item border-0 p-0">
					<div class="d-flex">
						<img src="images/product/product2/product2-img1.jpg"
							class="img-fluid">
						<div class="ms-1">
							<div class="card-text d-flex">
								<div id="item-title-group">
									<h6>Product2 Title</h6>
									<p>Category</p>
									<p>서울특별시 금천구 | 종료일 2024-05-12</p>
									<span class="badge badge-e">거래완료</span> <span>10,000P</span> <span>입찰
										7건</span>
									<div>
										<button id="buyComplete" class="btn btn-primary rounded-pill"
											data-bs-toggle="modal" data-bs-target="#exampleModal">구매확정</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</li>
				<hr class="my-1">
				<li class="list-group-item border-0 p-0">
					<div class="d-flex">
						<img src="images/product/product3/product3-img1.png"
							class="img-fluid">
						<div class="ms-1">
							<div class="card-text d-flex">
								<div id="item-title-group">
									<h6>Product3 Title</h6>
									<p>Category</p>
									<p>서울특별시 금천구 | 종료일 2024-05-12</p>
									<span class="badge badge-e">거래완료</span> <span>10,000P</span> <span>입찰
										7건</span>
									<div>
										<button id="buyEnd" class="btn btn-primary rounded-pill">구매확정완료</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</li>
				<hr class="my-1">
			</ul>
		</div>
		<jsp:include page="/navbar_buy.jsp"></jsp:include>
	</div>

	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header d-flex justify-content-center">
					<h5 class="modal-title" id="exampleModalLabel">평가</h5>
				</div>
				<div class="modal-body">
					<div id="starContainer">
						<div class="star" id="star1"></div>
						<div class="star" id="star2"></div>
						<div class="star" id="star3"></div>
						<div class="star" id="star4"></div>
						<div class="star" id="star5"></div>
					</div>
				</div>
				<div class="modal-footer justify-content-center">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">취소</button>
					<button id="save" type="button" class="btn btn-primary">확인</button>
				</div>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>

	<script type="text/javascript">
		// 별 이미지 요소 가져오기
		const
		stars = document.querySelectorAll('.star');
		let
		num = 0;

		// 각 별에 마우스 이벤트 추가
		stars.forEach(function(star, index) {
			star.style.backgroundImage = 'url("./images/icon/star_empty.png")';

			star.addEventListener('click', function(event) {
				var clickedX = event.clientX - star.getBoundingClientRect().left;
				//alert(index);
				//alert(clickedX);
				highlightStars(index, clickedX);
			});
		});

		function highlightStars(index, clickedX) {
			num = index;
			var imageWidth = 50;

			for (var i = 0; i < index; i++) {
				stars[i].style.backgroundImage = 'url("./images/icon/star_full.png")';
			}
			
			if (clickedX < imageWidth/2){
				stars[index].style.backgroundImage = 'url("./images/icon/star_half.png")';
				num += 0.5;
			} else {
				stars[index].style.backgroundImage = 'url("./images/icon/star_full.png")';
				num += 1;
			}

			for (var i = index + 1; i < stars.length; i++) {
				stars[i].style.backgroundImage = 'url("./images/icon/star_empty.png")';
			}
		}

		document.querySelector("#save").addEventListener('click', save);
		function save() {
			//alert(num + '점');
			//$('#exampleModal').modal('hide');
		    $.ajax({
		        type: "POST",
		        url: "controller?cmd=setRateAction",
		        data: { rate: num },
		        success: function(response) {
		            alert("평가 저장에 성공했습니다.");
		            $('#exampleModal').modal('hide');
		        },
		        error: function(xhr, status, error) {
		            alert("평가 저장에 실패했습니다.");
		        }
		    });
		}
	</script>

</body>
</html>






