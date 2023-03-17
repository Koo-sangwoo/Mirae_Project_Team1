package com.music.pro.model.user;

import com.music.pro.vo.user.UserVO;

public interface UserService {
	public int insertUser(UserVO vo);
	public int checkId(UserVO vo) throws Exception;
}
