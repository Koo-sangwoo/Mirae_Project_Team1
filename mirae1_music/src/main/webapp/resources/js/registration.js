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
					alert("중복된 아이디입니다.");
					$("#m_id").val("");
					document.regist.m_id.focus();
					checkId = false;
				} else if (data == 0) {
					alert("사용 가능한 아이디입니다.");
					document.regist.m_id.focus();
					checkId = true;
				}
			}
		});
	} else {
		alert("아이디를 입력해주세요.");
		$("#m_id").focus();
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
		alert("아이디 중복체크를 먼저 진행해주세요.");
		return false;
	} else {
		if (!$("#m_id").val()) {
			alert("아이디를 입력해주세요.");
			$("#m_id").focus();
			return false;
		} else if (!$("#m_password").val()) {
			alert("비밀번호를 입력해주세요.");
			$("#m_password").focus();
			return false;
		} else if (!$("#m_name").val()) {
			alert("이름을 입력해주세요.");
			$("#m_name").focus();
			return false;
		} else if (!$("#m_address").val()) {
			alert("주소를 입력해주세요.");
			$("#m_address").focus();
			return false;
		} else if (!$("#m_phonenum").val()) {
			alert("전화번호를 입력해주세요.");
			$("#m_phonenum").focus();
			return false;
		} else if (!$("#m_gender").val()) {
			alert("성별을 확인해주세요.");
			return false;
		} else if (!$("#m_nickname").val()) {
			alert("닉네임을 입력해주세요.");
			$("#m_nickname").focus();
			return false;
		} else if (!$("#m_hobby").val()) {
			alert("취미를 선택해주세요.");
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
					alert("회원 가입을 축하합니다!");
					window.location.href = "home";
				}
			});
		}
	}
}