<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
 <link rel="stylesheet" href="css/common.css">
 <link rel="stylesheet" href="css/mainManager.css">
<title>Insert title here</title>
</head>
<body>

<div id="project_container">
	<div class = "container-fulid" >
	<ul class="list-group">
      <li class="list-group-item border-0 p-0">
		<table class = "table">
			<thead>
 
 			
				<tr class="table-borderless">
					<th class="col-md-3">
						<img src="images/icon.png" class="img-fluid rounded-circle border">
					</th>
					<th class="usersInfo mt-0 mb-0">
						<p class="userIdP mt-0 mb-0" name="userId">user1234</p>
						<p class="phoneNumberP mt-0 mb-0" name="phoneNumber">010-5678-5678</p>
						<div class="sameP">
						<p class="rateP mt-0 mb-0" name="rate">★4.4</p>
						<p class="reportCountP mt-0 mb-0" name="reportCount">신고 1건</p>
						</div>
						
						<!-- js코드 짜서 container-fulid를 누르면 신고 목록이 나오게 할 예정ㅇㅇ (아직 미완) -->
						<div class="reportList mt-3">
					    	<th>
								<img src="images/icon.png" class="img-fluid" style="width:95px; height:95px;">
							</th> 
							<th>
								<p class="reportedTitle">옷 팔아요</p>
								<p class="reportedCategory">의료</p>
								<p class="reportedStartPrice">입찰가:6000P</p>
								<p class="reportedPrice">즉구가:10000P</p>
								<p class="reportedAddress">서울특별시 금천구</p>
								<p class="reportedSort">2024년 05월 16일 17:46 마감</p>
								<div class="samePlace">
								<span class="productState">거래 완료</span>
								<p class="bidCount">입찰 7건</p>
								</div>
							</th>
						</div>
						
					</th>
					<th class="lineUp"></th>
				</tr>	
			
			</thead>
		</table>
		</li>
	  </ul>
	</div>	
</div>
<script type="text/javascript">



</script>
</body>
</html>