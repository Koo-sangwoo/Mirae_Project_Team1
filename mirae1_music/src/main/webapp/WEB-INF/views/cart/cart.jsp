<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./resources/css/cart.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
<link rel="stylesheet"
	href="//unpkg.com/bootstrap@4/dist/css/bootstrap.min.css">
<script src='//unpkg.com/jquery@3/dist/jquery.min.js'></script>
<script src='//unpkg.com/popper.js@1/dist/umd/popper.min.js'></script>
<script src='//unpkg.com/bootstrap@4/dist/js/bootstrap.min.js'></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<script src="./resources/js/cart.js" charset="UTF-8"></script>
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../include/header.jsp"%>
	<h1>상품목록</h1>
	<form action="order" method="post">
		<table class="cart" align="center">
			<tr>
				<th><input id="checkAll" type="checkbox" checked /></th>
				<th>이미지</th>
				<th>상품정보</th>
				<th>판매가</th>
				<th>수량</th>
				<th>선택</th>
			</tr>
			<c:set var="priceSum" value="0" />
			<c:forEach items="${cartPrd}" var="cartprd">
				<tr align="center">
					<!--체크박스-->
					<td>
						<input type="checkbox" name="chk" value="${cartprd.p_id}" checked />
						<input type="hidden" id="m_id" value="${member.m_id}"/>
					</td>
					<td>${cartprd.p_picture}</td><!-- 이미지 -->
					<td>${cartprd.p_name}</td><!-- 상품명 -->
					<td><fmt:formatNumber value="${cartprd.p_price}" pattern="#,###"/></td><!-- 판매가 -->
					<td><fmt:formatNumber value="${cartprd.p_quantity}" pattern="#,###"/></td><!-- 수량 -->
					<td>
						<input type="button" id="delCart" onClick="deleteCart('${cartprd.p_id}', '${member.m_id}')" value="삭제" />
						<input type="hidden" id="p_id" value="${cartprd.p_id}" />
					</td>
				</tr>
			</c:forEach>
			<tr align="center">
				<td colspan="5">
					<input type="button" name="cartClear" id="cartClear" onclick="clearCart()" value="상품 비우기" />
				</td>
				<td>
					<input type="submit" id="order" name="order" value="구매하기">
				</td>
			</tr>
		</table>
		</form>
		<script type="text/javascript">
		$(document).ready(function() {	// 최상단 체크박스 클릭
			$("#checkAll").click(function() {	// 클릭
				if ($("#checkAll").prop("checked")) {	// input tag name="chk" checked=true
					$("input[name=chk]").prop("checked", true);
				} else {
					$("input[name=chk]").prop("checked", false);
				}
			})
			
			$("input[name=chk]").click(function() {
				if ($("input[name=chk]").length == $("input[name=chk]:checkbox:checked").length) {
					$("#checkAll").prop("checked", true);
				} else {
					$("#checkAll").prop("checked", false);
				}
			})
		})
		</script>
	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>