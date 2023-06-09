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
   function toggle() {
	   var div = document.getElementById("myDiv");
	   if (div.style.display === "none") {
	     div.style.display = "block";
	   } else {
	     div.style.display = "none";
	   }
   }
   // 댓글 삭제  확인
   $(function () {
   $(".replyDelete").click(function(){
      var result = confirm("댓글을 삭제하시겠습니까?")
        if(result==true) {
           alert("삭제되었습니다.");
      location.href="replyDelete?board_id=${board.board_id}"
            + "&reply_id=" + $(this).attr("data-reply_id");
        }
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
<style>
#span:before{
content:"|";
color:#ccc;
font-size:13px;
padding-right:5px;
}
.writebtn {
 position: absolute;
 float:right;
 right: 220px;
 background-color:crimson;
 color:white;
 border-radius:50px;
 border:none;
 height:30px;
 width:70px;
 }
 #list_btn {
 background-color:crimson;
 color:white;
 border:none;
 }
</style>
</head>
<body>

   <div style="display:flex;justify-content:center;min-height:650px;padding-top:55px;position:relative;">
   <form style="width:800px">
      <!-- 수정,삭제에 필요한 글번호를 hidden 태그에 저장 -->
      <input type="hidden" name="board_id" value="${board.board_id}">
    <div style="border-bottom:1px solid #f4f4f4;padding-bottom:7px;">
         <h1 style="padding-bottom:15px;">${board.board_title}</h1>
         <img src="./resources/images/adminicon.png" width="25px">${board.board_writer}
          <span id="span">${board.board_date}</span>  
               <span id="span">댓글<span style="color:crimson">${board.replycnt}</span></span>
                   <span id="span">  조회수 :<span style="color:crimson">${board.viewcnt}</span></span>
         </div>
       <p style="padding-top:45px;">${board.board_content}</p>
   </form>
   </div>
   <%-- <div style="margin-top: 10px; margin-bottom:20px;">
   <div align="center" style="float:left;">
         <c:if test=<%-- "${map.previousB != null}" >
         <button class="previous" onClick="location.href='view?bno=${map.previousB.bno}&show=Y'">이전글</button>
         </c:if>
         <c:if test=<%-- "${map.nextB != null}" >
         <button class="next" onClick="location.href='view?bno=${map.nextB.bno}&show=Y'">다음글</button>
         </c:if> --%>
  
      

      <div style="display:flex;justify-content:flex-end;">
   <%--    <!-- 관리자만 공지 -->
       <c:if test="${member.m_id != null}"> 
         <a href="write">글쓰기</a>&nbsp;&nbsp;&nbsp;
      </c:if> --%>
      <!-- 본인만 수정,삭제 버튼 표시 -->
      <c:if test="${member.m_nickname == board.board_writer or member.m_code == 123}"> 
         <a href="#" id="modify_btn">수정</a>&nbsp;&nbsp;&nbsp;
         <a href="#" onClick="deletecheck()">삭제</a>&nbsp;&nbsp;&nbsp;
      </c:if>
      <form id="infoForm" action="/updateWrite" method="get">
      <input type="hidden" id="board_id" name="board_id" value='<c:out value="${board.board_id}"/>'>
      <input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum}"/>'>
      <input type="hidden" name="amount" value='<c:out value="${cri.amount}"/>'>
      <input type="hidden" name="type" value="${cri.type}"> 
      <input type="hidden" name="keyword" value="${cri.keyword}"> 
      </form>
      
      
      </div>
    
   <hr>
   <!-- 댓글 작성 -->
<c:if test="${member.m_id != null}">
<div style="disply:flex">
<form action="/replyWrite" method="post">
<input type="hidden" name="reply_writer" value="${member.m_nickname}">
<input type="hidden" name="board_id" value="${board.board_id}">
<div style="display:flex;justify-content:center;">
   <%-- <c:if test="${sessionScope.userid != null}"> 로그인상태일때 --%>
    <textarea rows="5" cols="80" id="content" name="reply_content" placeholder="댓글을 작성하세요"></textarea>
    <br>
</div>
<div style="position:absolute;right:233px;padding:15px">
<button type="submit" class="writebtn">등록</button>

</div>

</form>
</div>
</c:if>


<c:if test="${member.m_id ==null}">
<div style="text-align:center;">
   <%-- <c:if test="${sessionScope.userid != null}"> 로그인상태일때 --%>
    <a href="login_form"><textarea rows="5" cols="80" id="content" name="reply_content" placeholder="로그인 후 이용가능합니다 .로그인하시겠습니까?"></textarea>
    </a>
</div>
</c:if>   
   <a id="list_btn" onClick="location.href='board'" style="position:relative;top:15px;left:450px;">목록</a>
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
   
   <table style="width: 700px;display:flex;justify-content:center;position:relative;left:250px;height:550px;">
   <c:forEach var="row" items="${list}">
    <c:set var="str" value="${fn:replace(row.reply_content,'<','&lt;') }" />
    <c:set var="str" value="${fn:replace(str,'>','&gt;') }" />
    <c:set var="str" value="${fn:replace(str,'  ','&nbsp;&nbsp;')}" />
    <c:set var="str" value="${fn:replace(str,newLineChar,'<br>') }" />
    
      <%-- <tr>
         <td>${row.reply_writer}
              (${row.reply_date}<fmt:formatDate value="${row.regdate}" pattern="yyyy-MM-dd a HH:mm:ss" /> )<br> 
             ${str}
         </td>
      </tr>
      <tr> --%>
      
        <tr>
      <td><hr>
      <tr>
        
         <td style="height:90px;padding-bottom:70px;">${row.reply_writer}
              (${row.reply_date}<%-- <fmt:formatDate value="${row.regdate}" pattern="yyyy-MM-dd a HH:mm:ss" /> --%> )<c:if test="${row.reply_writer == member.m_nickname}"> <a style="display:inline;left:350px;position:relative;" onclick="toggle()">수정</a><a class="replyDelete" data-reply_id="${row.reply_id}" style="display:inline;position:relative;left:365px;">삭제</a><br></c:if> 
             ${str}
         </td>
         
      </tr>
      </div>
      <tr>
      <td><form action="replyUpdate" method="post">
      <input type="hidden" name="board_id" value="${board.board_id}">
      <input type="hidden" name="reply_id" value="${row.reply_id}">
      
      <div style="display:none;" id="myDiv">
      <textarea name="reply_content" style="height:120px;width:620px;"></textarea>
      <c:if test="${row.reply_writer == member.m_nickname}"> 
      <button type="submit">수정</button>
     <%--  <button type="button" class="replyDelete" data-reply_id="${row.reply_id}">삭제</button> --%>
      </c:if>
      </div>
      </form>
     <%--  <c:if test="${row.reply_writer == member.m_nickname}">
      <button type="button" class="replyDelete" data-reply_id="${row.reply_id}">삭제</button>
      </c:if> --%>
      
   </c:forEach>
   
</table>
</center>
<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>