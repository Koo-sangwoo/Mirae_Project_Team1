<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <link rel="stylesheet" href="../resources/css/bootstrap.min.css"> -->
<link rel="stylesheet"
	href="//unpkg.com/bootstrap@4/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/custom.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
<script src='//unpkg.com/jquery@3/dist/jquery.min.js'></script>
<script src='//unpkg.com/popper.js@1/dist/umd/popper.min.js'></script>
<script src='//unpkg.com/bootstrap@4/dist/js/bootstrap.min.js'></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<script src="./resources/js/login.js"></script>
<script type="text/javascript">
function goCart(){
	var m_id = $("#m_id").val();
	console.log(m_id);
	document.frm.method = "GET";
	document.frm.action="cart";
	document.frm.submit();
}
function myPage(){
	document.frm.method = "POST";
	document.frm.action="myPage";
	document.frm.submit();
}
</script>
<style>
.navbar {
  height: 140px;
}

.bg-custom {
	background:black;
}


</style>
<title>Insert title here</title>
</head>
<body>
	<form name="frm" id="frm" style="width: 100%;margin-bottom:0px;">
	<nav class="navbar navbar-expand-lg bg-custom">
  <div class="container-fluid">
    <a class="navbar-brand" href="/"><img src="./resources/images/logo_dark.png"  width="150px"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarScroll">
      <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page"  href="/news" style="color: white">뉴스</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link" href="/board" style="color: white">커뮤니티</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="color: white">
            Music
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="/music?music_genre=k-pop">k-pop</a></li>
            <li><a class="dropdown-item" href="/music?music_genre=hiphop">HIPHOP</a></li>
            <li><a class="dropdown-item"href="/music?music_genre=ballard">발라드</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="color: white">
            굿즈
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="/product?p_category=k-pop">k-pop</a></li>
            <li><a class="dropdown-item" href="/product?p_category=hiphop">HIPHOP</a></li>
            <li><a class="dropdown-item" href="/product?p_category=ballard">발라드</a></li>
          </ul>
        </li>
        </ul>
       

<<<<<<< HEAD
	<div class="collapse navbar-collapse" id="navbarsExample03">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="news">뉴스
					<span class="sr-only">(current)</span>
			</a></li>
		
			<li class="nav-item dropdown show"><a
				class="nav-link dropdown-toggle" href="#" id="dropdown03"
				data-toggle="dropdown" aria-haspopup="false" aria-expanded="false">커뮤니티</a>
				<div class="dropdown-menu show" aria-labelledby="dropdown03">
					<a class="dropdown-item" href="/board">pop게시판</a> <a
						class="dropdown-item" href="#">k-pop게시판</a> <a
						class="dropdown-item" href="#">j-pop게시판</a>
				</div></li>
			<li class="nav-item dropdown show"><a
				class="nav-link dropdown-toggle" href="#" id="dropdown03"
				data-toggle="dropdown" aria-haspopup="false" aria-expanded="false">Music</a>
				<div class="dropdown-menu show" aria-labelledby="dropdown03">
					<a class="dropdown-item" href="/music?music_genre=hiphop">HIPHOP</a>
					<a class="dropdown-item" href="/music?music_genre=k-pop">k-pop</a>
					<a class="dropdown-item" href="/music?music_genre=ballard">발라드</a>
				</div></li>
			<li class="nav-item dropdown show"><a
				class="nav-link dropdown-toggle" href="#" id="dropdown03"
				data-toggle="dropdown" aria-haspopup="false" aria-expanded="false">굿즈</a>
				<div class="dropdown-menu show" aria-labelledby="dropdown03">
					<a class="dropdown-item" href="/product?p_category=k-pop">k-pop</a>
					<a class="dropdown-item" href="/product?p_category=hiphop">HIPHOP</a>
					<a class="dropdown-item" href="/product?p_category=ballard">발라드</a>
				</div></li>
		</ul>
		<c:if test="${ member.m_id == null }">
=======
          
         <div class="collapse navbar-collapse justify-content-end" id="collapsibleNavbar">
       <c:if test="${ member.m_id == null }">
>>>>>>> branch 'main' of https://github.com/Koo-sangwoo/Mirae_Project_Team1.git
				<a class=header_login onclick="location.href='login_form'"> <img
					src="./resources/images/person-outline.png">
				</a>
			</c:if>

			<c:if test="${ member.m_code == 0 }">
				<a><input type="hidden" id="m_id" name="m_id" value="${member.m_id}" /></a>
				<a><p style="margin: 14px 20px; color: white">
						<span style="font-weight: bold;">[${ member.m_nickname }]님
							환영합니다. </span>
					</p></a>
				<a class="header-search" onclick="goCart()"><img
					src="./resources/images/User/cart.png"></a>
				<a class=header_login onclick="myPage()"> <img
					src="./resources/images/person-outline.png"></a>
				<a class="header-login" onclick="logout()"><img
					src="./resources/images/User/logout2.png"></a>
			</c:if>

			<c:if test="${ member.m_code == 123 }">
				<a><input type="hidden" id="m_id" name="m_id" value="${member.m_id}" /></a>
				<a><p style="margin: 14px 20px; color: white">
						<span style="font-weight: bold;">[관리자]님 환영합니다. </span>
					</p></a>
				<a class="header-search" onclick="goCart()"><img
					src="./resources/images/User/cart.png"></a>
				<a class=header_login onclick="myPage()"> <img
					src="./resources/images/person-outline.png"></a>
				<a class="header-login" onclick="logout()"><img
					src="./resources/images/User/logout2.png"></a>
			</c:if>
			</div>
			
    </div>
  </div>
</nav>
		
		<!--  <form class="form-inline my-2 my-md-0">
      <input class="form-control" type="text" placeholder="Search"> 
    </form>-->
	
	</form>
</body>
</html>