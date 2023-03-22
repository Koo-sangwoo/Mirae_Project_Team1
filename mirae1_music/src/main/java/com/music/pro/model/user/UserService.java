package com.music.pro.model.user;

import com.music.pro.vo.user.UserVO;

public interface UserService {
	void insertUser(UserVO vo); // 회원가입
	void updateUser(UserVO vo);
	int deleteUser(UserVO vo);
	UserVO loginUser(UserVO vo); // 로그인
	int checkUser(UserVO vo); // 로그인 시 멤버 체크
	int checkId(String m_id); // 중복확인 시 아이디 체크
	int checkPw(String m_password); // 마이페이지 이동을 위한 비밀번호 체크
}
