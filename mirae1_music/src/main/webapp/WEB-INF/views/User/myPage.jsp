<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
<link rel="stylesheet"
	href="//unpkg.com/bootstrap@4/dist/css/bootstrap.min.css">
<script src='//unpkg.com/jquery@3/dist/jquery.min.js'></script>
<script src='//unpkg.com/popper.js@1/dist/umd/popper.min.js'></script>
<script src='//unpkg.com/bootstrap@4/dist/js/bootstrap.min.js'></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<script src="./resources/js/myPage.js" charset="UTF-8"></script>
<style>
.myPage {
	background-color: #fff;
	color: #000;
	font-family: Arial, sans-serif;
}

form {
	width: 400px;
	margin: 0 auto;
	padding: 20px;
	background-color: #000;
	border: 1px solid #fff;
	border-radius: 5px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
}

.container {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.login-box {
	background-color: #fff;
	padding: 30px;
	max-width: 400px;
	width: 100%;
	text-align: center;
}

label {
	display: block;
	margin-bottom: 10px;
	color: #fff;
}

input[type="text"], input[type="password"], input[type="submit"] {
	width: 100%;
	padding: 10px;
	margin-bottom: 20px;
	border: none;
	border-radius: 3px;
	font-size: 16px;
	background-color: #f1f1f1;
}

input[type="submit"] {
	background-color: #000;
	color: #fff;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #555;
}

.error-message {
	color: red;
	font-weight: bold;
	margin-bottom: 10px;
}

h5 {
	text-align: center;
	color: #000;
	margin-top: 50px;
}
</style>
<html>
<head>
<title>Home</title>
</head>
<body class="myPage">
	<%@ include file="../include/header.jsp"%>
	<div class="container">
		<div class="check-box">
			<h5>본인 확인</h5>
			<form name="checkFrm" method="post" action="myPage2">
				<input type="hidden" id="m_id" value="${ member.m_id }"> <label>비밀번호:</label>
				<input type="password" name="m_password" id="m_password"><br>
				<input type="button" value="확인" onclick="checkPw()">
			</form>
		</div>
	</div>
</body>
<jsp:include page="../include/footer.jsp"></jsp:include>
</html>
