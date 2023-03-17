<head>
<!-- <link rel="stylesheet" href="../resources/css/bootstrap.min.css"> -->
<link rel="stylesheet" href="//unpkg.com/bootstrap@4/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/custom.css">
<script src='//unpkg.com/jquery@3/dist/jquery.min.js'></script>
<script src='//unpkg.com/popper.js@1/dist/umd/popper.min.js'></script>
<script src='//unpkg.com/bootstrap@4/dist/js/bootstrap.min.js'></script>
    <title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-expand-sm navbar-dark bg-custom">
  <a class="navbar-brand" href="#">
  <img src="./resources/images/logo_dark.png" width="150px">
</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample03" aria-controls="navbarsExample03" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarsExample03">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">뉴스 <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">뮤비</a>
      </li>
      <li class="nav-item dropdown show">
        <a class="nav-link dropdown-toggle" href="#" id="dropdown03" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">커뮤니티</a>
        <div class="dropdown-menu show" aria-labelledby="dropdown03">
          <a class="dropdown-item" href="#">pop게시판</a>
          <a class="dropdown-item" href="#">k-pop게시판</a>
          <a class="dropdown-item" href="#">j-pop게시판</a>
      </li>
      <li class="nav-item dropdown show">
        <a class="nav-link dropdown-toggle" href="#" id="dropdown03" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">Top100</a>
        <div class="dropdown-menu show" aria-labelledby="dropdown03">
          <a class="dropdown-item" href="#">pop송 Top100</a>
          <a class="dropdown-item" href="#">k-pop Top100</a>
          <a class="dropdown-item" href="#">j-pop Top100</a>
        </div>
      </li>
       <li class="nav-item dropdown show">
        <a class="nav-link dropdown-toggle" href="#" id="dropdown03" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">Top100</a>
        <div class="dropdown-menu show" aria-labelledby="dropdown03">
          <a class="dropdown-item" href="/product_k-pop">k-pop</a>
          <a class="dropdown-item" href="#">HIPHOP</a>
          <a class="dropdown-item" href="#">j-pop Top100</a>
        </div>
      </li>
    </ul>  <a class=header_search onclick="누르면검색팝업뜨는메소드" href="#">
    <img src="./resources/images/search-outline.png">
    </a>
    <a class=header_login onclick="로그인하면팝업뜨는메소드" href="login_form">
    <img src="./resources/images/person-outline.png">	
    </a>
   <!--  <form class="form-inline my-2 my-md-0">
      <input class="form-control" type="text" placeholder="Search"> -->
    </form>
  </div>
</nav>
</body>
</html>