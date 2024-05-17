<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="css/common.css">
  <link rel="stylesheet" href="css/buyList.css">
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
      <h6 id="top-head">구매내역</h6>
      <div></div>
    </div>

    <div class="container">

      <ul class="list-group w-100">
        <hr class="my-1">
        <li class="list-group-item border-0 p-0">
          <div class="d-flex">
            <img src="images/product/product1/product1-img1.jpg" class="img-fluid">
            <div class="ms-1">
              <div class="card-text d-flex">
                <div id="item-title-group">
                  <h6>Product1 Title</h6>
                  <p>Category</p>
                  <p>서울특별시 금천구 | 종료일 2024-05-12</p>
                  <span class="badge badge-s">입찰가</span>
                  <span>10,000P</span>
                  <span class="badge badge-s">즉구가</span>
                  <span>20,000P</span>
                  <span>입찰 7건</span>
                </div>
              </div>
            </div>
          </div>
        </li>
        <hr class="my-1">
        <li class="list-group-item border-0 p-0">
          <div class="d-flex">
            <img src="images/product/product2/product2-img1.jpg" class="img-fluid">
            <div class="ms-1">
              <div class="card-text d-flex">
                <div id="item-title-group">
                  <h6>Product2 Title</h6>
                  <p>Category</p>
                  <p>서울특별시 금천구 | 종료일 2024-05-12</p>
                  <span class="badge badge-e">거래완료</span>
                  <span>10,000P</span>
                  <span>입찰 7건</span>
                  <div>
                    <button id="buyComplete" class="btn btn-primary rounded-pill">구매확정</button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </li>
        <hr class="my-1">
        <li class="list-group-item border-0 p-0">
          <div class="d-flex">
            <img src="images/product/product3/product3-img1.png" class="img-fluid">
            <div class="ms-1">
              <div class="card-text d-flex">
                <div id="item-title-group">
                  <h6>Product3 Title</h6>
                  <p>Category</p>
                  <p>서울특별시 금천구 | 종료일 2024-05-12</p>
                  <span class="badge badge-e">거래완료</span>
                  <span>10,000P</span>
                  <span>입찰 7건</span>
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
  </div>

</body>

</html>