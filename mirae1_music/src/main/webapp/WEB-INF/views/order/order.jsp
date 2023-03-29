<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>상품 구매</title>
<link rel="stylesheet"
	href="//unpkg.com/bootstrap@4/dist/css/bootstrap.min.css">
<script src="//unpkg.com/jquery@3/dist/jquery.min.js"></script>
<script src="//unpkg.com/popper.js@1/dist/umd/popper.min.js"></script>
<script src="//unpkg.com/bootstrap@4/dist/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js">	
</script>

</head>
<style>
<!--
img {
	max-width: 100%;
	height: auto;
	width: 200px;
	height: 200px;
}

  h1 {
    font-size: 2.5rem;
    font-weight: bold;
    text-align: center;
    margin: 2rem 0;
  }

-->
</style>

<body>		
	<jsp:include page="../include/header.jsp"></jsp:include>
	<hr>
	<div class="container my-5">
		<h1 class="mb-4">상품 구매</h1>
		<!-- 실명, 전화번호, 주소 입력 폼 -->
		<form>
			<div class="form-group">
				<label for="nameInput">실명</label> <input type="text"
					class="form-control" id="cname" value="${cus_info.m_name}">
			</div>
			<div class="form-group">
				<label for="phoneInput">전화번호</label> <input type="tel"
					class="form-control" id="tel" value="${cus_info.m_phonenum}">
			</div>
			<div class="form-group">
				<label for="addressInput">주소</label> <input type="text"
					class="form-control" id="address"
					value="${cus_info.m_address}">
			</div>
		</form>
		
		<hr>
		<c:set var="totalPrice" value="0" />
		<c:forEach var="cart_info" items="${cart_info}">
			
			<c:set var="totalPrice" value="${totalPrice+(cart_info.p_quantity*cart_info.p_price)}" />
		</c:forEach>
		<!-- 상품정보 -->
		<h2 class="my-4">상품정보</h2>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>상품사진</th>
					<th>상품명</th>
					<th>수량</th>
					<th>가격</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="cart_info" items="${cart_info}">
				<input type="hidden" id="p_name" value="${cart_info.p_name}">
				
					<tr>
						<td><img
							src="./resources/images/goods/${cart_info.p_picture}"
							alt="${cart_info.p_name}" class="img-thumbnail mx-auto d-block"></td>
						<td class="align-middle">${cart_info.p_name}</td>
						<td class="align-middle">${cart_info.p_quantity}</td>
						<td class="align-middle">${cart_info.p_quantity*cart_info.p_price}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<hr>

		<!-- 총가격 및 결제/취소 버튼 -->
		<div class="row">
			<div class="col-md-8">
				<p class="lead" id="totalPrice">총 가격: ${totalPrice}원</p>
			</div>
			<div class="col-md-4">
				<button type="button" class="btn btn-primary btn-block" id="pay">결제</button>
				<button type="button" class="btn btn-secondary btn-block">취소</button>
			</div>
		</div>
	</div>
		<jsp:include page="../include/header.jsp"></jsp:include>
</body>
</html>