<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품 수정</title>
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
		h1 {
			margin-top: 50px;
			margin-bottom: 30px;
			font-size: 36px;
			font-weight: bold;
			text-align: center;
			color: #555;
			text-shadow: 2px 2px 3px rgba(0,0,0,0.3);
		}

		.allForm {
			margin: 0 auto;
			max-width: 500px;
			padding: 20px;
			border: 1px solid #ddd;
			border-radius: 5px;
			box-shadow: 2px 2px 5px rgba(0,0,0,0.3);
		}

		.allForm .form-group {
			margin-bottom: 20px;
		}

		.allForm label {
			font-weight: bold;
			margin-bottom: 5px;
		}

		.allForm select {
			height: 38px;
		}

		.allForm button {
			margin-top: 20px;
		}

		.allForm .btn-primary {
			background-color: #007bff;
			border-color: #007bff;
		}

		.allForm .btn-primary:hover {
			background-color: #0069d9;
			border-color: #0062cc;
		}
	</style>
</head>
<body>
<jsp:include page="../include/header.jsp"></jsp:include>


	<h1 style="text-align: center">상품 수정</h1>
	<hr>
	<form action="/updateProduct" method="post" class="allForm">
		<input type="hidden" name="p_id" value="${detail.p_id}">
		<div class="form-group">
			<label for="p_name">상품명</label>
			<input type="text" class="form-control" id="p_name"
				name="p_name" value="${detail.p_name}">
		</div>
		<div class="form-group">
			<label for="p_price">상품가격</label>
			<input type="text" class="form-control" id="p_price"
				name="p_price" value="${detail.p_price}">
		</div>
		<div class="form-group">
			<label for="product_picture">상품사진</label>
			<input type="text" class="form-control" id="p_picture"
				name="p_picture" value="${detail.p_picture}">
		</div>
		<div class="form-group">
			<label for="p_exp">상품설명</label>
			<textarea class="form-control" id="p_exp"
				name="p_exp" rows="3" ${detail.p_exp}></textarea>
		</div>
		<div class="form-group">
			<label for="category">카테고리</label>
			<select class="form-control" id="p_category" name="p_category">
				<option value="k-pop">K-POP</option>
				<option value="hiphop">HIPHOP</option>
				<option value="ballard">BALLARD</option>
			</select>
		</div>
		<div class="form-group">
			<label for="p_quantity">상품수량</label>
			<input type="text" class="form-control" id="p_quantity"
				name="p_quantity" value="${detail.p_quantity}">
		</div>
		<button type="submit" class="btn btn-primary">상품 수정</button>
		<a href="/product?p_category=k-pop"><button type="button" class="btn btn-primary">수정 취소</button>
		</a>
	</form>
	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>




