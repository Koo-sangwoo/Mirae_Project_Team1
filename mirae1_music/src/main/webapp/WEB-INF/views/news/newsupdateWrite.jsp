<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
   <link rel="stylesheet" href="./resources/css/board.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<!-- <script src="./resources/ckeditor/ckeditor.js"></script> -->
<script src="//cdn.ckeditor.com/4.20.2/standard/ckeditor.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
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

<jsp:include page="../include/header.jsp"></jsp:include>

<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<title>${news.news_title}</title>
</head>

<script>
$(function () {
let form =$("#infoForm");  //페이지 이동 form(리스트 페이지 이동, 조회페이지 이동)
let mForm= $("#modifyForm"); //페이지 데이터 수정 form

//목록 페이지 이동버튼
$("#list_btn").on("click", function(e) {
   form.find("#news_id").remove();
   form.attr("action" , "/news");
   form.submit();
});
});

</script>
<style>
#writebtn {
  position: absolute;
 float:right;
 right: 380px;
 background-color:crimson;
 color:white;
 border-radius:50px;
 border:none;
 height:30px;
 width:70px;
 bottom:30px
 }
 .listp{
   position: absolute;
 float:right;
 right: 100px;
 background-color:crimson;
 color:white;
 border-radius:50px;
 border:none;
 height:30px;
 width:70px;
 bottom:30px
 }
</style>
<body>
<center>
   <div style="width:800px;">
<form id="infoForm" method="get">
<input type="hidden" id="news_id" name="news_id" value='<c:out value="${news.news_id}"/>'>
<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum}"/>'>
<input type="hidden" name="amount" value='<c:out value="${cri.amount}"/>'>
<input type="hidden" name="type" value="${cri.type}"> 
<input type="hidden" name="keyword" value="${cri.keyword}">

</form>
      <br/><br/>
   <form action="updateNews?news_id=${news.news_id}" method="post">
      <input type="hidden" name="writer" id="writer" value="${member.m_id}"/>
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
         <input type="text" name="news_title" id="titlebox" maxlength="70" size="70%" placeholder="제목을 입력해주세요" value="${news.news_title}"/>
         <!-- <span id="titleCount" style="color:green;">50</span><span>/50</span> -->
         </td>
         </tr>
            
         <tr>
         <td colspan="2" align="left" height="500px">
         <textarea name="news_content" id="content" cols="88" rows="80">${news.news_content}</textarea>
      <script>
      CKEDITOR.replace( 'content', {width:'100%',
            height:'350px',filebrowserUploadUrl : "fileupload.do"} );
   </script>
      
         </td>
         </tr>
      </table>
      <br/><br/>
      <input type="submit" class="write" id="writebtn" value="작성하기">
      <!-- <input type="button" class="write" value="작성하기" onClick="createB()" /> -->
   </form>
   
      <button style="float:right;" class="listp" onClick="#" id="list_btn">목록</button>
   </div>
</center>
<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>