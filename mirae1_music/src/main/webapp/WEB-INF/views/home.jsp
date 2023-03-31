<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel="stylesheet" href="//unpkg.com/bootstrap@4/dist/css/bootstrap.min.css">
<script src='//unpkg.com/jquery@3/dist/jquery.min.js'></script>
<script src='//unpkg.com/popper.js@1/dist/umd/popper.min.js'></script>
<script src='//unpkg.com/bootstrap@4/dist/js/bootstrap.min.js'></script>
<html>
<head>
	<title>Home</title>
</head>
<body>

<%@ include file="include/header.jsp" %>
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
        <img src="https://i.ytimg.com/vi/tXV7dfvSefo/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBOVrSH-rVl8NRqgfjRrQJSKlc0Ww" class="card-img-top" alt="...">
        <div class="card-body">
          <p class="card-text">가수 : 장범준</p> <p>제목 : 벚꽃엔딩</p><br>
          <a href="/musicDetail?music_id=1" class="btn btn-primary">음악 상세정보</a>
        <a href="https://www.youtube.com/watch?v=tXV7dfvSefo" target="_blank" class="btn btn-primary">유튜브에서 보기</a>
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="card">
        <img src="https://i.ytimg.com/vi/ouR4nn1G9r4/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDOcxrzcwClk_wolt5LesBcIwK7WQ" class="card-img-top" alt="...">
        <div class="card-body">
          <p class="card-text">가수 : 아이유</p> <p>제목 : 봄 사랑 벚꽃 말고</p><br>
          <a href="/musicDetail?music_id=2" class="btn btn-primary">음악 상세정보</a>
          <a href="https://www.youtube.com/watch?v=ouR4nn1G9r4" target="_blank" class="btn btn-primary">유튜브에서 보기</a>
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="card">
        <img src="https://i.ytimg.com/vi/PK02_Q5hHKo/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLC_UGxIHN9FZKGF3u6tNcFhL9sBiQ" class="card-img-top" alt="...">
        <div class="card-body">
          <p class="card-text">가수 : ASH ISLAND</p> <p>제목 : rainy day</p><br>
          <a href="/musicDetail?music_id=3" class="btn btn-primary">음악 상세정보</a>
          <a href="https://www.youtube.com/watch?v=PK02_Q5hHKo" target="_blank" class="btn btn-primary">유튜브에서 보기</a>
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
        <img src="/resources/images/goods/bangtan_goods1.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <p class="card-text">방탄 굿즈 개추ㅋㅋ</p>
          <a href="/product_detail?p_id=2">
                <button class="btn btn-primary" type="submit">구매하기</button>
          </a>
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="card">
        <img src="/resources/images/goods/ive_goods1.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <p class="card-text">아이브는 씹추ㅋㅋ</p>
          <a href="/product_detail?p_id=3">
                <button class="btn btn-primary" type="submit">구매하기</button>
		  </a>
        </div>
      </div>
    </div>
    <div class="col-md-4">	
      <div class="card">
        <img src="/resources/images/goods/ive_goods2.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <p class="card-text">아이브 씹추2ㅋㅋ</p>
          <a href="/product_detail?p_id=4">
                <button class="btn btn-primary" type="submit">구매하기</button>
          </a>
        </div>
      </div>
    </div>
  </div>
</div>


<div>
<h1 style="text-align: center"><b>게시판</b></h1>
</div>
</body>
<jsp:include page="include/footer.jsp"></jsp:include>
</html>
