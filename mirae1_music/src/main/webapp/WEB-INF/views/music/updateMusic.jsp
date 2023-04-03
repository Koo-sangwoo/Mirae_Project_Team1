<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Edit Music</title>
<link rel="stylesheet"
	href="//unpkg.com/bootstrap@4/dist/css/bootstrap.min.css">
<script src='//unpkg.com/jquery@3/dist/jquery.min.js'></script>
<script src='//unpkg.com/popper.js@1/dist/umd/popper.min.js'></script>
<script src='//unpkg.com/bootstrap@4/dist/js/bootstrap.min.js'></script>
<style>
		h1 {
			margin-top: 50px;
			margin-bottom: 30px;
			font-size: 36px;
			font-weight: bold;
			text-align: center;
			color: #555;
			text-shadow: 2px 2px 3px rgba(0,0,0,0.3);
		}

		.allForm {
			margin: 0 auto;
			max-width: 500px;
			padding: 20px;
			border: 1px solid #ddd;
			border-radius: 5px;
			box-shadow: 2px 2px 5px rgba(0,0,0,0.3);
		}

		.allForm .form-group {
			margin-bottom: 20px;
		}

		.allForm label {
			font-weight: bold;
			margin-bottom: 5px;
		}

		.allForm select {
			height: 38px;
		}

		.allForm button {
			margin-top: 20px;
		}

		.allForm .btn-primary {
			background-color: #007bff;
			border-color: #007bff;
		}

		.allForm .btn-primary:hover {
			background-color: #0069d9;
			border-color: #0062cc;
		}
	</style>
</head>
<body>
	<jsp:include page="../include/header.jsp"></jsp:include>

	<div class="container mt-5">
		<h2 align="center">음악 수정</h2>
		<form action="updateMusic" method="POST" class="allForm">
			<input type="hidden" name="music_id" value="${music.music_id}">
			<div class="form-group">
				<label for="music_title">음악명</label> <input type="text"
					class="form-control" name="music_title" value="${music.music_title}"
					required>
			</div>
			<div class="form-group">
				<label for="music_genre">장르</label> <select class="form-control"
					name="music_genre" required>
					<option value="">장르를 선택하세요</option>
					<option value="k-pop" >K-Pop</option>
					<option value="hiphop">Hip-Hop</option>
					<option value="ballad">Ballad</option>
				</select>
			</div>
			<div class="form-group">
				<label for="music_exp">음악 상세 설명</label>
				<textarea class="form-control" name="music_exp" rows="5">${music.music_exp}</textarea>
			</div>
			<div class="form-group">
				<label for="music_picture">앨범 사진</label> <input type="text"
					class="form-control" name="music_picture" value="${music.music_picture}"
					required>
			</div>
			<div class="form-group">
				<label for="music_artname">가수명</label> <input type="text"
					class="form-control" name="music_artname" value="${music.music_artname}"
					required>
			</div>
			<div class="form-group">
				<label for="music_link">유튜브 링크</label> <input type="text"
					class="form-control" name="music_link"
					value="${music.music_link}" required>
			</div>
			<button type="submit" class="btn btn-primary">수정하기</button>
			<a href="/product?p_category=k-pop"><button type="button"
					class="btn btn-primary">수정 취소</button> </a>
		</form>
	</div>

	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>