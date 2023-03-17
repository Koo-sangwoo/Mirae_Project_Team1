package com.music.pro.model.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.music.pro.vo.user.*;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	UserDAO userDAO;

	@Override
	public int insertUser(UserVO vo) {
		System.out.println("UserServiceImpl에서 insertUser 실행시 출력");
		return userDAO.insertUser(vo);
	}

	@Override
	public int updateUser(UserVO vo) {
		System.out.println("UserServiceImpl에서 updateUser 실행시 출력");
		return userDAO.updateUser(vo);
	}

	@Override
	public int deleteUser(UserVO vo) {
		System.out.println("UserServiceImpl에서 deleteUser 실행시 출력");
		return ((UserService) userDAO).deleteUser(vo);
	}

	@Override
	public int loginUser(UserVO vo) {
		System.out.println("UserServiceImpl에서 loginUser 실행시 출력");
		return userDAO.loginUser(vo);
	}
}
