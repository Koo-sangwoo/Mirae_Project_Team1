<<<<<<< HEAD
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
<script src='//unpkg.com/popper.js@1/dist/umd/popper.min.js'></script>
<script src='//unpkg.com/bootstrap@4/dist/js/bootstrap.min.js'></script>
<!-- <<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
 --> <title>Insert title here</title>
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
<c:forEach var="row" items="${map.list}">
			<tr>
				<td>${row.board_id}</td>
				<td>${row.category} 
				<td><a href="${row.board_id}" class="move">
			 	${row.board_title}</a><c:if test="${row.replycnt > 0}">[${row.replycnt}]</c:if>
				</td>
				<td>${row.board_writer}</td> 
		    	<td>
		 		 ${row.board_date}
				</td>
	   <%-- 	<td>${row.viewcnt}</td> --%>
			</tr>
	</c:forEach>
</thead>
<tbody>

<!-- list페이지에 출력될것 board_id , category , title , writer , date -->

</tbody>
</table>
</div>

<hr/>
 
<div class="search_wrap">
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
</style>


  
	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
=======
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
<script src='//unpkg.com/popper.js@1/dist/umd/popper.min.js'></script>
<script src='//unpkg.com/bootstrap@4/dist/js/bootstrap.min.js'></script>
<!-- <<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
 --> <title>Insert title here</title>
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
});
</script>

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
<c:forEach var="row" items="${map.list}">
			<tr>
				<td>${row.board_id}</td>
				<td>${row.category} 
				<td><a href="${row.board_id}" class="move">
			 	${row.board_title}</a><c:if test="${row.replycnt > 0}">[${row.replycnt}]</c:if>
				</td>
				<td>${row.board_writer}</td> 
		    	<td>
		 		 ${row.board_date}
				</td>
	   <%-- 	<td>${row.viewcnt}</td> --%>
			</tr>
	</c:forEach>
</thead>
<tbody>

<!-- list페이지에 출력될것 board_id , category , title , writer , date -->

</tbody>
</table>
</div>

<hr/>
 
<a id="searchbtn">검색</a>
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
				</form>
 
				</div>
<!-- <div class="d-flex flex-row justify-content-around">
<ul class="pagination">
<li><a href="#">1</a></li>
<li><a href="#">2</a></li>
</ul>
</div> -->

<style>
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
</style>


  
	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
>>>>>>> branch 'main' of https://github.com/Koo-sangwoo/Mirae_Project_Team1.git
</html>