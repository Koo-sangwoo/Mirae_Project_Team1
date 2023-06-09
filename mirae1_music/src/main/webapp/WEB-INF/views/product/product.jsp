<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>

<script src='//unpkg.com/jquery@3/dist/jquery.min.js'></script>
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

<style>
.my-container {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>굿즈 상품</title>
</head>
<body>
	<jsp:include page="../include/header.jsp"></jsp:include>

	<h1 style="text-align: center">
		<b>K-POP굿즈 샵</b>
	</h1>
	<hr>
	<br>
	<br>

	<h3 style="text-align: center">굿즈 핫 아이템!</h3>
	<div id="carouselExampleControls" class="carousel slide"
		data-ride="carousel" style="width: 100%; height: 500px">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="./resources/images/goods/ive_goods1.jpg"
					class="d-block w-100" alt="..." style="width: 100%; height: 500px">
			</div>
			<div class="carousel-item">
				<img src="./resources/images/goods/seventeen_goods.jpg"
					class="d-block w-100" alt="..." style="width: 100%; height: 500px">
			</div>
			<div class="carousel-item">
				<img src="./resources/images/goods/bangtan_goods1.jpg"
					class="d-block w-100" alt="..." style="width: 100%; height: 500px">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleControls"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleControls"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
	<hr>
	<h1 style="text-align: center">상품</h1>
	<c:if test="${member.m_code == 123}">
	<div align="center">
		<a href="/insertProduct"><button class="btn btn-primary">상품
				추가</button></a>
	</div>
	</c:if>
	<hr>

	<form class="d-flex" action="/product_search" method="get">
		<input class="form-control me-2" type="search" name="keyword"
			placeholder="Search" aria-label="Search" style="width: 200px;">
		<button class="btn btn-outline-success" type="submit">Search</button>
	</form>
	<div class="container my-container" style="margin-top: 20px; margin-bottom: 20px">
  <div class="container" style="margin-top: 20px; margin-bottom: 20px">
    <div class="row">
      <c:forEach items="${list}" var="pro" varStatus="status">
        <form action="product_detail?p_id=${pro.p_id}" method="get" class="col-md-4"
          style="margin-top: 20px; margin-bottom: 20px">
          <input type="hidden" name="p_id" value="${pro.p_id}">
          <!-- db에서 가져온 값을  -->
          <div class="card" style="width: 18rem;">
            <button type="submit">
              <img src="./resources/images/goods/${pro.p_picture}" class="card-img-top" alt="...">
            </button>
            <div class="card-body">
              <h5 class="card-title" style="text-align: center">${pro.p_name}</h5>
              <p class="card-text">${pro.p_exp}<br>가격 :
                <fmt:formatNumber value="${pro.p_price}" pattern="#,###,###" />원
              </p>
              <a href="/buygoods">
                <button class="btn btn-primary" type="submit">구매하기</button>
              </a>
            </div>
          </div>
        </form>
        <c:if test="${status.index % 3 == 2 || status.last}">
          </div><div class="row">
        </c:if>
      </c:forEach>
    </div>
  </div>
</div>
	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>