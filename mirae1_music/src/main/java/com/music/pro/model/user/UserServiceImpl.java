package com.music.pro.model.user;

import java.util.List;

import org.bouncycastle.jcajce.provider.digest.SHA3;
import org.bouncycastle.util.encoders.Hex;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.music.pro.vo.user.*;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserDAO userDAO;

	// 패스워드 암호화
	public void securityPWD(UserVO vo) {
		SHA3.DigestSHA3 digestSHA3 = new SHA3.DigestSHA3(512);
		byte[] digest = digestSHA3.digest(vo.getM_password().getBytes());
		String securitypwd = Hex.toHexString(digest);
		vo.setM_password(securitypwd);
	}

	@Override
	public void insertUser(UserVO vo) { // 회원가입
		System.out.println("UserServiceImpl에서 insertUser 실행시 출력");
		securityPWD(vo);
		userDAO.insertUser(vo);
	}

	@Override
	public void updateUser(UserVO vo) { // 회원 정보 수정
		System.out.println("UserServiceImpl에서 updateUser 실행시 출력");
		userDAO.updateUser(vo);
	}

	@Override
	public int deleteUser(String m_id) { // 회원 탈퇴
		System.out.println("UserServiceImpl에서 deleteUser 실행시 출력");
		return userDAO.deleteUser(m_id);
	}

	@Override
	public UserVO loginUser(UserVO vo) { // 로그인
		System.out.println("UserServiceImpl에서 loginUser 실행시 출력");
		securityPWD(vo);
		return userDAO.loginUser(vo);
	}

	@Override
	public int checkUser(UserVO vo) { // 로그인 시 멤버 체크
		System.out.println("UserServiceImpl에서 checkUser 실행시 출력");
		securityPWD(vo);
		return userDAO.checkUser(vo);
	}

	@Override
	public int checkId(String m_id) { // 아이디 중복 검사
		System.out.println("UserServiceImpl에서 checkId 실행시 출력");
		return userDAO.checkId(m_id);
	}

	@Override
	public int checkPw(UserVO vo) { // 비밀번호 인증
		System.out.println("비번 확인요");
		securityPWD(vo);
		return userDAO.checkPw(vo);
	}
}
