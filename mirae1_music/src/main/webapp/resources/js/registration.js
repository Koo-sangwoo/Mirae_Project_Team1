var checkId = false;
var checkCode = false;
var status = false;
function idCheck() {
	if ($("#m_id").val()) {
		$.ajax({
			type : "post",
			url : "checkId",
			data : {
				m_id : $("#m_id").val()
			},
			dataType : "json",
			success : function(data) {
				if (data == 1) {
					swal("", "사용 불가한 아이디입니다.", "error");
					$("#m_id").val("");
					document.regist.m_id.focus();
					checkId = false;
				} else if (data == 0) {
					swal("", "사용 가능한 아이디입니다.", "success");
					document.regist.m_id.focus();
					checkId = true;
				}
			}
		});
	} else {
		swal("", "아이디를 입력해주세요", "warning");
		$("#m_id").focus();
		return false;
	}
}

function codeChk() {
	checkCode = true;
	if ($("#m_code").val() == 123) {
		$("#m_id").val("admin");
	} else if ($("#m_code").val() != 123) {
		$("#m_code").val(0);
	}
}

function insertDo() {

	codeChk();
	var m_code = $("#m_code").val();
	var m_id = $("#m_id").val();
	var m_password = $("#m_password").val();
	var m_name = $("#m_name").val();
	var m_address = $("#m_address").val();
	var m_phonenum = $("#m_phonenum").val();
	var m_gender = $("#m_gender").val();
	var m_nickname = $("#m_nickname").val();
	var m_hobby = $("#m_hobby").val();
	if (checkId == false) {
		swal("","아이디 중복체크를 먼저 진행해주세요.", "warning");
		return false;
	} else {
		if (!$("#m_id").val()) {
			swal("","아이디를 입력해주세요.","error");
			$("#m_id").focus();
			return false;
		} else if (!$("#m_password").val()) {
			swal("","비밀번호를 입력해주세요.","error");
			$("#m_password").focus();
			return false;
		} else if (!$("#m_name").val()) {
			swal("","이름을 입력해주세요.","error");
			$("#m_name").focus();
			return false;
		} else if (!$("#m_address").val()) {
			swal("","주소를 입력해주세요.","error");
			$("#m_address").focus();
			return false;
		} else if (!$("#m_phonenum").val()) {
			swal("","전화번호를 입력해주세요.","error");
			$("#m_phonenum").focus();
			return false;
		} else if (!$("#m_gender").val()) {
			swal("","성별을 확인해주세요.","error");
			return false;
		} else if (!$("#m_nickname").val()) {
			swal("","닉네임을 입력해주세요.","error");
			$("#m_nickname").focus();
			return false;
		} else if (!$("#m_hobby").val()) {
			swal("","취미를 선택해주세요.","error");
			return false;
		} else {
			$.ajax({
				type : "post",
				url : "registration.do",
				data : {
					"m_code" : m_code,
					"m_id" : m_id,
					"m_password" : m_password,
					"m_name" : m_name,
					"m_address" : m_address,
					"m_phonenum" : m_phonenum,
					"m_gender" : m_gender,
					"m_nickname" : m_nickname,
					"m_hobby" : m_hobby
				},
				success : function(data) {
					swal({
						title : "가입 성공!",
						text : "회원 가입을 축하합니다!",
						type : "success"
					},
					function(){
						window.location.href="home";
					});
				}
			});
		}
	}
}