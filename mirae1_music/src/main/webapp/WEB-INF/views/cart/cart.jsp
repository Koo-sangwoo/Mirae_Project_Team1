<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

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

	<form action="order" method="post">
		<h1 align="center">상품목록</h1>
		<c:if test="${fn:length(cartPrd) == 0}">
		<div class="container">
			<table align="center" class="nullCart">
			<td><a href="home" class="nullBasket"><p style="margin: 14px 20px; color: black;">
					<span style="font-weight: bold;">장바구니가 비었습니다. 상품 보러가기 클릭!</span>
				</p> </a></td>
			</table>
		</div>
		</c:if>
		<c:if test="${fn:length(cartPrd) > 0 }">
			<table class="cart" align="center">
				<tr>
					<th><input id="checkAll" type="checkbox" checked /></th>
					<th>이미지</th>
					<th>상품정보</th>
					<th>판매가</th>
					<th>수량</th>
					<th>선택</th>
				</tr>
				<c:forEach items="${cartPrd}" var="cartprd">
					<tr align="center">
						<!--체크박스-->
						<td><input type="checkbox" name="chk" value="${cartprd.p_id}"
							checked /> <input type="hidden" id="m_id" name="m_id"
							value="${member.m_id}" /> <input type="hidden" id="p_name"
							name="p_name" value="${cartprd.p_name}" /> <input type="hidden"
							id="p_price" name="p_price" value="${cartprd.p_price}" /> <input
							type="hidden" id="p_quantity" name="p_quantity"
							value="${cartprd.p_quantity}" /></td>
						<td><img alt=""
							src="./resources/images/goods/${cartprd.p_picture}" width="50"
							name="p_picture" height="50"></td>
						<!-- 이미지 -->
						<td>${cartprd.p_name}</td>
						<!-- 상품명 -->
						<td><fmt:formatNumber value="${cartprd.p_price}"
								pattern="#,###" /></td>
						<!-- 판매가 -->
						<td><fmt:formatNumber value="${cartprd.p_quantity}"
								pattern="#,###" /></td>
						<!-- 수량 -->
						<td><input type="button" id="delCart"
							onClick="deleteCart('${cartprd.p_id}', '${member.m_id}')"
							value="삭제" /> <input type="hidden" id="p_id" name="p_id"
							value="${cartprd.p_id}" /></td>
					</tr>
				</c:forEach>
				<tr align="center">
					<td colspan="5"><input type="button" name="cartClear"
						id="cartClear" onclick="clearCart()" value="상품 비우기" /></td>
					<td>
						<button class="orderBtn" onclick="insertOrder()">구매하기</button>
					</td>
				</tr>
			</table>
			</c:if>
	</form>
	<script type="text/javascript">
		$(document)
				.ready(
						function() { // 최상단 체크박스 클릭
							$("#checkAll").click(
									function() { // 클릭
										if ($("#checkAll").prop("checked")) { // input tag name="chk" checked=true
											$("input[name=chk]").prop(
													"checked", true);
										} else {
											$("input[name=chk]").prop(
													"checked", false);
										}
									})

							$("input[name=chk]")
									.click(
											function() {
												if ($("input[name=chk]").length == $("input[name=chk]:checkbox:checked").length) {
													$("#checkAll").prop(
															"checked", true);
												} else {
													$("#checkAll").prop(
															"checked", false);
												}
											})
						})

		function insertOrder() {

			var p_quantity = $("#p_quantity").val();
			var m_id = $("#m_id").val();

			if (m_id == null || m_id == "") {
				swal("", "로그인 후 이용하실 수 있습니다.", "warning");
				window.location.href = "login_form";
			} else if (p_quantity == 0) {
				swal("", "수량을 선택해주세요.", "warning");
				return false;
			} else {
				document.order.action = "order"
				document.order.submit();
			}
		}
	</script>
	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>