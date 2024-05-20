<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="css/common.css">
  <link rel="stylesheet" href="css/chatList.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>
</head>
<style>
.chatP{
	width:240px;
	height:18px;
	white-space: wrap;
	overflow: hidden;
	text-overflow: ellipsis;
}

a{
	text-decoration: none;
	color:#000000;
}
</style>
<body>

  <div id="project_container">

    <div id="top">
      <img src="images/icon/arrow.png" id="previous" onclick="history.back()">
      <h6 id="top-head">채팅</h6>
      <a href="chat.jsp">
      <img src="images/icon/headset.png">
      </a>
    </div>

    <div class="container">

      <ul class="list-group w-100">
        <hr class="my-1">
        <li class="list-group-item border-0 p-0">
        <a href="chat.jsp">
          <div class="d-flex">
            <img src="images/product/product1/product1-img1.jpg" class="img-fluid">
            <div class="ms-1">
              <div class="card-text d-flex">
                <div id="item-title-group">
                  <div class="d-flex">
                    <span class="badge badge-s">판매품</span>
                    <p>nickname1234</p>
                  </div>
                  <p class="chatP">제주도 사는데, 배송이 어느정도 ...</p>
                </div>
              </div>
            </div>
          </div>
         </a> 
        </li>
        <hr class="my-1">
        <li class="list-group-item border-0 p-0">
        <a href="chat.jsp">
          <div class="d-flex">
            <img src="images/product/product1/product1-img1.jpg" class="img-fluid">
            <div class="ms-1">
              <div class="card-text d-flex">
                <div id="item-title-group">
                  <div class="d-flex">
                    <span class="badge badge-s">판매품</span>
                    <p>닉네임마바사아</p>
                  </div>
                  <p class="chatP">이렇게 싸게 팔면 남는게 있나요?</p>
                </div>
              </div>
            </div>
          </div>
         </a> 
        </li>
        <hr class="my-1">
        <li class="list-group-item border-0 p-0">
        <a href="chat.jsp">
          <div class="d-flex">
            <img src="images/product/product1/product1-img1.jpg" class="img-fluid">
            <div class="ms-1">
              <div class="card-text d-flex">
                <div id="item-title-group">
                  <div class="d-flex">
                    <span class="badge badge-s">판매품</span>
                    <p>닉네임가나다라</p>
                  </div>
                  <p class="chatP">너무 비싸네요 안 삽니다너무 비싸네요 안 삽니다너무 비싸네요 안 삽니다너무 비싸네요 안 삽니다너무 비싸네요 안 삽니다</p>
                </div>
              </div>
            </div>
          </div>
          </a>
        </li>
        <hr class="my-1">
        <li class="list-group-item border-0 p-0">
        <a href="chat.jsp">
          <div class="d-flex">
            <img src="images/product/product2/product2-img1.jpg" class="img-fluid">
            <div class="ms-1">
              <div class="card-text d-flex">
                <div id="item-title-group">
                  <div class="d-flex">
                    <span class="badge bg-info">구매품</span>
                    <p>홍길동</p>
                  </div>
                  <p class="chatP">와 신발이 정말 이쁘네요</p>
                </div>
              </div>
            </div>
          </div>
          </a>
        </li>
        <hr class="my-1">
        <li class="list-group-item border-0 p-0">
        <a href="chat.jsp">
          <div class="d-flex">
            <img src="images/product/product1/product1-img1.jpg" class="img-fluid">
            <div class="ms-1">
              <div class="card-text d-flex">
                <div id="item-title-group">
                  <div class="d-flex">
                    <span class="badge badge-s">판매품</span>
                    <p>nickname5678</p>
                  </div>
                  <p class="chatP">대박나세요~</p>
                </div>
              </div>
            </div>
          </div>
          </a>
        </li>
        <hr class="my-1">
      </ul>

    </div>
    		<jsp:include page="/navbar_chat.jsp"></jsp:include>
  </div>

</body>

</html>