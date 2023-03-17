<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<link rel="stylesheet" href="//unpkg.com/bootstrap@4/dist/css/bootstrap.min.css">
<script src='//unpkg.com/jquery@3/dist/jquery.min.js'></script>
<script src='//unpkg.com/popper.js@1/dist/umd/popper.min.js'></script>
<script src='//unpkg.com/bootstrap@4/dist/js/bootstrap.min.js'></script>
<html>
<head>
	<title>Home</title>
</head>
<body>
<jsp:include page="../include/header.jsp"></jsp:include>

<div id="carouselExampleControls" class="carousel slide" data-ride="carousel" style="width: 100%; height: 300px">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="./resources/images/logo.png" class="d-block w-100" alt="..." style="width: 100%; height: 300px">
    </div>
    <div class="carousel-item">
      <img src="./resources/images/person-outline.png" class="d-block w-100" alt="..." style="width: 100%; height: 300px">
    </div>
    <div class="carousel-item">
      <img src="./resources/images/search-outline.png" class="d-block w-100" alt="..." style="width: 100%; height: 300px">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<hr>

<div>
<h1 style="text-align: center"><b>뉴스</b></h1>
</div>

<div class="container">
  <div class="row">
    <div class="col-md-4">
      <div class="card">
        <img src="./resources/images/search-outline.png" class="card-img-top" alt="...">
        <div class="card-body">
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="card">
        <img src="./resources/images/search-outline.png" class="card-img-top" alt="...">
        <div class="card-body">
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="card">
        <img src="./resources/images/search-outline.png" class="card-img-top" alt="...">
        <div class="card-body">
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
        </div>
      </div>
    </div>
  </div>
</div>


<div>
<h1 style="text-align: center"><b>날씨별 음악 추천</b></h1>
</div>

<div class="container">
  <div class="row">
    <div class="col-md-4">
      <div class="card">
        <img src="./resources/images/search-outline.png" class="card-img-top" alt="...">
        <div class="card-body">
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="card">
        <img src="./resources/images/search-outline.png" class="card-img-top" alt="...">
        <div class="card-body">
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="card">
        <img src="./resources/images/search-outline.png" class="card-img-top" alt="...">
        <div class="card-body">
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
        </div>
      </div>
    </div>
  </div>
</div>


<div>
<h1 style="text-align: center"><b>굿즈</b></h1>
</div>

<div class="container">
  <div class="row">
    <div class="col-md-4">
      <div class="card">
        <img src="./resources/images/search-outline.png" class="card-img-top" alt="...">
        <div class="card-body">
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="card">
        <img src="./resources/images/search-outline.png" class="card-img-top" alt="...">
        <div class="card-body">
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="card">
        <img src="./resources/images/search-outline.png" class="card-img-top" alt="...">
        <div class="card-body">
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
        </div>
      </div>
    </div>
  </div>
</div>

<div>
<h1 style="text-align: center"><b>게시판</b></h1>
</div>
</body>
<jsp:include page="../include/footer.jsp"></jsp:include>
</html>
