<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<title>Insert title here</title>
<style type="text/css">
.adminFrm {
  flex-grow: 1;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}

.viewMember {
  border-collapse: collapse;
  width: 100vh;
  margin: 0 auto;
}

th, td {
  border: 1px solid #ddd;
  padding: 8px;
  text-align: center;
}

th {
  background-color: #333;
  color: #fff;
}

input[type=checkbox] {
  margin-right: 5px;
}

#cartClear {
  background-color: #333;
  color: #fff;
  padding: 8px 16px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  transition: background-color 0.3s;
}

#cartClear:hover {
  background-color: #555;
}
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.min.css">
<script type="text/javascript">
function deleteMember() { // 회원 탈퇴
	var user_id = $("input:radio[name='user_id']:checked").val();
	console.log(user_id);
	swal({
		title : "회원 탈퇴",
		text : "정말로 회원 탈퇴를 하시겠습니까?, 회원 탈퇴시 복구할 수 없습니다.",
		type : "warning",
		showCancelButton : true,
		confirmButtonText : "확인",
		cancelButtonText : "취소"
	}, function(data) {
		if (data) {

			$.ajax({
				type : "post",
				url : "deleteMember",
				data : {
					"m_id" : user_id
				},
				success : function(data) {
					window.location.reload();
				}
			});
		} else {
			return false;
		}
	}); 
}
</script>
</head>
<body class="admin">
	<%@ include file="../include/header.jsp" %>
	<form class="adminFrm">
		
			<h1 align="center">회원 목록</h1>
			<div style="height: 80vh;">
			<table class="viewMember" align="center">
			<thead>
				<tr>
					<th>선택</th>
					<th>회원이름</th>
					<th>아이디</th>
					<th>닉네임</th>
					<th>전화번호</th>
					<th>취미</th>
				</tr>
			</thead>
			<c:if test="${fn:length(User) == 0}">
				<tr>
					<td colspan="6"><p style="margin: 14px 20px; color: black;"><span style="font-weight: bold;">현재 가입한 회원이 없습니다.</span></p></td>
				</tr>
			</c:if>
			
			
			<c:if test="${fn:length(User) > 0 }">
			<tbody>
				<c:forEach items="${User}" var="user">
					<tr align="center">
						<td><input type="radio" id="user_id" name="user_id" value="${user.m_id}"/>
						<td>${user.m_name }</td>						
						<td>${user.m_id}</td>						
						<td>${user.m_nickname}</td>						
						<td>${ user.m_phonenum }</td>
						<td>${ user.m_hobby }
					</tr>
					</c:forEach>
			</tbody>
			</c:if>	
				<tr align="center">
					<td colspan="6"><input type="button" name="cartClear"
						id="cartClear" onclick="deleteMember()" value="회원 삭제" /></td>
				</tr>
			</table>
			</div>
	</form>
	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>