<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
<link rel="stylesheet"
	href="//unpkg.com/bootstrap@4/dist/css/bootstrap.min.css">
<script src='//unpkg.com/jquery@3/dist/jquery.min.js'></script>
<script src='//unpkg.com/popper.js@1/dist/umd/popper.min.js'></script>
<script src='//unpkg.com/bootstrap@4/dist/js/bootstrap.min.js'></script>

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
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>


<body>
	<jsp:include page="../include/header.jsp"></jsp:include>
	<hr>
	<c:forEach var="cart_info" items="${cart_info}">

		<c:set var="totalPrice"
			value="${totalPrice+(cart_info.p_quantity*cart_info.p_price)}" />
		<c:set var="totalCount" value="${totalCount+1}"></c:set>
		<c:set var="p_quantity" value="${p_quantity+cart_info.p_quantity}"></c:set>
	</c:forEach>
	<c:set var="p_id" value="${cart_info[0].p_id}" />
	<c:set var="p_picture" value="${cart_info[0].p_picture}" />
	<c:set var="count" value="${totalCount-1}"></c:set>
	<c:choose>
		<c:when test="${count == 0}">
			<c:set var="p_name" value="${cart_info[0].p_name}" />
		</c:when>
		<c:otherwise>
			<c:set var="p_name" value="${cart_info[0].p_name} 외 ${count}개 상품" />
		</c:otherwise>
	</c:choose>
	<div class="container my-5">
		<h1 class="mb-4">상품 구매</h1>
		<!-- 실명, 전화번호, 주소 입력 폼 -->
		<form name="order" method="post">
			<input type="hidden" name="m_id" value="${member.m_id}"> <input
				type="hidden" name="p_price" value="${totalPrice}"> <input
				type="hidden" name="p_id" value="${p_id}"> <input
				type="hidden" name="p_name" value="${p_name}"> <input
				type="hidden" name="p_picture" value="${p_picture}"> <input
				type="hidden" name="p_quantity" value="${p_quantity}">
			<div class="form-group">
				<label for="nameInput">실명</label> <input type="text"
					class="form-control" id="cname" name="m_name" value="${cus_info.m_name}">
			</div>
			<div class="form-group">
				<label for="phoneInput">전화번호</label> <input type="tel"
					class="form-control" id="tel" name="m_phonenum"
					value="${cus_info.m_phonenum}">
			</div>
			<div class="form-group">
				<label for="addressInput">주소</label> <input type="text"
					class="form-control" id="address" name="m_address"
					value="${cus_info.m_address}">
			</div>


			<hr>
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
						<input type="hidden" id="p_name" value="${cart.info[0].p_name}">

						<tr>
							<td><img
								src="./resources/images/goods/${cart_info.p_picture}"
								alt="${cart_info.p_name}" class="img-thumbnail mx-auto d-block"></td>
							<td class="align-middle">${cart_info.p_name}</td>
							<td class="align-middle">${cart_info.p_quantity}</td>
							<td class="align-middle">${cart_info.p_price*cart_info.p_quantity}</td>
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

	<script type="text/javascript">
$("#buyNow").click(function() {
	var IMP = window.IMP;
	swal({
		title : "",
		text : "구매하시겠습니까? 확인을 누를시 결제창이 나타납니다.",
		type : "info",
		showCancelButton : true,
		confirmButtonText : "확인",
		cancelButtonText : "취소"
	}, function(data){
		if(data){
			IMP.init("imp75381885");
			IMP.request_pay({
				pg : "kakaopay",//결제 대행을 해야하는 pg사
				pay_method : "card",
				merchant_uid : 'merchant_' + new Date().getTime(), // 주문번호
				name : '${p_name}', //품목이름
				amount : "${totalPrice}",//가격
				buyer_email : "gildong@gmail.com",//여기 까진 이상없음
				buyer_name : "${cus_info.m_name}",
				buyer_tel : '${cus_info.m_phonenum}',
				buyer_addr : '${cus_info.m_address}',
			}, function(rsp) { // callback
				if (rsp.success) {
					alert("결제가 완료되었습니다!")
					document.order.action = "order_completeInsert";
					document.order.submit();

				} else {
					var msg = "결제가 실패했습니다!"
					swal("", msg, "fail");
				}
			});
		} else{
			return false;
		}
	});
});	

 /*
var IMP = window.IMP;
IMP.init("imp75381885");
IMP.request_pay({
	pg : "kakaopay",//결제 대행을 해야하는 pg사
	pay_method : "card",
	merchant_uid : 'merchant_' + new Date().getTime(), // 주문번호
	name : '${p_name}', //품목이름
	amount : "${totalPrice}",//가격
	buyer_email : "gildong@gmail.com",//여기 까진 이상없음
	buyer_name : "${cus_info.m_name}",
	buyer_tel : '${cus_info.m_phonenum}',
	buyer_addr : '${cus_info.m_address}',
}, function(rsp) { // callback
	if (rsp.success) {
		alert("결제가 완료되었습니다!")
		document.order.action = "order_completeInsert";
		document.order.submit();

	} else {
		var msg = "결제가 실패했습니다!"
		swal("", msg, "fail");
	}
});
}); */
</script>
</body>
</html>