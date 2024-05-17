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
						<img src="images/icon/icon.png" class="img rounded-circle border">
					</th>
					<th class="usersInfo mt-0 mb-0">
						<p class="userIdP mt-0 mb-0" name="userId">user1234</p>
						<p class="phoneNumberP mt-0 mb-0" name="phoneNumber">010-5678-5678</p>
						<div class="sameP">
						<p class="rateP mt-0 mb-0" name="rate">★4.4</p>
						<p class="reportCountP mt-0 mb-0" name="reportCount">신고 1건</p>
						</div>
					</th>
					<th class="lineUp"></th>
						<!-- js코드 짜서 container-fulid를 누르면 신고 목록이 나오게 할 예정ㅇㅇ (아직 미완) -->
				<tr class="table-borderless">
                <div class="d-flex justify-content-center" id="reportedList">
                    <img src="images/icon/home.png" class="img-fluid" />
                    <div class="ms-1">
                    <div class="card-text d-flex">
                        <h6>Product1 Title</h6>
                        <span class="badge badge-s">경매중</span>
                    </div>
                    <p>Product1 Description</p>
                    </div>
                </div>
              	
				</tr>
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