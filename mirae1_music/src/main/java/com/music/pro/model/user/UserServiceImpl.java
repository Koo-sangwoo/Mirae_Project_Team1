package com.music.pro.model.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.music.pro.vo.user.*;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	UserDAO userDAO;

	@Override
	public void insertUser(UserVO vo) { // 회원가입
		System.out.println("UserServiceImpl에서 insertUser 실행시 출력");
		userDAO.insertUser(vo);
	}

	@Override
	public void updateUser(UserVO vo) {
		System.out.println("UserServiceImpl에서 updateUser 실행시 출력");
		userDAO.updateUser(vo);
	}

	@Override
	public int deleteUser(UserVO vo) {
		System.out.println("UserServiceImpl에서 deleteUser 실행시 출력");
		return userDAO.deleteUser(vo);
	}

	@Override
	public UserVO loginUser(UserVO vo) { // 로그인
		System.out.println("UserServiceImpl에서 loginUser 실행시 출력");
		return userDAO.loginUser(vo);
	}

	@Override
	public int checkUser(UserVO vo) { // 로그인 시 멤버 체크
		System.out.println("UserServiceImpl에서 checkUser 실행시 출력");
		return userDAO.checkUser(vo);
	}
	
	@Override
	public int checkId(String m_id) { // 아이디 중복 검사
		System.out.println("UserServiceImpl에서 checkId 실행시 출력");
		return userDAO.checkId(m_id);
	}

	@Override
	public int checkPw(UserVO vo) {
		System.out.println("비번 확인요");
		return userDAO.checkPw(vo);
	}
}
