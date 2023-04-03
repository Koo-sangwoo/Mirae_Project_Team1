<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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

		<button class="btn btn-danger mb-3" onclick="deleteAllOrders()">전체 삭제</button>
		<form name="orderlist" method="post" style="height: 80vh">
		<input type="hidden" name="m_id" value="${member.m_id}">
		
		<table class="table table-striped table-hover">
			<thead>
				<tr>
					<th>주문번호</th>
					<th>결제날짜</th>
					<th>상품사진</th>
					<th>상품명</th>
					<th>총 가격</th>
					<th>배송지</th>
				</tr>
			</thead>
			<c:if test="${fn:length(orderlist) == 0}">	
				<div>
					<table align="center">
						<td><a href="product?p_category=k-pop"><p style="margin: 14px 20px; color: black;">
									<span style="font-weight: bold;">주문내역이 없습니다. 굿즈 보러가기 클릭!</span>
									<img src="/resources/images/User/click.png">
							</p> </a></td>
					</table>
				</div>
			</c:if>
			
			
			<c:if test="${fn:length(orderlist) > 0}">
			<tbody>
			<c:set var="totalPrice" value="${order.p_price * order.p_quantity}" />
				<c:forEach items="${orderlist}" var="order">
					<tr>
						<td>${order.orderlist_id}</td>
						<td><fmt:formatDate value="${order.payeddate}"
								pattern="yyyy-MM-dd" /></td>
						<td><img src="./resources/images/goods/${order.p_picture}"
							alt="${order.p_name}" width="50" height="50"></td>
						<td>${order.p_name}</td>
						<td>${order.p_price} </td>
						<td>${order.address }</td>
					</tr>
				</c:forEach>
			</tbody>
			</c:if>
		</table>
		</form>
	</div>

	<jsp:include page="../include/footer.jsp"></jsp:include>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script>
		function deleteAllOrders() {
			if (confirm("정말로 모든 주문 내역을 삭제하시겠습니까?")) {
				document.orderlist.action = "orderlist_delete";
				document.orderlist.submit();
			}
		}
	</script>
</body>
</html>