<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	request.getAttribute("member");
%>
<link rel="stylesheet" href="//unpkg.com/bootstrap@4/dist/css/bootstrap.min.css">
<script src='//unpkg.com/jquery@3/dist/jquery.min.js'></script>
<script src='//unpkg.com/popper.js@1/dist/umd/popper.min.js'></script>
<script src='//unpkg.com/bootstrap@4/dist/js/bootstrap.min.js'></script>
<script>
	function checkPw(){
		var m_password = $("#m_password");
		$.ajax({
			type : "post",
			url : "myPage",
			data : {
				"m_password" : m_password
			},
			dataType : "json",
			success : function(data){
				if(data == 1){
					window.location.href="myPage2";
				} else {
					alert(data);
					return false;
				}
			}
		})
	}
</script>
<html>
<head>
	<title>Home</title>
</head>
<body>
<jsp:include page="../include/header.jsp"></jsp:include>

	<div>
		<input type="hidden" id="m_id" value="${ member.m_id }">
		<p>비밀번호 확인</p>
		<input type="text" id="m_password" onclick="checkPw()">
	</div>

</body>
<jsp:include page="../include/footer.jsp"></jsp:include>
</html>
