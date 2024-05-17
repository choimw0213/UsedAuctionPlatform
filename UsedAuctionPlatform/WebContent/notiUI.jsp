<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="css/common.css">
  <link rel="stylesheet" href="css/notiUI.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>
</head>

<body>

  <div id="project_container">

    <div id="top">
      <img src="images/icon/arrow.png" id="previous">
      <h6 id="top-head">알림</h6>
      <div></div>
    </div>

    <div class="container">
      <br>
      <ul class="list-group w-100">
        <hr class="my-1">
        <li class="list-group-item border-0 p-0">
          <div class="d-flex">
            <img src="images/product/product1/product1-img1.jpg" class="img-fluid">
            <div class="ms-1">
              <div class="card-text d-flex">
                <span class="badge badge-s">판매품</span>
                <div id="item-title-group">
                  <h6>Product1 Title</h6>
                  <p>Category</p>
                </div>
              </div>
              <p class="noti-content">[nickname1234]님이 100,000P에 입찰하셨습니다.</p>
            </div>
          </div>
        </li>
        <hr class="my-1">
        <li class="list-group-item border-0 p-0">
          <div class="d-flex">
            <img src="images/product/product1/product1-img1.jpg" class="img-fluid">
            <div class="ms-1">
              <div class="card-text d-flex">
                <span class="badge badge-s">판매품</span>
                <div id="item-title-group">
                  <h6>Product1 Title</h6>
                  <p>Category</p>
                </div>
              </div>
              <p class="noti-content">[당근짜가]님이 60,000P에 입찰하셨습니다.</p>
            </div>
          </div>
        </li>
        <hr class="my-1">
        <li class="list-group-item border-0 p-0">
          <div class="d-flex">
            <img src="images/product/product1/product1-img1.jpg" class="img-fluid">
            <div class="ms-1">
              <div class="card-text d-flex">
                <span class="badge badge-s">판매품</span>
                <div id="item-title-group">
                  <h6>Product1 Title</h6>
                  <p>Category</p>
                </div>
              </div>
              <p class="noti-content">[경매짱짱맨]님이 50,000P에 입찰하셨습니다.</p>
            </div>
          </div>
        </li>
        <hr class="my-1">
        <li class="list-group-item border-0 p-0">
          <div class="d-flex">
            <img src="images/product/product2/product2-img1.jpg" class="img-fluid">
            <div class="ms-1">
              <div class="card-text d-flex">
                <span class="badge bg-info">구매품</span>
                <div id="item-title-group">
                  <h6>Product2 Title</h6>
                  <p>Category</p>
                </div>
              </div>
              <p class="noti-content">[홍길동]님이 25,000P에 입찰하셨습니다.</p>
            </div>
          </div>
        </li>
        <hr class="my-1">
        <li class="list-group-item border-0 p-0">
          <div class="d-flex">
            <img src="images/product/product2/product2-img1.jpg" class="img-fluid">
            <div class="ms-1">
              <div class="card-text d-flex">
                <span class="badge bg-info">구매품</span>
                <div id="item-title-group">
                  <h6>Product2 Title</h6>
                  <p>Category</p>
                </div>
              </div>
              <p class="noti-content">[이몽룡]님이 20,000P에 입찰하셨습니다.</p>
            </div>
          </div>
        </li>
        <hr class="my-1">
        <li class="list-group-item border-0 p-0">
          <div class="d-flex">
            <img src="images/product/product1/product1-img1.jpg" class="img-fluid">
            <div class="ms-1">
              <div class="card-text d-flex">
                <span class="badge badge-s">판매품</span>
                <div id="item-title-group">
                  <h6>Product1 Title</h6>
                  <p>Category</p>
                </div>
              </div>
              <p class="noti-content">[호박마켓]님이 10,000P에 입찰하셨습니다.</p>
            </div>
          </div>
        </li>
        <hr class="my-1">
      </ul>
    </div>
    		<jsp:include page="/navbar_home.jsp"></jsp:include>
  </div>

</body>

</html>