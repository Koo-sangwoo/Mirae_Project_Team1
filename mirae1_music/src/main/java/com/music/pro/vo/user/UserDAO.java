package com.music.pro.vo.user;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAO {
	
//	@Autowired
//	private SqlSessionTemplate sqltemplate;
	@Autowired
	SqlSession sqlSession;
	
	public int checkId(UserVO vo) throws Exception{
		int result = sqlSession.selectOne("User.checkId", vo.getM_id());
		return result;
	}
	
	public int insertUser(UserVO vo) {
		System.out.println("UserDAO의 insertUser 실행시 출력");
		int result = sqlSession.insert("User.insertUser", vo);
		return result;
	}
}
