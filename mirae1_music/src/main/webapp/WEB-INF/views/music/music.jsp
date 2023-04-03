<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>음악</title>
</head>
<link rel="stylesheet"
	href="//unpkg.com/bootstrap@4/dist/css/bootstrap.min.css">
<script src='//unpkg.com/jquery@3/dist/jquery.min.js'></script>
<script src='//unpkg.com/popper.js@1/dist/umd/popper.min.js'></script>
<script src='//unpkg.com/bootstrap@4/dist/js/bootstrap.min.js'></script>
<body>
	<jsp:include page="../include/header.jsp"></jsp:include>
	<h1 style="text-align: center">
		<b>음악</b>
	</h1>
	<hr>
	<br>
	<br>
	<hr>
	<h3 align="center">Music-List</h3>
	<c:if test="${member.m_code == 123}">
	<div align="center">
<a href="/insertMusic"><button class="btn btn-primary">음악 추가</button></a>
</div>
</c:if>
	<hr>
	<form class="d-flex" action="/music_search" method="get">
		<input class="form-control me-2" type="search" name="keyword"
			placeholder="Search" aria-label="Search" style="width: 200px;">
		<button class="btn btn-outline-success" type="submit">검색</button>
	</form>
<c:forEach items="${Mlist}" var="music" varStatus="status">
  <c:if test="${status.index % 3 == 0}">
    <div class="row">
  </c:if>
  <div class="col-md-4 mb-3">
    <div class="card">
      <img src="./resources/images/music/${music.music_picture}" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">${music.music_title}</h5>
        <p class="card-text">${music.music_artname}</p>
        <a href="/musicDetail?music_id=${music.music_id}" class="btn btn-primary">음악 상세정보</a>
        <a href="${music.music_link}" target="_blank" class="btn btn-primary">유튜브에서 보기</a>
      </div>
    </div>
  </div>
  <c:if test="${status.index % 3 == 2 or status.last}">
    </div>
  </c:if>
</c:forEach>

	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>