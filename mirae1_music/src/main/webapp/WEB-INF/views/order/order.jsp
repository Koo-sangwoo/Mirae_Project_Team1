<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
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

<title>상품 구매</title>
</head>
<style>
<!--
img {
	max-width: 100%;
	height: auto;
	width: 80px;
	height: 80px;
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
					class="form-control" id="address" value="${cus_info.m_address}">
			</div>


			<hr>
			<c:set var="totalPrice" value="0" />
			<c:forEach var="cart_info" items="${cart_info}">

				<c:set var="totalPrice"
					value="${totalPrice+(cart_info.p_quantity*cart_info.p_price)}" />
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
		</form>
		<hr>

		<!-- 총가격 및 결제/취소 버튼 -->
		<div class="row">
			<div class="col-md-8">
				<p class="lead" id="totalPrice">총 가격: ${totalPrice}원</p>
			</div>
			<div class="col-md-4">
				<button type="button" class="btn btn-primary btn-block" id="buyNow">결제</button>
				<button type="button" class="btn btn-secondary btn-block">취소</button>
			</div>
		</div>
	</div>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script type="text/javascript">
		/*아임포트를 활용한 결제 api*/
		var amount = parseInt($("#totalPrice").val());
		$("#buyNow").click(function() {
			var amount = basketSumInput.val();
				var IMP = window.IMP;
				IMP.init("imp75381885");
				IMP.request_pay({
					pg : "kakaopay",//결제 대행을 해야하는 pg사
					pay_method : "card",
					merchant_uid : 'merchant_' + new Date().getTime(), // 주문번호
					name : '${cart_info.p_name}외', //품목이름
					amount : amount,//가격
					buyer_email : "gildong@gmail.com",//여기 까진 이상없음
					buyer_name : "${member.m_name}",
					buyer_tel : '${member.m_phonenum}',
					buyer_addr : '${member.m_address}',
				}, function(rsp) { // callback
					if (rsp.success) {
						alert("결제가 완료되었습니다!")
						document.order.action = "order_complete";
						document.order.submit();

					} else {
						var msg = "결제가 실패했습니다!"
						swal("", msg, "fail");
					}
				});
			
		});
		</script>
</body>
</html>