function inputCheck(){
	if(document.regist.m_id.value == ""){
		alert("아이디를 입력해주세요.");
		document.regist.m_id.focus();
		return;
	}
	if(document.regist.m_password.value == ""){
		alert("비밀번호를 입력해주세요.");
		document.regist.m_password.focus();
		return;
	}
	if(document.regist.m_name.value == ""){
		alert("이름을 입력해주세요.");
		document.regist.m_name.focus();
		return;
	}
	if(document.regist.m_address.value == ""){
		alert("주소를 입력해주세요.");
		document.regist.m_address.focus();
		return;
	}
	if(document.regist.m_phonenum.value == ""){
		alert("전화번호를 입력해주세요.");
		document.regist.m_phonenum.focus();
		return;
	}
	if(document.regist.m_gender.value == ""){
		alert("성별을 확인해주세요.");
		return;
	}
	if(document.regist.m_nickname.value == ""){
		alert("닉네임을 입력해주세요.");
		document.regist.m_nickname.focus();
		return;
	}
	if(document.regist.m_hobby.value == ""){
		alert("취미를 선택해주세요.");
		return;
	}
	document.regist.submit();
}