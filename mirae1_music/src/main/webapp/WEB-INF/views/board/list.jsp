<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<jsp:include page="../include/header.jsp"></jsp:include>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="//unpkg.com/bootstrap@4/dist/css/bootstrap.min.css">
<!--  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
 --><link rel="stylesheet" href="./resources/css/custom.css">
<script src='//unpkg.com/jquery@3/dist/jquery.min.js'></script>
<!-- <script src='//unpkg.com/popper.js@1/dist/umd/popper.min.js'></script>
<script src='//unpkg.com/bootstrap@4/dist/js/bootstrap.min.js'></script> -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>
 <title>Insert title here</title>
</head>

<script>
$(document).ready(function(){
   let moveForm=$("#moveForm");
   
$(".move").on("click",function(e) {
   
   e.preventDefault();
   moveForm.append("<input type='hidden' name='board_id' value='"+$(this).attr("href")+ "'>");
   moveForm.attr("action" , "/view");
   moveForm.submit();
   console.log('성공성공성공성공성공성공성공')
});
   
   
$(".pageInfo a").on("click", function(e){
    e.preventDefault();
    console.log('성공1');
    moveForm.find("input[name='pageNum']").val($(this).attr("href"));
    console.log('성공2');
    moveForm.attr("action", "/board");
    console.log('성공3');
    moveForm.submit();
    console.log('성공4');
});   
    
   $("#button1").on("click", function(e){
        e.preventDefault();
        
        let type = $(".search_area select").val();
        let keyword = $(".search_area input[name='keyword']").val();
        
        if(!type){
            alert("검색 종류를 선택하세요.");
            return false;
        }
        
        if(!keyword){
            alert("키워드를 입력하세요.");
            return false;
        }        
        
        moveForm.find("input[name='type']").val(type);
        moveForm.find("input[name='keyword']").val(keyword);
        moveForm.find("input[name='pageNum']").val(1);
        moveForm.submit();
    });   
   
   const emailInputEl = document.querySelector("#exampleInputEmail1");
   const modelEl = document.querySelector("#exampleModal");

   modelEl.addEventListener("shown.bs.modal", function() {
     emailInputEl.focus();
   });
    
});
</script>

<body>

<div class="container" style="padding-top:50px;">
<div><b>자유게시판</b></div>
<div>
<button type="button"  id="category">
  검색
</button>
<button type="button"  id="category">
  검색
</button>
<button type="button"  id="category">
  검색
</button>
</div>

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
<c:forEach var="row" items="${map.list}">
         <tr>
            <td style="font-size: 13px;">${row.board_id}</td>
            <td style="font-size: 13px;">${row.category}</td>
            <td style="font-size: 13px;"><a href="${row.board_id}" class="move" style="font-size: 14px;">
             ${row.board_title}</a><c:if test="${row.replycnt > 0}">[${row.replycnt}]</c:if>
            </td>
            <td style="font-size: 13px;">${row.board_writer}</td> 
             <td style="font-size: 13px;">
              ${row.board_date}
            </td>
      <%--    <td>${row.viewcnt}</td> --%>
         </tr>
   </c:forEach>
</thead>
<tbody>

<!-- list페이지에 출력될것 board_id , category , title , writer , date -->

</tbody>
</table>
</div>

<hr/>
 
<%-- <div class="search_wrap2">
<div class="search_area2">
 <select name="type">
                <option value="" <c:out value="${pageMaker.cri.type == null?'selected':'' }"/>>--</option>
                <option value="T" <c:out value="${pageMaker.cri.type eq 'T'?'selected':'' }"/>>제목</option>
                <option value="C" <c:out value="${pageMaker.cri.type eq 'C'?'selected':'' }"/>>내용</option>
                <option value="W" <c:out value="${pageMaker.cri.type eq 'W'?'selected':'' }"/>>작성자</option>
                <option value="TC" <c:out value="${pageMaker.cri.type eq 'TC'?'selected':'' }"/>>제목 + 내용</option>
                <option value="TW" <c:out value="${pageMaker.cri.type eq 'TW'?'selected':'' }"/>>제목 + 작성자</option>
                <option value="TCW" <c:out value="${pageMaker.cri.type eq 'TCW'?'selected':'' }"/>>제목 + 내용 + 작성자</option>
            </select>    
<input type="text" name="keyword" value="${pageMaker.cri.keyword}">
<button id="searchbtn">검색</button>
</div>
</div> --%>

<!-- Button trigger modal -->
<button type="button"  data-bs-toggle="modal" data-bs-target="#exampleModal" id="searchbtn">
  검색
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">검색</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form>
          <div class="mb-3">
            <!-- <label for="exampleInputEmail1" class="form-label">Email address</label>
            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
            <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div> -->
