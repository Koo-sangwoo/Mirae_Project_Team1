<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="resources/css/view.css?">
<jsp:include page="../include/header.jsp"></jsp:include>
<script>
	// 게시물 삭제 확인
	function deletecheck() {
		var result = confirm("게시물을 삭제하시겠습니까?")
		  if(result == true) {
			  alert("삭제되었습니다.");
			  location.href='delete?board_id='+${board.board_id};
		  }
	}
	// 댓글 삭제  확인
	$(function () {
	$(".replyDelete").click(function(){
		var result = confirm("게시물을 삭제하시겠습니까?")
		  if(result) 
			  alert("삭제되었습니다.");
		location.href="replyDelete?board_id=${board.board_id}"
				+ "&reply_id=" + $(this).attr("data-reply_id");
	});
	});
	$(function () {
	let form = $("#infoForm");
	$("#list_btn").on("click", function(e) {
		form.find("#board_id").remove();
		form.attr("action", "/board");
		form.submit();
	});
	});
	$(function () {
		let form = $("#infoForm");
	$("#modify_btn").on("click", function(e) {
		form.attr("action", "updateWrite");
		form.submit();
		console.log('ㅇㅇㅇㅇ');
	});
	});
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<title>${board.board_id}</title>
</head>
<body>
<%-- <%@ include file="../include/menu.jsp" %> --%>
<center>
	<div style="width:800px;">
		
		<script>
		
		</script>
		
		<br/><br/>
	<form>
		<!-- 수정,삭제에 필요한 글번호를 hidden 태그에 저장 -->
		<input type="hidden" name="board_id" value="${board.board_id}">
		<table border="1" bordercolor="#E1DCDC" class="view" cellpadding="0" cellspacing="0" width="100%">
			<tr>
			<td width="70">제목</td>
			<td colspan='3' align="left">${board.board_title}</td>
			</tr>
				
			<tr>
			<td>작성자</td>
			<td colspan='3' align="left">${board.board_writer}</td>
			</tr>
				
			<tr>
			<td>작성일</td>
			<td colspan='3' align="left">
			<div style="width:150px;float:left;">
			 ${board.board_date}  
			</div>
			<div>
			&nbsp;&nbsp;&nbsp;조회수 : ${board.viewcnt}
			</div>
			</td>
			</tr>
				
			<tr valign="top">
			<td colspan='4' height="500px">${board.board_content}</td>
			</tr>
		</table>
	</form>
	<%-- <div style="margin-top: 10px; margin-bottom:20px;">
	<div align="center" style="float:left;">
			<c:if test=<%-- "${map.previousB != null}" >
			<button class="previous" onClick="location.href='view?bno=${map.previousB.bno}&show=Y'">이전글</button>
			</c:if>
			<c:if test=<%-- "${map.nextB != null}" >
			<button class="next" onClick="location.href='view?bno=${map.nextB.bno}&show=Y'">다음글</button>
			</c:if> --%>
			&nbsp;&nbsp;&nbsp;게시글 번호 : ${board.board_id}
		</div>

		<div style="float:right;">
		<!-- 관리자만 공지 -->
		 <c:if test="${member.m_id != null}"> 
			<a href="write">글쓰기</a>&nbsp;&nbsp;&nbsp;
		</c:if>
		<!-- 본인만 수정,삭제 버튼 표시 -->
		<c:if test="${member.m_nickname == board.board_writer}"> 
			<a href="#" id="modify_btn">수정</a>&nbsp;&nbsp;&nbsp;
			<a href="#" onClick="deletecheck()">삭제</a>&nbsp;&nbsp;&nbsp;
		</c:if>
		<form id="infoForm" action="/updateWrite" method="get">
		<input type="hidden" id="board_id" name="board_id" value='<c:out value="${board.board_id}"/>'>
		<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum}"/>'>
		<input type="hidden" name="amount" value='<c:out value="${cri.amount}"/>'>
		</form>
		
		<button type="button" id="list_btn" onClick="location.href='board'">목록</button>
		</div>
		</div>
		</div>
	</div>
	
	<!-- 댓글 작성 -->
<c:if test="${member.m_id != null}">
<form action="/replyWrite" method="post">
<input type="hidden" name="reply_writer" value="${member.m_nickname}">
<input type="hidden" name="board_id" value="${board.board_id}">
<div style="width:700px; text-align:center;">
   <%-- <c:if test="${sessionScope.userid != null}"> 로그인상태일때 --%>
    <textarea rows="5" cols="80" id="content" name="reply_content" placeholder="댓글을 작성하세요"></textarea>
    <br>
    <button type="submit">댓글 쓰기</button>
</div>
</form>
</c:if>

<c:if test="${member.m_id ==null}">
<div style="width:700px; text-align:center;">
   <%-- <c:if test="${sessionScope.userid != null}"> 로그인상태일때 --%>
    <a href="login_form"><textarea rows="5" cols="80" id="content" name="reply_content" placeholder="로그인 후 이용가능합니다 .로그인하시겠습니까?"></textarea>
    </a>
</div>
</c:if>	
	
	<br/><br/><br/>
	<!-- 현재 글을 기준으로 이전글,다음글 리스트 -->
	<%-- <div align="center">
		<table class="simpleView" width="800">
			<c:if test="<%-- ${map.previousB != null} ">
			<tr class="a">
				<td onClick="location.href='view?bno=${map.previousB.bno}&show=Y'"
				style="cursor: pointer">이전글</td>
				<td onClick="location.href='view?bno=${map.previousB.bno}&show=Y'"
				style="cursor: pointer;width:400px;">${map.previousB.title}</td>
				<td class="tdS">${map.previousB.writer}</td><td class="tdS">${map.previousB.regdate}</td>
			</tr>
			</c:if>
			<c:if test="${map.nextB != null}">
			<tr class="b">
				<td onClick="location.href='view?bno=${map.nextB.bno}&show=Y'"
				style="cursor: pointer">다음글</td>
				<td  onClick="location.href='view?bno=${map.nextB.bno}&show=Y'" 
				style="cursor: pointer;width:400px;">${map.nextB.title}</td>
				<td class="tdS">${map.nextB.writer}</td><td class="tdS">${map.nextB.regdate}</td>
			</tr>
			</c:if>
		</table>
	</div> --%>
	
	<table style="width: 700px">
	<c:forEach var="row" items="${list}">
	 <c:set var="str" value="${fn:replace(row.reply_content,'<','&lt;') }" />
	 <c:set var="str" value="${fn:replace(str,'>','&gt;') }" />
	 <c:set var="str" value="${fn:replace(str,'  ','&nbsp;&nbsp;')}" />
	 <c:set var="str" value="${fn:replace(str,newLineChar,'<br>') }" />
	 
		<tr>
			<td>${row.reply_writer}
			     (${row.reply_date}<%-- <fmt:formatDate value="${row.regdate}" pattern="yyyy-MM-dd a HH:mm:ss" /> --%> )<br> 
			    ${str}
			</td>
		</tr>
		<tr>
		<td><form action="replyUpdate" method="post">
		<input type="hidden" name="board_id" value="${board.board_id}">
		<input type="hidden" name="reply_id" value="${row.reply_id}">
		
		<textarea name="reply_content"></textarea>
		<c:if test="${row.reply_writer == member.m_nickname}"> 
		<button type="submit">수정</button>
		</c:if>
		</form>
		<c:if test="${row.reply_writer == member.m_nickname}">
		<button type="button" class="replyDelete" data-reply_id="${row.reply_id}">삭제</button>
		</c:if>
		
	</c:forEach>
	
</table>
</center>
<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>