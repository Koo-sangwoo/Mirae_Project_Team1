<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<jsp:include page="../include/header.jsp"></jsp:include>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
 <title>News</title>
</head>

<script>
$(document).ready(function(){
   let moveForm=$("#moveForm");
   
$(".move").on("click",function(e) {
   
   e.preventDefault();
   moveForm.append("<input type='hidden' name='news_id' value='"+$(this).attr("href")+ "'>");
   moveForm.attr("action" , "/newsview");
   moveForm.submit();
   console.log('성공성공성공성공성공성공성공')
});
   
   
$(".pageInfo a").on("click", function(e){
    e.preventDefault();
    console.log('성공1');
    moveForm.find("input[name='pageNum']").val($(this).attr("href"));
    console.log('성공2');
    moveForm.attr("action", "/news");
    console.log('성공3');
    moveForm.submit();
    console.log('성공4');
});   
    
   $(".search_area button").on("click", function(e){
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
    
});
</script>

<body>


<div class="container" style="padding-top:15px;">
  <c:forEach var="row" items="${map.list}">
    <a href="${row.news_id}" class="move" style="text-decoration-line:none;">
      <div class="NewsWrapper" style="display: flex; align-items: center; padding-top: 35px; padding-bottom: 35px;">
        <img src="./resources/images/${row.thumnail}" width="500px" height="260px" style="margin-right: 20px;">
        <div>
          <h2>${row.news_title}<c:if test="${row.replycnt > 0}"><span style="color:crimson;font-size:20px;">&nbsp${row.replycnt}</span></c:if></h2>
          <p>${row.news_date}</p>
        </div>
      </div>
    </a>
  </c:forEach>
</div>

<!--  <div class="container" style="padding-top:15px;">
<c:forEach var="row" items="${map.list}">
<a href="${row.news_id}" class="move"><div class="NewsWrapper" style="padding-top:35px;padding-bottom:35px;">
         <img src="./resources/images/${row.thumnail}" width="500px" height="260px">
           ${row.news_title}<c:if test="${row.replycnt > 0}">[${row.replycnt}]</c:if>
              ${row.news_date}
         </div></a>
         
   </c:forEach>

</div> -->
<hr/>
 
 
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
 
 
<%-- <div class="search_wrap">
<div class="search_area">
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
<button>검색</button>
</div>
</div> --%>


<c:if test="${member.m_code == 123}">   
<button type="버튼" onclick="location.href='/newswrite';" id="writebtn" >글쓰기</button>
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
  left:215px
    }
#writebtn {
 float:right;
 right: 100px;
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
 
  .active1{
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
    .NewsWrapper:hover{
    background-color:#f1f3f5;
    }
</style>


  
   <jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>