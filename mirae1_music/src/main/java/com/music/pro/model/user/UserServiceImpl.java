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
	public int checkId(UserVO vo) throws Exception {
		int result = userDAO.checkId(vo);
		return result;
	}
}
