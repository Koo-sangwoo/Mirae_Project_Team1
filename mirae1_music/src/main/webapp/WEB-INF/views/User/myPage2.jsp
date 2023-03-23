<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="./resources/css/myPage2.css">
<link rel="stylesheet"
	href="//unpkg.com/bootstrap@4/dist/css/bootstrap.min.css">
<script src='//unpkg.com/jquery@3/dist/jquery.min.js'></script>
<script src='//unpkg.com/popper.js@1/dist/umd/popper.min.js'></script>
<script src='//unpkg.com/bootstrap@4/dist/js/bootstrap.min.js'></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
<!--아이디는 수정이 불가능하니 누를시 경고, 비밀번호는 애초에 막아둠-->
$(document).ready(function(){
	$("#m_id").click(function(){
		alert("아이디는 수정이 불가합니다.");
		return false;
	});
})
function updateMember(){
	var m_id = $("#m_id").val();
	var m_nickname = $("#m_nickname").val();
	var m_address = $("#m_address").val();
	var m_hobby = $("#m_hobby").val();
	var m_phonenum = $("#m_phonenum").val();
	
	$.ajax({
		type : "post",
		url : "myPage2",
		data : {
			"m_id" : m_id,
			"m_nickname" : m_nickname,
			"m_address" : m_address,
			"m_hobby" : m_hobby,
			"m_phonenum" : m_phonenum
		}, success : function(data){
			swal("정보 수정 완료!", "회원 정보가 무사히 수정되었습니다.", "success");
			window.location.href="home";
		}
	})
}
</script>
<html>
<head>
<title>Home</title>
</head>
<body>
	<%@ include file="../include/header.jsp"%>

	<div class="container">
		<div class="order-history">
		<h5>회원 정보 페이지</h5>
			<a href="path/to/your/order/history">주문 내역 바로가기</a>
		</div>
		<hr>
		<div class="member-info">
			<!-- Insert code for displaying member information here -->
			<div>
				<div>
					<span>아이디</span>
				</div>
				<input type="text" id="m_id" name="m_id" value="${ member.m_id }"
					readonly="readonly">
				<hr>
			</div>
			<div>
				<div>
					<span>비밀번호 </span>
				</div>
				<input type="password" id="m_password" name="m_password"
					value="${ member.m_password }" disabled="disabled">
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
				<option value="영화시청">영화</option>
			</select>

		</div>
		<div class="buttons">
			<button id="save-btn" onclick="updateMember()">저장</button>
			<button id="delete-btn">탈퇴</button>
		</div>
	</div>

</body>
<jsp:include page="../include/footer.jsp"></jsp:include>
</html>
