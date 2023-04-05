<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet" href="./resources/css/login.css">
<link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
<link rel="stylesheet" href="//unpkg.com/bootstrap@4/dist/css/bootstrap.min.css">
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<!-- <script src="./resources/js/login.js"></script> -->
<html>
<head>
<title>login</title>
</head>
<body>
	<%-- <jsp:include page="../include/header.jsp"></jsp:include> --%>
	<%@ include file="../include/header.jsp" %>
	<div class="container">
		<div class="login-box">
			<h1>Login</h1>
			<form id="login">
				<div class="form-group">
					<label for="m_id">아이디</label> <input type="text" class="form-control"
						id="m_id" name="m_id" required >
				</div>
				<div class="form-group">
					<label for="m_password">비밀번호</label> <input type="password"
						class="form-control" id="m_password" name="m_password" required>
				</div>
				<button type="button" class="btn-primary" onclick="memberCheck()">Login</button><br><br>
				<a href="registration_form">아직 회원이 아니신가요?</a>
			</form>
		</div>
	</div>


	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>
