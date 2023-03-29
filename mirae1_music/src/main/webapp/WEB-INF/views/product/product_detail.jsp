<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet"
	href="//unpkg.com/bootstrap@4/dist/css/bootstrap.min.css">
<script src='//unpkg.com/jquery@3/dist/jquery.min.js'></script>
<script src='//unpkg.com/popper.js@1/dist/umd/popper.min.js'></script>
<script src='//unpkg.com/bootstrap@4/dist/js/bootstrap.min.js'></script>
<script src="./resources/js/cart.js" charset="UTF-8"></script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.container {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	margin-top: 20px;
}

.image-container {
	width: 50%;
	display: flex;
	justify-content: center;
}

.product-info {
	width: 50%;
	padding: 20px;
	display: flex;
	flex-direction: column;
	justify-content: center;
}

.product-info h2, .product-info h3 {
	margin: 10px 0;
}

.btn-primary {
	margin-top: 10px;
}

.btn-container {
	display: flex;
	justify-content: space-between;
	margin-bottom: 10px;
}

.description {
	margin-top: 20px;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
}
</style>
</head>
<body>

	<jsp:include page="../include/header.jsp"></jsp:include>
	<h1 align="center">
		<b>상품 정보</b>
	</h1>
	<c:if test="${member.m_code == 123}">
		<div class="d-flex justify-content-center mb-3">
			<a href="/updateProduct?p_id=${detail.p_id}">
				<button class="btn btn-danger">수정 하기</button>
			</a>
			<form action="deleteProduct" method="get" name="deleteProduct">
				<input type="hidden" name="p_id" value="${detail.p_id}">
				<button type="button" onclick="Productdelete()"
					class="btn btn-danger ml-3">삭제하기</button>
			</form>
		</div>
	</c:if>
	<hr>
	<form method="post" name="items">
		<input type="hidden" name="p_id" id="p_id" value="${detail.p_id}">
		<input type="hidden" name="m_id" id="m_id" value="${member.m_id}">
		<input type="hidden" name="p_picture" id="p_picture"
			value="${detail.p_picture}"> <input type="hidden"
			name="p_price" id="p_price" value="${detail.p_price}"> <input
			type="hidden" name="p_name" id="p_name" value="${detail.p_name}">
		<input type="hidden" name="address" value="${member.m_address}">
		<div class="container">
			<div class="image-container">
				<img alt="" src="./resources/images/goods/${detail.p_picture}"
					width="300" height="300">
			</div>
			<div class="product-info">
				<h2>상품명 : ${detail.p_name}</h2>
				<h3>
					가격 :
					<fmt:formatNumber value="${detail.p_price}" pattern="#,###,###" />
					원
				</h3>
				<h4>
					수량 : <input type="number" min="1" max="10" id="basket_amount"
						name="p_quantity" value="1" required>
				</h4>
				<h4>
					총 금액 : <input type="number" disabled="disabled" id="totalPrice"
						name="totalPrice" value="${detail.p_price}">
				</h4>
				<div>
					<a href="javascript:;" id="buyNow" class="btn btn-primary">바로구매</a>&nbsp;
				</div>
				<div>
					<a href="javascript:;" onclick="insertCart();"
						class="btn btn-primary">장바구니</a>
				</div>
			</div>
		</div>
	</form>
	<div class="description">
		<h3>
			<b>곡 설명</b>;
		</h3>
		<p>${detail.p_exp}</p>
	</div>

	<jsp:include page="../include/footer.jsp"></jsp:include>
	<script type="text/javascript"
		src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	<script type="text/javascript">
		function Productdelete() {
			if (!confirm("해당 품목을 삭제할까요?")) {
				alert("취소되었습니다.");
			} else {
				alert("해당 품목을 삭제합니다.");
				document.deleteProduct.action = "/deleteProduct";
				document.deleteProduct.submit();
			}
		}

		//수량이 늘어날 때 마다 가격을 늘려준다.
		$(document).ready(function() {

			basketAmountInput = $('#basket_amount'); //수량
			basketSumInput = $('#totalPrice'); //총 가격

			basketAmountInput.on('input', function() {
				var basketAmount = parseInt(basketAmountInput.val()) * ${detail.p_price};
				basketSumInput.val(basketAmount);

			});
		});



		/*아임포트를 활용한 결제 api*/
		var amount = parseInt($("#totalPrice").val());
		$("#buyNow").click(function() {
			var m_id = $("#m_id").val();
			var p_quantity = $("#p_quantity").val();
			if (m_id == null || m_id == "") {
				swal("", "로그인 후 이용하실 수 있습니다.", "warning");
				window.location.href = "login_form";
			} else if (p_quantity == 0) {
				swal("", "수량을 선택해주세요.", "warning");
				return false;
			} else {
				var amount = basketSumInput.val();
				var IMP = window.IMP;
				IMP.init("imp75381885");
				IMP.request_pay({
					pg : "kakaopay",//결제 대행을 해야하는 pg사
					pay_method : "card",
					merchant_uid : 'merchant_' + new Date().getTime(), // 주문번호
					name : '${detail.p_name}', //품목이름
					amount : amount,//가격
					buyer_email : "gildong@gmail.com",//여기 까진 이상없음
					buyer_name : "${member.m_name}",
					buyer_tel : '${member.m_phonenum}',
					buyer_addr : '${member.m_address}',
				}, function(rsp) { // callback
					if (rsp.success) {
						alert("결제가 완료되었습니다!")
						document.items.action = "order_complete";
						document.items.submit();

					} else {
						var msg = "결제가 실패했습니다!"
						swal("", msg, "fail");
					}
				});
			}
		});
	</script>
</body>
</html>