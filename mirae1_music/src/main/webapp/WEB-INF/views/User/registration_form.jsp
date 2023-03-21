<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<link rel="stylesheet" href="./resources/css/registration.css">
<link rel="stylesheet"
	href="//unpkg.com/bootstrap@4/dist/css/bootstrap.min.css">
<script src='//unpkg.com/jquery@3/dist/jquery.min.js'></script>
<script src='//unpkg.com/popper.js@1/dist/umd/popper.min.js'></script>
<script src='//unpkg.com/bootstrap@4/dist/js/bootstrap.min.js'></script>
<script src="./resources/js/registration.js"></script>

<html>
<head>
<title>Home</title>
</head>
<body>
	<jsp:include page="../include/header.jsp"></jsp:include>

	<div class="container">
		<div class="registration-box">
			<h1>정보 입력</h1>
			<form name="regist" id="regist">
				<!-- method="post" action="registration.do"> -->
				<div class="form-group">
					<label for="m_code">관리자 코드: </label><input type="number"
						class="form-control" id="m_code" name="m_code"
						placeholder="일반 회원은 넘어가주세요.">
				</div>
				<div class="form-group">
					<label for="m_id">아이디:</label> <input type="text"
						class="form-control" id="m_id" name="m_id" required><br>
					<button class="btn btn-primary" type="button" onclick="idCheck()">중복확인</button>
				</div>
				<div class="form-group">
					<label for="m_password">비밀번호:</label> <input type="password"
						class="form-control" id="m_password" name="m_password" required="required">
				</div>
				<div class="form-group">
					<label for="m_name">이름:</label> <input type="text"
						class="form-control" id="m_name" name="m_name" required="required">
				</div>
				<div class="form-group">
					<label for="m_address">주소:</label> <input type="text"
						class="form-control" id="m_address" name="m_address" required="required">
				</div>
				<div class="form-group">
					<label for="m_phone">전화번호:</label> <input type="tel"
						class="form-control" id="m_phonenum" name="m_phonenum" required="required">
				</div>
				<div class="form-group">
					<label for="m_gender">성별:</label> <select class="form-control"
						id="m_gender" name="m_gender" required="required">
						<option value="">선택</option>
						<option value="m">남자</option>
						<option value="f">여자</option>
					</select>
				</div>
				<div class="form-group">
					<label for="m_nickname">닉네임:</label> <input type="text"
						class="form-control" id="m_nickname" name="m_nickname" required="required">
				</div>
				<div class="form-group">
					<label for="m_hobby">취미:</label><select class="form-control"
						id="m_hobby" name="m_hobby" required="required">
						<option value="">선택</option>
						<option value="독서">독서</option>
						<option value="운동">운동</option>
						<option value="영화시청">영화시청</option>
						</select>
					
				</div>
				<button class="btn btn-primary" id="insert" type="button"
					onclick="insertDo()">가입완료</button>
			</form>
		</div>
	</div>


	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>
