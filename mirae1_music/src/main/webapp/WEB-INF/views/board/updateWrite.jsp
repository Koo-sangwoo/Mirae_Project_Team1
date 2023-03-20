<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
	<link rel="stylesheet" href="./resources/css/board.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="./resources/ckeditor/ckeditor.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src='//unpkg.com/jquery@3/dist/jquery.min.js'></script>
<script src='//unpkg.com/popper.js@1/dist/umd/popper.min.js'></script>
<script src='//unpkg.com/bootstrap@4/dist/js/bootstrap.min.js'></script>

<jsp:include page="../include/header.jsp"></jsp:include>

<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<title>${board.board_title}</title>
</head>
<body>
<center>
	<div style="width:800px;">

		<br/><br/>
	<form action="updateBoard" method="post">
		<input type="hidden" name="writer" id="writer" value="${member.member_id}"/>
		<table class="textb" width="100%">
			<tr>
			<td class="asd" width="60">카테고리</td>
			<td class="asd" width="60">제목</td>
			</tr>
			<tr>
			<td  class="asd" align="left">
		
		
	        <select id="category">
	        <option value>분류 없음</option>
	        <option value>음악</option>
	        <option value>리뷰</option>
	        <option value>가사 해석</option>
	        <option value>인증/후기</option>
	        <option value>일반</option>
	        </select>
		
		
			
			<td  class="asd" align="left">
			<input type="text" name="board_title" id="titlebox" maxlength="70" size="70%" placeholder="제목을 입력해주세요" value="${board.board_title}"/>
			<!-- <span id="titleCount" style="color:green;">50</span><span>/50</span> -->
			</td>
			</tr>
				
			<tr>
			<td colspan="2" align="left" height="500px">
			<textarea name="board_content" id="content" cols="88" rows="80">${board.board_content}</textarea>
		<script>
			CKEDITOR.replace( 'content', {} );
		</script>
			</td>
			</tr>
		</table>
		<br/><br/>
		<input type="submit" class="write" value="작성하기">
		<!-- <input type="button" class="write" value="작성하기" onClick="createB()" /> -->
	</form>
	
		<button style="float:right;" class="listp"onClick="location.href='board'">목록</button>
	</div>
</center>
<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>