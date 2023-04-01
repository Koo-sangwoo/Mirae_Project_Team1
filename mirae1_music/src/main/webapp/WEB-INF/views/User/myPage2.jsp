<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="./resources/css/myPage2.css">
<link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />							
<link rel="stylesheet"
	href="//unpkg.com/bootstrap@4/dist/css/bootstrap.min.css">
<script src='//unpkg.com/jquery@3/dist/jquery.min.js'></script>
<script src='//unpkg.com/popper.js@1/dist/umd/popper.min.js'></script>
<script src='//unpkg.com/bootstrap@4/dist/js/bootstrap.min.js'></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<script src="./resources/js/myPage.js" charset="UTF-8"></script>

<html>
<head>
<title>Home</title>
</head>
<body>
	<%@ include file="../include/header.jsp"%>

	<div class="container">
		<div class="order-history">
		<h5>회원 정보 페이지</h5>
			<%-- <a href="order_complete?m_id=${member.m_id}">주문 내역 바로가기</a> --%>
			<div class="buttons">
				<button class="orderList" name="orderList" id="orderList" onclick="window.location.href='order_complete?m_id=${member.m_id}'">주문내역</button>
				<c:if test="${ member.m_code == 123 }">
					<button class="adminPage" name="adminPage" id="adminPage" onclick="window.location.href='adminPage'">회원관리</button>
				</c:if>
			</div>	
		</div>
		<hr>
		<div class="member-info">
			<div>
				<div>
					<span>아이디</span>
				</div>
				<input type="text" id="m_id" name="m_id" value="${ member.m_id }"
					readonly="readonly">
				<hr>
			</div>
			<div>
				<span>닉네임 </span>
			</div>
			<input type="text" id="m_nickname" name="m_nickname"
				value="${ member.m_nickname }">
			<hr>
			<div>
				<span>주소</span>
			</div>
			<input type="text" id="m_address" name="m_address"
				value="${ member.m_address }">
			<hr>
			<div>
				<span>전화번호</span>
			</div>
			<input type="text" id="m_phonenum" name="m_phonenum"
				value="${ member.m_phonenum }">
			<hr>
			<div>
				<span>취미</span>
			</div>
			<select id="m_hobby" name="m_hobby">
				<option value="${ member.m_hobby }">선택</option>
				<option value="독서">독서</option>
				<option value="운동">운동</option>
				<option value="영화">영화시청</option>
			</select>

		</div>
		<div class="buttons">
			<button id="save-btn" onclick="updateMember()">저장</button>
			<button id="delete-btn" onclick="deleteMember()">탈퇴</button>
		</div>
	</div>

</body>
<jsp:include page="../include/footer.jsp"></jsp:include>
</html>
