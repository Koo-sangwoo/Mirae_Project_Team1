// 플레인 프로젝트 로그인 js
function memberCheck(){
	var m_id = $("#m_id").val();
	var m_password = $("#m_password").val();
	if(!m_id || !m_password){
		swal("", "아이디와 비밀번호를 입력해주세요.", "warning");
		$("#m_id").focus();
		return false;
	} else{
		$.ajax({
			type : "post",
			url : "checkUser",
			data : {
				"m_id" : m_id,
				"m_password" : m_password
			}, success : function(data){
				if(data != 0){
					$.ajax({
						type : "post",
						url : "login_form",
						data : {
							"m_id" : m_id,
							"m_password" : m_password
						}, success : function(){
							swal({
								title : "",
								text : "반갑습니다!",
								type : "success"
							},
							function(){
								window.location.href="home";
							})
						}
					});
				} else {
					swal("","아이디 혹은 패스워드가 잘못되었습니다.","error");
					return false;
				}
			}
		});
	}
}

// 로그아웃
function logout(){
	swal({
		title : "로그아웃",
		text : "정말로 로그아웃 하시겠습니까?",
		type : "info",
		showCancelButton: true,
		confirmButtonText: "확인",
		cancelButtonText: "취소"
	},
	function(data){
		console.log(data);
		if(data){
			window.location.href="logout";
		} else {
			return false;
		}
	})
}
