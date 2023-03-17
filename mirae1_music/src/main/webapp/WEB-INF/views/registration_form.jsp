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
<script>
	$(document).ready(function() {
		$("#fn_checkId").click(function() { // 중복체크 버튼 클릭
			if ($("#m_id").val()) {
				// 아이디를 입력하고 버튼 클릭
				$.ajax({
					type : "get",
					url : "checkId",
					data : {
						m_id : $("#m_id").val()
					},
					dataType : "json",
					success : function(data) {// 요청 페이지 처리 성공시
						var data_List = data.dataList;
						alert(data_List);
					}
				});
			} else {
				alert("아이디를 입력해주세요");
				$("#m_id").focus();
			}
		})
	});
</script>
<html>
<head>
<title>Home</title>
</head>
<body>
	<jsp:include page="include/header.jsp"></jsp:include>

	<div class="container">
		<div class="registration-box">
			<h1>정보 입력</h1>
			<form method="post" action="registration.do">
				<div class="form-group">
					<label for="m_id">아이디:</label> <input type="text"
						class="form-control" id="m_id" name="m_id" required><br>
					<button class="fn_checkId" type="button" id="fn_checkId">중복확인</button>
				</div>
				<div class="form-group">
					<label for="m_password">비밀번호:</label> <input type="password"
						class="form-control" id="m_password" name="m_password" required>
				</div>
				<div class="form-group">
					<label for="m_name">이름:</label> <input type="text"
						class="form-control" id="m_name" name="m_name" required>
				</div>
				<div class="form-group">
					<label for="m_address">주소:</label> <input type="text"
						class="form-control" id="m_address" name="m_address" required>
				</div>
				<div class="form-group">
					<label for="m_phone">전화번호:</label> <input type="tel"
						class="form-control" id="m_phonenum" name="m_phonenum" required>
				</div>
				<div class="form-group">
					<label for="m_gender">성별:</label> <select class="form-control"
						id="m_gender" name="m_gender" required>
						<option value="">선택</option>
						<option value="m">남자</option>
						<option value="f">여자</option>
					</select>
				</div>
				<div class="form-group">
					<label for="m_nickname">닉네임:</label> <input type="text"
						class="form-control" id="m_nickname" name="m_nickname" required>
				</div>
				<div class="form-group">
					<label for="m_hobby">취미:</label>
					<textarea class="form-control" id="m_hobby" name="m_hobby" rows="3"
						required></textarea>
				</div>
				<button type="submit" class="btn btn-primary">가입완료</button>
			</form>
		</div>
	</div>


	<jsp:include page="include/footer.jsp"></jsp:include>
</body>
</html>
