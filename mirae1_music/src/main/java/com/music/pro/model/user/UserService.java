package com.music.pro.model.user;

import com.music.pro.vo.user.UserVO;

public interface UserService {
	public int insertUser(UserVO vo);
	public int updateUser(UserVO vo);
	public int deleteUser(UserVO vo);
	public int loginUser(UserVO vo);
}
