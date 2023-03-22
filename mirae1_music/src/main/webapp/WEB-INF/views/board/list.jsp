<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<jsp:include page="../include/header.jsp"></jsp:include>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<<link rel="stylesheet" href="//unpkg.com/bootstrap@4/dist/css/bootstrap.min.css">
<!--  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
 --><link rel="stylesheet" href="./resources/css/custom.css">
<script src='//unpkg.com/jquery@3/dist/jquery.min.js'></script>
<script src='//unpkg.com/popper.js@1/dist/umd/popper.min.js'></script>
<script src='//unpkg.com/bootstrap@4/dist/js/bootstrap.min.js'></script>
<!-- <<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
 --> <title>Insert title here</title>
</head>
<body>
<div class="container" width="200">
<!-- <div class="row"> -->
<table class="table table-hover">
<thead>
<tr>
<th>번호</th>
<th>카테고리</th>
<th>제목</th>
<th>글쓴이</th>
<th>날짜</th>
</tr>
<c:forEach var="row" items="${list}">
			<tr>
				<td>${row.board_id}</td>
				<td>${row.category} 
				<td><a href="view?board_id=${row.board_id}">
			 	${row.board_title}</a>
				</td>
				<td>${row.board_writer}</td> 
		<%--	<td>
		 		<fmt:formatDate value="${row.regdate}" pattern="yyyy-MM-dd HH:mm:ss" />
				</td>
				<td>${row.viewcnt}</td> --%>
			</tr>
	</c:forEach>
</thead>
<tbody>

<!-- list페이지에 출력될것 board_id , category , title , writer , date -->
<!-- <tr>
<td>123</td>
<td>음악</td>
<td><a href="#">이것은 제목입니다.</a></td>
<td>힙합엘이유저</td>
<td>2023.03.14</td>
</tr>

<tr>
<td>123</td>
<td>음악</td>
<td><a href="#">이것은 제목입니다.</a></td>
<td>힙합엘이유저</td>
<td>2023.03.14</td>
</tr>

<tr>
<td>123</td>
<td>음악</td>
<td><a href="#">이것은 제목입니다.</a></td>
<td>힙합엘이유저</td>
<td>2023.03.14</td>
</tr>

<tr>
<td>123</td>
<td>음악</td>
<td><a href="#">이것은 제목입니다.</a></td>
<td>힙합엘이유저</td>
<td>2023.03.14</td>
</tr>

<tr>
<td>123</td>
<td>음악</td>
<td><a href="#">이것은 제목입니다.</a></td>
<td>힙합엘이유저</td>
<td>2023.03.14</td>
</tr>

<tr>
<td>123</td>
<td>음악</td>
<td><a href="#">이것은 제목입니다.</a></td>
<td>힙합엘이유저</td>
<td>2023.03.14</td>
</tr>

<tr>
<td>123</td>
<td>음악</td>
<td><a href="#">이것은 제목입니다.</a></td>
<td>힙합엘이유저</td>
<td>2023.03.14</td>
</tr>

<tr>
<td>123</td>
<td>음악</td>
<td><a href="#">이것은 제목입니다.</a></td>
<td>힙합엘이유저</td>
<td>2023.03.14</td>
</tr>

<tr>
<td>123</td>
<td>음악</td>
<td><a href="#">이것은 제목입니다.</a></td>
<td>힙합엘이유저</td>
<td>2023.03.14</td>
</tr>

<tr>
<td>123</td>
<td>음악</td>
<td><a href="#">이것은 제목입니다.</a></td>
<td>힙합엘이유저</td>
<td>2023.03.14</td>
</tr>

<tr>
<td>123</td>
<td>음악</td>
<td><a href="#">이것은 제목입니다.</a></td>
<td>힙합엘이유저</td>
<td>2023.03.14</td>
</tr>

<tr>
<td>123</td>
<td>음악</td>
<td><a href="#">이것은 제목입니다.</a></td>
<td>힙합엘이유저</td>
<td>2023.03.14</td>
</tr>

<tr>
<td>123</td>
<td>음악</td>
<td><a href="#">이것은 제목입니다.</a></td>
<td>힙합엘이유저</td>
<td>2023.03.14</td>
</tr>

<tr>
<td>123</td>
<td>음악</td>
<td><a href="#">이것은 제목입니다.</a></td>
<td>힙합엘이유저</td>
<td>2023.03.14</td>
</tr> -->
</tbody>
</table>
</div>

<hr/>
 
<a id="searchbtn">검색</a>
<button type="버튼" onclick="location.href='/write';" id="writebtn" >글쓰기</button>


<div class="d-flex flex-row justify-content-around">
<ul class="pagination">
<li><a href="#">1</a></li>
<li><a href="#">2</a></li>
</ul>
</div>

<style>
#searchbtn{
 position: absolute;
  left:215px
    }
#writebtn {
 float:right;
 right: 100px;
}
    </style>


  
	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>