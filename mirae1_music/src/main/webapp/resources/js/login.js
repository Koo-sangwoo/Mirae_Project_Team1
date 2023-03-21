// 플레인 프로젝트 로그인 js
function memberCheck(){
	var m_id = $("#m_id").val();
	var m_password = $("#m_password").val();
	if(!m_id || !m_password){
		alert("아이디 혹은 패스워드를 입력해주세요.");
		$("#m_id").focus();
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
							alert("환영합니다!");
							window.location.href="home";
						}
					});
				} else {
					alert("아이디 혹은 패스워드가 잘못되었습니다.");
					return false;
				}
			}
		});
	}
}