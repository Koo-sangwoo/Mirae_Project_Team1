<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>음악 정보</title>
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
<style>
.music-info {
	display: flex;
	align-items: center;
	margin-top: 20px;
}

.music-info img {
	margin-right: 20px;
}

.description {
	margin-top: 20px;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
}
</style>
</head>
<body>
	<script type="text/javascript">
		function musicDelete() {
			if (!confirm("해당 음악을 삭제할까요?")) {
				alert("취소되었습니다.");
			} else {
				alert("해당 품목을 삭제합니다.");
				document.deleteMusic.action = "/deleteMusic";//html문서내의 deleteMusic이라는 이름을 가진 폼의 액션 설정
				document.deleteMusic.submit();
			}
		}
	</script>
	<jsp:include page="../include/header.jsp"></jsp:include>

	<div class="container">
		<h1 align="center" style="margin-top: 20px;">
			<b>${musicDetail.music_title} 상세 정보</b>
		</h1>
		<c:if test="${member.m_code == 123}">
			<div class="d-flex justify-content-center mb-3">
				<a href="/updateMusic?music_id=${musicDetail.music_id}"><button
						type="button" class="btn btn-danger">수정하기</button></a>
				<form action="/deleteMusic" method="get" name="deleteMusic">
					<input type="hidden" name="music_id"
						value="${musicDetail.music_id}">
					<button type="button" onclick="musicDelete()"
						class="btn btn-danger ml-3">삭제하기</button>
				</form>
			</div>
		</c:if>
		<div class="music-info">
			<img alt="음악사진" src="../resources/images/music/${musicDetail.music_picture}">
			<div>
				<h2>곡명 : ${musicDetail.music_title}</h2>
				<p>가수명 : ${musicDetail.music_artname}</p>
				<a href="${musicDetail.music_link}" target="_blank"
					class="btn btn-primary">유튜브에서 보기</a>
			</div>
		</div>


		<div class="description">
			<h3>
				<b>곡 설명</b>
			</h3>
			<p>${musicDetail.music_exp}</p>
		</div>
	</div>
	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>