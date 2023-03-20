<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<link rel="stylesheet" href="./resources/css/login.css">
<link rel="stylesheet" href="//unpkg.com/bootstrap@4/dist/css/bootstrap.min.css">
<script src='//unpkg.com/jquery@3/dist/jquery.min.js'></script>
<script src='//unpkg.com/popper.js@1/dist/umd/popper.min.js'></script>
<script src='//unpkg.com/bootstrap@4/dist/js/bootstrap.min.js'></script>
<script src="./resources/js/login.js"></script>
<html>
<head>
<title>Home</title>
</head>
<body>
	<jsp:include page="../include/header.jsp"></jsp:include>

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
