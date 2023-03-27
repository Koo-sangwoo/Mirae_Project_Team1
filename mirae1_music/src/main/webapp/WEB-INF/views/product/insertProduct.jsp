<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품 추가 폼</title>
<link rel="stylesheet"
	href="//unpkg.com/bootstrap@4/dist/css/bootstrap.min.css">
<script src='//unpkg.com/jquery@3/dist/jquery.min.js'></script>
<script src='//unpkg.com/popper.js@1/dist/umd/popper.min.js'></script>
<script src='//unpkg.com/bootstrap@4/dist/js/bootstrap.min.js'></script>
<style>
h1 {
	margin-top: 30px;
	margin-bottom: 30px;
}

form {
	margin-bottom: 50px;
}
</style>
</head>
<body>
	<jsp:include page="../include/header.jsp"></jsp:include>
	<div class="container">
		<h1 style="text-align: center"><b>상품 추가</b></h1>
		<hr>
		<form action="insertProduct" method="post">
			<div class="form-group">
				<label for="p_name">상품명</label> <input type="text"
					class="form-control" id="p_name" name="p_name">
			</div>
			<div class="form-group">
				<label for="p_price">상품가격</label> <input type="text"
					class="form-control" id="p_price" name="p_price">
			</div>
			<div class="form-group">
				<label for="product_picture">상품사진</label> <input type="text"
					class="form-control" id="p_picture" name="p_picture">
			</div>
			<div class="form-group">
				<label for="p_exp">상품설명</label>
				<textarea class="form-control" id="p_exp" name="p_exp" rows="3"></textarea>
			</div>
			<div class="form-group">
				<label for="category">카테고리</label> <select class="form-control"
					id="p_category" name="p_category">
					<option value="k-pop">K-POP</option>
					<option value="hiphop">HIPHOP</option>
					<option value="ballard">BALLARD</option>
				</select>
			</div>
			<div class="form-group">
				<label for="p_quantity">상품수량</label> <input type="text"
					class="form-control" id="p_quantity" name="p_quantity">
			</div>
			<div style="text-align: center">
				<button type="submit" class="btn btn-primary">상품 추가</button>
				<a href="/" class="btn btn-danger">취소</a>
			</div>
		</form>
	</div>
	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>