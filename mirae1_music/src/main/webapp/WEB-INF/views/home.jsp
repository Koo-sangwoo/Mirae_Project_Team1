<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!--   <script src='//unpkg.com/bootstrap@4/dist/js/bootstrap.min.js'></script>
<link rel="stylesheet" href="//unpkg.com/bootstrap@4/dist/css/bootstrap.min.css">  -->

<script src='//unpkg.com/jquery@3/dist/jquery.min.js'></script>
<!-- <script src='//unpkg.com/popper.js@1/dist/umd/popper.min.js'></script>
 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
	integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
	crossorigin="anonymous"></script>


<html>
<head>
<title>Home</title>
</head>

<style>
#box * {
	padding: 10px;
}

#box .img {
	display: block;
	width: 100%;
	padding: 0;
}

#box {
	width: 300px;
	height: 380px;
	border-radius: 8px;
	overflow: hidden;
	margin: 100px auto;
	transition: all 0.3s cubic-bezier(0.42, 0.0, 0.58, 1.0);
}

#box:hover {
	box-shadow: 0 14px 28px rgba(0, 0, 0, 0.25), 0 10px 10px
		rgba(0, 0, 0, 0.22);
	transform: translateY(-10px);
}

#box .heading {
	font-size: 28px;
}

#box .data {
	display: flex;
	flex-direction: column;
	font-size: 12px;
	color: #666;
}

#box .data span {
	padding: 0;
}

#box .data .date {
	margin-bottom: 2px;
}

#box .data .user-id {
	font-size: 16px;
	color: #000;
	font-weight: 600;
}

#box .texts {
	font-size: 14px;
	line-height: 18px;
}
 a:link {color:black; text-decoration: none;}
  a:visited {color:black; text-decoration: none;}
  a:hover {color:black; text-decoration: underline;} 
</style>
<body>

	<jsp:include page="./include/header.jsp"></jsp:include>
	
	
	<div id="carouselExampleDark" class="carousel carousel-dark slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleDark"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleDark"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleDark"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active" data-bs-interval="10000">
				<img src="./resources/images/banner1.jpg" class="d-block w-100"
					alt="..." height="420px">
				<div class="carousel-caption d-none d-md-block">
					<h5>뉴스</h5>
					<p>도리, 첫 EP [Cinema Pt. 1] 발표</p>
				</div>
			</div>
			<div class="carousel-item" data-bs-interval="2000">
				<img src="./resources/images/banner1.jpg" class="d-block w-100"
					alt="..." height="420px">
				<div class="carousel-caption d-none d-md-block">
					<h5>뉴스</h5>
					<p>도리, 첫 EP [Cinema Pt. 1] 발표</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="./resources/images/banner1.jpg" class="d-block w-100"
					alt="..." height="420px">
				<div class="carousel-caption d-none d-md-block">
					<h5>뉴스</h5>
					<p>도리, 첫 EP [Cinema Pt. 1] 발표.</p>
				</div>
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleDark" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleDark" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>



	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div id="box" style="border: 1px solid #ccc;">
					<img class="img" src="./resources/images/banner1.jpg" alt=""
						width="180" height="210">
					<h1 class="heading"><a href="/newsview?pageNum=1&amount=20&keyword=&type=&news_id=19">도리,첫 EP[Cinema Pt.1]발표</a></h1>
					<div class="data">
						<span class="date">Mar.30</span> <span class="user-id"> 국내
							뉴스</span>
					</div>
					<p class="texts">Lorem ipsum dolor sit amet consectetur
						adipisicing elit.</p>
				</div>
			</div>


			<div class="col-md-4">
				<div id="box" style="border: 1px solid #ccc;">
					<img class="img" src="./resources/images/황세현.jpg" alt=""
						width="180" height="210">
					<h1 class="heading"><a href="http://localhost:8181/newsview?pageNum=1&amount=20&keyword=&type=&news_id=28&news_id=24&news_id=21">황세현, 더블 싱글 [HOW?] 발표</a></h1>
					<div class="data">
						<span class="date">Mar.30</span> <span class="user-id"> 국내
							뉴스</span>
					</div>
					<p class="texts">Lorem ipsum dolor sit amet consectetur
						adipisicing elit.</p>
				</div>
			</div>


			<div class="col-md-4">
				<div id="box" style="border: 1px solid #ccc;">
					<img class="img" src="./resources/images/안경잽이.jpg" alt=""
						width="180" height="210">
					<h1 class="heading"><a href="http://localhost:8181/newsview?pageNum=1&amount=20&keyword=&type=&news_id=28">안경잽이, 새 싱글 "필요해" 발표</a></h1>
					<div class="data">
						<span class="date">Mar.30</span> <span class="user-id"> 국내
							뉴스</span>
					</div>
					<p class="texts">Lorem ipsum dolor sit amet consectetur
						adipisicing elit.</p>
				</div>
			</div>


		</div>
	</div>


	<div>
		<h1 style="text-align: center">
			<b>날씨별 음악 추천</b>
		</h1>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="card">
					<img
						src="https://i.ytimg.com/vi/tXV7dfvSefo/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBOVrSH-rVl8NRqgfjRrQJSKlc0Ww"
						class="card-img-top" alt="...">
					<div class="card-body">
						<p class="card-text">가수 : 장범준</p>
						<p>제목 : 벚꽃엔딩</p>
						<br> <a href="/musicDetail?music_id=1"
							class="btn btn-primary">음악 상세정보</a> <a
							href="https://www.youtube.com/watch?v=tXV7dfvSefo"
							target="_blank" class="btn btn-primary">유튜브에서 보기</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">
					<img
						src="https://i.ytimg.com/vi/ouR4nn1G9r4/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDOcxrzcwClk_wolt5LesBcIwK7WQ"
						class="card-img-top" alt="...">
					<div class="card-body">
						<p class="card-text">가수 : 아이유</p>
						<p>제목 : 봄 사랑 벚꽃 말고</p>
						<br> <a href="/musicDetail?music_id=2"
							class="btn btn-primary">음악 상세정보</a> <a
							href="https://www.youtube.com/watch?v=ouR4nn1G9r4"
							target="_blank" class="btn btn-primary">유튜브에서 보기</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">
					<img
						src="https://i.ytimg.com/vi/PK02_Q5hHKo/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLC_UGxIHN9FZKGF3u6tNcFhL9sBiQ"
						class="card-img-top" alt="...">
					<div class="card-body">
						<p class="card-text">가수 : ASH ISLAND</p>
						<p>제목 : rainy day</p>
						<br> <a href="/musicDetail?music_id=3"
							class="btn btn-primary">음악 상세정보</a> <a
							href="https://www.youtube.com/watch?v=PK02_Q5hHKo"
							target="_blank" class="btn btn-primary">유튜브에서 보기</a>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div>
		<h1 style="text-align: center">
			<b>굿즈</b>
		</h1>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="card">
					<img src="/resources/images/goods/bangtan_goods1.jpg"
						class="card-img-top" alt="...">
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
					<img src="/resources/images/goods/ive_goods1.jpg"
						class="card-img-top" alt="...">
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
					<img src="/resources/images/goods/ive_goods2.jpg"
						class="card-img-top" alt="...">
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
		<h1 style="text-align: center">
			<b>게시판</b>
		</h1>

	</div>
</body>
<jsp:include page="include/footer.jsp"></jsp:include>
</html>
