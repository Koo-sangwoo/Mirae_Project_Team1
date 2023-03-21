<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>음악 정보</title>
<link rel="stylesheet"
	href="//unpkg.com/bootstrap@4/dist/css/bootstrap.min.css">
<script src='//unpkg.com/jquery@3/dist/jquery.min.js'></script>
<script src='//unpkg.com/popper.js@1/dist/umd/popper.min.js'></script>
<script src='//unpkg.com/bootstrap@4/dist/js/bootstrap.min.js'></script>
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
	<jsp:include page="../include/header.jsp"></jsp:include>

	<div class="container">
		<h1 align="center" style="margin-top: 20px;"><b>${musicDetail.music_title} 상세 정보</b></h1>

		<div class="music-info">
			<img alt="음악사진"
				src="./resources/images/music/${musicDetail.music_picture}">
			<div>
				<h2>곡명 : ${musicDetail.music_title}</h2>
				<p>가수명 : ${musicDetail.music_artname}</p>
				<p>발매일 : <fmt:formatDate value="${musicDetail.music_releasedate}" pattern="yyyy년 MM월 dd일"/></p>
				<a href="${musicDetail.music_link}"
							target="_blank" class="btn btn-primary">유튜브에서 보기</a>
			</div>
		</div>


		<div class="description">
			<h3><b>곡 설명</b></h3>
			<p>${musicDetail.music_exp}</p>
		</div>
	</div>
	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>