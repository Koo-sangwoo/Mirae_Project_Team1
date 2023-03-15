<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet"
	href="//unpkg.com/bootstrap@4/dist/css/bootstrap.min.css">
<script src='//unpkg.com/jquery@3/dist/jquery.min.js'></script>
<script src='//unpkg.com/popper.js@1/dist/umd/popper.min.js'></script>
<script src='//unpkg.com/bootstrap@4/dist/js/bootstrap.min.js'></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../include/header.jsp"></jsp:include>

	<h1 style="text-align: center">
		<b>굿즈 샵</b>
	</h1>
	<hr>
	<br>
	<br>
	<ul style="align-content: center">
		<h3 style="text-align: center">아이돌 굿즈 핫 아이템!</h3>
		<li style="display: inline-block;">
			<div id="carouselExampleControls" class="carousel slide"
				data-ride="carousel" style="width: 400px; height: 300px">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="./resources/images/goods/bangtan_goods1.jpg"
							class="d-block w-100" alt="..."
							style="width: 100%; height: 300px">
					</div>
					<div class="carousel-item">
						<img src="./resources/images/goods/ive_goods1.jpg"
							class="d-block w-100" alt="..."
							style="width: 100%; height: 300px">
					</div>
					<div class="carousel-item">
						<img src="./resources/images/goods/lesserapim_goods1.jpg"
							class="d-block w-100" alt="..."
							style="width: 100%; height: 300px">
					</div>
				</div>
			</div>
		</li>


		<li style="display: inline-block;">
			<div id="carouselExampleControls" class="carousel slide"
				data-ride="carousel" style="width: 400px; height: 300px">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="./resources/images/goods/bangtan_goods1.jpg"
							class="d-block w-100" alt="..."
							style="width: 100%; height: 300px">
					</div>
					<div class="carousel-item">
						<img src="./resources/images/goods/ive_goods1.jpg"
							class="d-block w-100" alt="..."
							style="width: 100%; height: 300px">
					</div>
					<div class="carousel-item">
						<img src="./resources/images/goods/lesserapim_goods1.jpg"
							class="d-block w-100" alt="..."
							style="width: 100%; height: 300px">
					</div>
				</div>
			</div>
		</li>


		<li style="display: inline-block;">
			<div id="carouselExampleControls" class="carousel slide"
				data-ride="carousel" style="width: 400px; height: 300px">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="./resources/images/goods/bangtan_goods1.jpg"
							class="d-block w-100" alt="..."
							style="width: 100%; height: 300px">
					</div>
					<div class="carousel-item">
						<img src="./resources/images/goods/ive_goods1.jpg"
							class="d-block w-100" alt="..."
							style="width: 100%; height: 300px">
					</div>
					<div class="carousel-item">
						<img src="./resources/images/goods/lesserapim_goods1.jpg"
							class="d-block w-100" alt="..."
							style="width: 100%; height: 300px">
					</div>
				</div>
			</div>
		</li>
	</ul>
	<hr>
	<h1 style="text-align: center">상품</h1>
	<hr>
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="card" style="width: 18rem;">
					<img src="..." class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary">Go somewhere</a>
					</div>
				</div>
				<div class="card" style="width: 18rem;">
					<img src="..." class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary">Go somewhere</a>
					</div>
				</div>
				<div class="card" style="width: 18rem;">
					<img src="..." class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary">Go somewhere</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>