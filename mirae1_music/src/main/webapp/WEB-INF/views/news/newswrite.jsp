<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
   <link rel="stylesheet" href="./resources/css/board.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<!-- <script src="./resources/ckeditor/ckeditor.js"></script> -->
<!-- <script src="https://cdn.ckeditor.com/ckeditor5/36.0.1/classic/ckeditor.js"></script> -->
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
<script>
function createB() {
   var writer=$("#writer").val();
   var title=$("#title").val();
   var content=CKEDITOR.instances.content.getData();
   var titleLength=title.length;
   
   if(!title) {
      swal("", "제목을 입력하세요.", "error");
   } else if(titleLength>50) {
      swal("", "제목이 너무 깁니다.", "error");
   } else if(content==""){ 
       swal("", "글내용을 입력해 주세요!!.", "error");
       return false; 
   } else {
      swal({
          icon: "warning",
          text: "지금 게시글 등록을 하시겠습니까?",
          closeOnClickOutside : false,
          closeOnEsc : false, 
          buttons: ["돌아가기", "작성 완료!"],
         }).then(function(isConfirm) {
           if (isConfirm) {
             swal('등록 완료!','게시글 등록을 완료했습니다.^^','success').then(function(isConfirm)
                {
                   $.ajax({
                     type : "POST",
                     url : "createBoard",
                     data : {
                        "writer" : writer,
                        "title" : title,
                        "content" : content
                  }, success : function(data) {
                     location.href='news';
                  }
                  });
                });
           }
         })
   }
}

// 키보드로 글자수 입력 받았을 때 글자카운트 스크립트
$(document).ready(function(){

   $('#title').keyup(function(){
      // 남은 글자수를 구한다.
      var titleLength = $(this).val().length; //현재 글자수
      var remain = 50 - titleLength;
      
      // 문서 객체에 남은 글자수 표시
      $('#titleCount').html(remain);
      
      if(remain>=0){
            $('#titleCount').css('color', 'green');
      }else{
            $('#titleCount').css('color', 'red');
      }
      
      if(remain<0) {
         swal("", "제목은 한글기준 50자 까지만 쓸 수 있습니다.", "warning");
      }
   })
})
</script>
<style>
.ck.ck-editor {
max-width:700px;
}
.ck-editor__editable {
min-height:450px;
}
</style>
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<title>${news.title}</title>
</head>
<body>
<center>
   <div style="width:800px;">

      <br/><br/>
   <form action="createnews" method="post" enctype="multipart/form-data" >
      <input type="hidden" name="news_writer" id="writer" value="${member.m_nickname}"/>
      <table class="textb" width="100%">
      <tr><td>썸네일사진</td><td><input type="text" name="thumnail"></td></tr>
      
         <tr>
         <td class="asd" width="60">카테고리</td>
         <td class="asd" width="60">제목</td>
         </tr>
         <tr>
         <td  class="asd" align="left">
      
      
           <select name="category">
           <option value="k-pop">k-pop</option>
           <option value="Hiphop">힙합</option>
           <option value="발라드">발라드</option>
           <option value="음악">음악</option>
           <option value="리뷰">리뷰</option>
           <option value="가사 해석">가사 해석</option>
           <option value="인증/후기">인증/후기</option>
           <option value="일반">일반</option>
           </select>
      
      
         
         <td  class="asd" align="left">
         <input type="text" name="news_title" id="titlebox" maxlength="70" size="70%" placeholder="제목을 입력해주세요"/>
         <!-- <span id="titleCount" style="color:green;">50</span><span>/50</span> -->
         </td>
         </tr>
            
         <tr>
         <td colspan="2" align="left" height="500px">
         <textarea name="news_content" id="content" cols="88" rows="80"></textarea>
         <!-- CKEditor5 -->
   <!-- <script src="https://ckeditor.com/apps/ckfinder/3.5.0/ckfinder.js"></script>
   <script>      
   ClassicEditor
   .create(document.querySelector('#content'), {
      ckfinder: {
         uploadUrl : 'resources/images/'
      }
   })
   .then(editor => {
      console.log('Editor was initialized');
   })
   .catch(error => {
      console.error(error);
   }); 
   </script> -->
   <%--CKEDITOR4 --%>
       <script>
         CKEDITOR.replace( 'content', {width:'100%',
               height:'350px',filebrowserUploadUrl : "fileupload.do"} );
      </script> 
         </td>
         </tr>
      </table>
      <br/><br/>
      <input type="submit" class="write" value="작성하기">
      <!-- <input type="button" class="write" value="작성하기" onClick="createB()" /> -->
   </form>
   
      <button style="float:right;" class="listp"onClick="location.href='news'">목록</button>
   </div>
</center>
<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>