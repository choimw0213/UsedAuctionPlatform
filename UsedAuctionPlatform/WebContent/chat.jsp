<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="css/common.css">
  <link rel="stylesheet" href="css/chat.css">
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
      <h6 id="top-head">nickname1234님과의 채팅</h6>
      <div></div>
    </div>
    <br>
    <div class="container">

    <li class="list-group-item border-0 p-0">
      <div class="d-flex">
        <img src="images/product/product1/product1-img1.jpg" class="img-fluid">
        <div class="ms-1">
          <div class="card-text d-flex">
            <h6>Product1 Title</h6>
            <span class="badge badge-s">경매중</span>
          </div>
          <p class="product-info">생활용품</p>
          <p class="product-info">서울특별시 금천구</p>
          <div class="text-group">
            <p class="product-info">2024년 5월 12일 24:00 마감</p>
            <p class="product-info">입찰 5건</p>
          </div>
        </div>
      </div>
    </li>
    <hr class="my-1">

    <ul class="list-group w-100">
      <div class="chatbox you">제주도 사는데, 배송이 어느정도 걸리는지 알 수 있을까요?</div>
      <div class="chatbox you">다른 제품보다 더 좋아보여서 연락드려요.</div>
      <div class="chatbox me">급하시면</div>
      <div class="chatbox me">오늘내로 보내드릴게요.</div>
      <div class="chatbox you">생각보다 빠르네요!</div>
      <div class="chatbox you">감사합니다</div>
      <div class="chatbox me">스크롤바 테스트</div>
      <div class="chatbox you">스크롤바 테스트</div>
      <div class="chatbox me">스크롤바 테스트</div>
      <div class="chatbox you">스크롤바 테스트</div>
      <div class="chatbox me">스크롤바 테스트</div>
      <div class="chatbox you">스크롤바 테스트</div>
      <div class="chatbox me">스크롤바 테스트</div>
      <div class="chatbox you">스크롤바 테스트</div>
      <div class="chatbox me">스크롤바 테스트</div>
      <div class="chatbox you">스크롤바 테스트</div>
    </ul>

    </div>

    <div class="chat-input">
      <input placeholder="채팅하기">
      <a href="#">
        <img src="images/icon/send.png">
      </a>

    </div>

  </div>

</body>
</html>