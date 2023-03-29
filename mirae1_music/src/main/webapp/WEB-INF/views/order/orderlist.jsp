<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주문 내역</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
	<jsp:include page="../include/header.jsp"></jsp:include>

	<div class="container">
		<h1>주문 내역</h1>
		<table class="table table-striped table-hover">
			<thead>
				<tr>
					<th>주문번호</th>
					<th>결제날짜</th>
					<th>상품사진</th>
					<th>상품명</th>
					<th>총 가격</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
			<c:set var="totalPrice" value="${order.p_price * order.p_quantity}" />
				<c:forEach items="${orderlist}" var="order">
					<tr>
						<td>${order.orderlist_id}</td>
						<td><fmt:formatDate value="${order.payeddate}"
								pattern="yyyy-MM-dd" /></td>
						<td><img src="${order.p_picture}"
							alt="${order.p_name}" width="50" height="50"></td>
						<td>${order.p_name}</td>
						<td>${totalPrice} </td>
						<td><button class="btn btn-danger">삭제</button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	<jsp:include page="../include/footer.jsp"></jsp:include>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>