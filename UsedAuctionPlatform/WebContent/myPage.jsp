<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" rel="stylesheet">
      <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/myPage.css">
<title>Insert title here</title>
</head>
<body>






	




  <!-- The Modal -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Modal Heading</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
          <input class="form-control form-control-lg" type="number">
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>




<div id="project_container">
	<div class = "container-fulid">
		<table class = "table">
			<thead>
				<tr class="table-borderless">
					<th class="col-md-3">
						<img src="images/icon.png" class="img-fluid rounded-circle border">
					</th>
					<th class="maPageInfo">
						<p class="nicknameP">nickname1234</p>
						<p class="rateP">★4.4</p>
					</th>
				</tr>
				<tr>
					<th class="pointTxt">
						<p class="pointFont">10,000P</p>
						<div class="cBeB">
							<div class="chargeButton">
								<button type="button" class="btn btn-primary btn-block" data-toggle="modal" data-target="#myModal">충전</button>	
							</div>
							<div class="exchangeButton">
								<button type="button" class="btn btn-primary btn-block" data-toggle="modal" data-target="#myModal">환전</button>	
							</div>
						</div>
					</th>
					<th></th>	
				</tr>	
				<tr>
					<th id="myActButton" class="border-0">
						<button type="button" class="btn btn-primary btn-block">회원정보수정</button>
						<button type="button" class="btn btn-primary btn-block">로그아웃</button>
						<button type="button" class="btn btn-primary btn-block">회원탈퇴</button>
					</th>
			
				</tr>		
			</thead>
		</table>
	</div>	
</div>

</body>
</html>