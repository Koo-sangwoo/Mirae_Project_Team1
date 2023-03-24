function checkPw() { // 마이페이지 1에서 2로 가기 위해 비밀번호 인증
	var m_id = $("#m_id").val();
	var m_password = $("#m_password").val();
	$.ajax({
		type : "post",
		url : "myPage",
		data : {
			"m_id" : m_id,
			"m_password" : m_password
		},
		dataType : "json",
		success : function(data) {
			if (data == 1) {
				swal({
					title : "",
					text : "비밀번호 인증 성공!",
					type : "success"
				}, function() {
					window.location.href = "myPage2";
				});
			} else {
				swal("", "비밀번호를 확인해주세요", "error");
				return false;
			}
		}
	})
}

function updateMember() { // 회원 정보 수정
	var m_id = $("#m_id").val();
	var m_nickname = $("#m_nickname").val();
	var m_address = $("#m_address").val();
	var m_hobby = $("#m_hobby").val();
	var m_phonenum = $("#m_phonenum").val();

	$.ajax({
		type : "post",
		url : "myPage2",
		data : {
			"m_id" : m_id,
			"m_nickname" : m_nickname,
			"m_address" : m_address,
			"m_hobby" : m_hobby,
			"m_phonenum" : m_phonenum
		},
		success : function(data) {
			swal({
				title : "수정 완료!",
				text : "정보 수정이 완료되었습니다!",
				type : "success"
			}, function() {
				window.location.href = "myPage2";
			});
		}
	})
}
function deleteMember() { // 회원 탈퇴
	var m_id = $("#m_id").val();
	swal({
		title : "회원 탈퇴",
		text : "정말로 회원 탈퇴를 하시겠습니까?, 회원 탈퇴시 복구할 수 없습니다.",
		type : "warning",
		showCancelButton : true,
		confirmButtonText : "확인",
		cancelButtonText : "취소"
	}, function(data) {
		if (data) {

			$.ajax({
				type : "post",
				url : "delete",
				data : {
					"m_id" : m_id
				},
				success : function() {
					alert("그동안 이용해주셔서 감사합니다.");
					window.location.href="home";
				}
			});
		} else {
			return false;
		}
	});
}