package com.music.pro.model.user;

import com.music.pro.vo.user.UserVO;

public interface UserService {
	void insertUser(UserVO vo);
	int updateUser(UserVO vo);
	int deleteUser(UserVO vo);
	int loginUser(UserVO vo);
	int checkId(String m_id);
}
