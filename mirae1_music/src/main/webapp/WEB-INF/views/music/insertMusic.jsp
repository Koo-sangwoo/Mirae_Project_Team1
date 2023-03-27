<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>음악 추가</title>
<link rel="stylesheet"
	href="//unpkg.com/bootstrap@4/dist/css/bootstrap.min.css">
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

		form {
			margin: 0 auto;
			max-width: 500px;
			padding: 20px;
			border: 1px solid #ddd;
			border-radius: 5px;
			box-shadow: 2px 2px 5px rgba(0,0,0,0.3);
		}

		form .form-group {
			margin-bottom: 20px;
		}

		form label {
			font-weight: bold;
			margin-bottom: 5px;
		}

		form select {
			height: 38px;
		}

		form button {
			margin-top: 20px;
		}

		form .btn-primary {
			background-color: #007bff;
			border-color: #007bff;
		}

		form .btn-primary:hover {
			background-color: #0069d9;
			border-color: #0062cc;
		}
	</style>
</head>
<body>
	<jsp:include page="../include/header.jsp"></jsp:include>
	<div class="container">
		<div class="row">
			<div class="col-12">
				<h1 align="center">음악 추가</h1>
				<form action="insertMusic" method="POST" class="form-container">
					<div class="form-group">
						<label for="music_title">음악명</label> <input type="text"
							class="form-control" id="music_title" name="music_title">
					</div>
					<div class="form-group">
						<label for="music_genre">장르</label> <select class="form-control"
							id="music_genre" name="music_genre">
							<option value="k-pop">K-Pop</option>
							<option value="hiphop">힙합</option>
							<option value="ballad">발라드</option>
						</select>
					</div>
					<div class="form-group">
						<label for="music_exp">곡 설명</label>
						<textarea class="form-control" id="music_exp" name="music_exp"
							rows="3"></textarea>
					</div>
					<div class="form-group">
						<label for="music_picture">앨범 사진</label> <input type="text"
							class="form-control" id="music_picture" name="music_picture">
					</div>
					<div class="form-group">
						<label for="music_artname">가수명</label> <input type="text"
							class="form-control" id="music_artname" name="music_artname">
					</div>
					<div class="form-group">
						<label for="music_link">유튜브 링크</label> <input type="text"
							class="form-control" id="music_link" name="music_link">
					</div>
					<button type="submit" class="btn btn-primary">음악 추가</button>
					<a href="/" class="btn btn-primary">취소</a>
				</form>
			</div>
		</div>
	</div>
	<jsp:include page="../include/header.jsp"></jsp:include>
	<script src='//unpkg.com/jquery@3/dist/jquery.min.js'></script>
	<script src='//unpkg.com/popper.js@1/dist/umd/popper.min.js'></script>
	<script src='//unpkg.com/bootstrap@4/dist/js/bootstrap.min.js'></script>
</body>
</html>