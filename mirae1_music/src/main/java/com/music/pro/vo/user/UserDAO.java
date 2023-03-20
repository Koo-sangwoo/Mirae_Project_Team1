package com.music.pro.vo.user;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAO {
	
//	@Autowired
//	private SqlSessionTemplate sqltemplate;
	@Autowired
	private SqlSession sqlSession;
	
	
	public int insertUser(UserVO vo) {
		System.out.println("UserDAO의 insertUser 실행시 출력");
		int result = sqlSession.insert("User.insertUser", vo); 
		return result;
	}
	
	public int updateUser(UserVO vo) {
		System.out.println("UserDAO의 updateUser 실행시 출력");
		int result = sqlSession.update("User.updateUser", vo);
		return result;
	}
	
	public int deleteUser(UserVO vo) {
		System.out.println("UserDAO의 deleteUser 실행시 출력");
		int result = sqlSession.delete("User.deleteUser", vo);
		return result;
	}
	
	public int loginUser(UserVO vo) {
		System.out.println("UserDAO의 loginUser 실행시 출력");
		int result = sqlSession.selectOne("User.loginUser", vo);
		return result;
	}
	
	public int checkId(String m_id) {
		System.out.println("UserDAO의 checkId 실행시 출력");
		int result = sqlSession.selectOne("User.checkId", m_id);
		return result;
	}
}
