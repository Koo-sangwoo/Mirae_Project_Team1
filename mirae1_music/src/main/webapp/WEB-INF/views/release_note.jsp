<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<link rel="stylesheet"
	href="//unpkg.com/bootstrap@4/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/releaseNote.css">
<script src='//unpkg.com/jquery@3/dist/jquery.min.js'></script>
<script src='//unpkg.com/popper.js@1/dist/umd/popper.min.js'></script>
<script src='//unpkg.com/bootstrap@4/dist/js/bootstrap.min.js'></script>
<html>
<head>
<title>Home</title>
</head>
<body>
	<%@ include file="include/header.jsp"%>
	<!-- // 게시판 시작 // -->
	<div class="board" align="center" style="height: 100vh">
		<div class="boardHeader">
			<div class="boardTitle">
				<div class="boardTitleText">
					<a href="release_note"></a>
				</div>
			</div>
		</div>
		
		<div class="viewDocument">
			<div class="boardRead">
				<div class="boardReadHeader">
					<div class="titleArea">
						<span class="date round6"> <!--- <p class="day">28</p> --->
							<p class="year">2023-03-20</p>
						</span>
					</div>
				</div>
				<div class="boardReadBody">
					<div>
						<h2>개발 1주차</h2>
						<hr>
						<ul>
							<li>
								<p>팀장 : 구상우</p>
							</li>
							<li>
								<p>팀원 : 박승범, 윤민수</p>
							</li>
							<li>
								<p>역할 분배 및 각자 파트 폼 제작과 기능 구현</p>
							</li>
						</ul>
						<br>
					</div>
					<hr><br><br>
				</div>
			</div>
		</div>

		<div class="viewDocument">
			<div class="boardRead">
				<div class="boardReadHeader">
					<div class="titleArea">
						<span class="date round6"> <!--- <p class="day">28</p> --->
							<p class="year">2023-03-13</p>
						</span>
					</div>
				</div>
				<div class="boardReadBody">
					<div>
						<h2>개발 시작일</h2>
						<hr>
						<ul>
							<li>
								<p>팀장 : 구상우</p>
							</li>
							<li>
								<p>팀원 : 박승범, 윤민수</p>
							</li>
							<li>
								<p>음악 소개 및 굿즈 플랫폼 제작 시작</p>
							</li>
						</ul>
						<br>
					</div>
					<hr><br><br>
				</div>
			</div>
		</div>
	</div>
</body>
<jsp:include page="include/footer.jsp"></jsp:include>
</html>
