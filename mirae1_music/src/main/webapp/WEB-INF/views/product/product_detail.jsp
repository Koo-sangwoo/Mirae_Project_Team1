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
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.container {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
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
</style>
</head>
<body>
	<script type="text/javascript">
		function addCart() {
			document.items.action = "/cart";//items라는 이름을 가진 요소를 통해 해당 url로 액션
			document.items.submit();// 해당 요소의 값을 전송ㅈ
		}
		function orders() {
			document.items.action = "/buygoods";
			document.items.submit();
		}
	</script>
	<jsp:include page="../include/header.jsp"></jsp:include>
	<h1 align="center">
		<b>상품 정보</b>
	</h1>

	<div class="container">
		<div class="image-container">
			<img alt="" src="./resources/images/goods/${detail.p_picture}"
				width="300" height="300">
		</div>
		<form method="get" name="items">
			<input type="hidden" name="p_id" value="${detail.p_id}">
			<div class="product-info">
				<h2>상품명 : ${detail.p_name}</h2>
				<h3>
					가격 :
					<fmt:formatNumber value="${detail.p_price}" pattern="#,###,###" />
					원
				</h3>
				<div>
					<br> <a href="javascript:;" onclick="orders();"><!-- 각각 매핑값에 대한 컨트롤러를 만들어야함 -->
						class="btn btn-primary">바로구매</a> <br> <a href="javascript:;"
						onclick="addCart();" class="btn btn-primary">장바구니</a>
				</div>
			</div>
	</div>
	</form>


	<jsp:include page="../include/footer.jsp"></jsp:include>

</body>
</html>