<div class="search_wrap">
<div class="search_area">
 <select name="type" id="keywordtype">
                <%-- <option value="" <c:out value="${pageMaker.cri.type == null?'selected':'' }"/>>--</option> --%>
                <option value="T" <c:out value="${pageMaker.cri.type eq 'T'?'selected':'' }"/>>제목</option>
                <option value="C" <c:out value="${pageMaker.cri.type eq 'C'?'selected':'' }"/>>내용</option>
                <option value="W" <c:out value="${pageMaker.cri.type eq 'W'?'selected':'' }"/>>작성자</option>
                <option value="TC" <c:out value="${pageMaker.cri.type eq 'TC'?'selected':'' }"/>>제목 + 내용</option>
                <option value="TW" <c:out value="${pageMaker.cri.type eq 'TW'?'selected':'' }"/>>제목 + 작성자</option>
                <option value="TCW" <c:out value="${pageMaker.cri.type eq 'TCW'?'selected':'' }"/>>제목 + 내용 + 작성자</option>
            </select>
            <input type="text" name="keyword" value="${pageMaker.cri.keyword}" placeholder="검색어를 입력하세요" id="keyword">
            <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
        <button type="submit" class="btn btn-primary" id="button1">검색</button>
        </div>
          </div>
          </div>
         <%--  <div class="mb-3">
           <!--  <label for="exampleInputPassword1" class="form-label">Password</label>
            <input type="password" class="form-control" id="exampleInputPassword1"> -->
            <input type="text" name="keyword" value="${pageMaker.cri.keyword}" placeholder="검색어를 입력하세요">
            </div> --%>
          </div>
         <!--  <div class="mb-3 form-check">
            <input type="checkbox" class="form-check-input" id="exampleCheck1">
            <label class="form-check-label" for="exampleCheck1">Check me out</label>
          </div> -->
        </form>
      </div>
      <!-- <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
        <button type="submit" class="btn btn-primary">검색</button>
        </div> -->
        </div>
      </div>
    </div>
  </div>
</div>


<c:if test="${member.m_id != null}">   
<button type="버튼" onclick="location.href='/write';" id="writebtn" >글쓰기</button>
</c:if>



<!-- 페이지 네비게이션 출력 -->
         <div align="center">
      
    <div class="pageInfo_wrap" >
        <div class="pageInfo_area">
        <ul id="pageInfo" class="pageInfo">
        
        <!-- 이전페이지 버튼 -->
      <c:if test="${pageMaker.prev}">
  <li class="pageInfo_btn previous"><a href="${pageMaker.startPage-1}">Previous</a></li>
      </c:if>
        
        
  <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
 <li class="pageInfo_btn ${pageMaker.cri.pageNum == num ? "active":"" }"><a href="${num}">${num}</a></li>
</c:forEach>

                
     <!-- 다음페이지 버튼 -->
   <c:if test="${pageMaker.next}">
 <li class="pageInfo_btn next"><a href="${pageMaker.endPage + 1 }">Next</a></li>
    </c:if>    
                
                
                </ul>
        </div>
    </div>
          <form id="moveForm" method="get">
          
       <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
        <input type="hidden" name="amount" value="${pageMaker.cri.amount}"> 
         <input type="hidden" name="keyword" value="${pageMaker.cri.keyword}">
         <input type="hidden" name="type" value="${pageMaker.cri.type}">
            </form>
 
            </div>
<!-- <div class="d-flex flex-row justify-content-around">
<ul class="pagination">
<li><a href="#">1</a></li>
<li><a href="#">2</a></li>
</ul>
</div> -->

<style>

.search_area select{
height: 35px;
}
#searchbtn{
 position: absolute;
 left:215px;
 background-color:crimson;
 color:white;
 border-radius:50px;
 border:none;
 height:30px;
 width:55px;
    }


.pageInfo{
      list-style : none;
      display: inline-block;
    margin: 50px 0 0 100px; 
    position:relative;
    right:75px;     
  }
  .pageInfo li{
      float: left;
    font-size: 20px;
    margin-left: 18px;
    padding: 7px;
    font-weight: 500;
  }
 a:link {color:black; text-decoration: none;}
 a:visited {color:black; text-decoration: none;}
 a:hover {color:black; text-decoration: underline;}
 
  .active{
      background-color: #cdd5ec;
  }
  #writebtn {
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
 
  #keyword {
 border-width:0;
 border:1px solid transparent;
 border-bottom: 1px solid #ccc;
 border-radius: 3px;
 background-color:#fff;
 padding:0.375rem 0.75rem;
 line-height:1.5;
 height: 2.75em;
 width:268px;
  }
  
  #keywordtype {
  border-width:0;
  border:1px solid transparent;
  border-bottom:1px solid #ccc;
  border-radius:3px;
  background-color:#fff;
  padding:0.375rem 0.75rem;
  line-height:1.5;
  height:2.75em;
  width:268px;
  }
 
  #category{
  background-color:crimson;
 color:white;
 border-radius:2em;
 border:none;
 height:30px;
 width:70px;
  }
 #sdf{
 }
</style>


  
   <jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>