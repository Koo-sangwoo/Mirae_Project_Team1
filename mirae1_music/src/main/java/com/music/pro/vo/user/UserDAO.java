package com.music.pro.vo.user;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAO {
	
	@Autowired
	private SqlSessionTemplate sqltemplate;
	/*@Autowired
	private SqlSession sqlSession;*/
	
	
	public int insertUser(UserVO vo) { // 회원가입
		System.out.println("UserDAO의 insertUser 실행시 출력");
		int result = sqltemplate.insert("User.insertUser", vo); 
		return result;
	}
	
	public void updateUser(UserVO vo) { // 정보 수정
		System.out.println("UserDAO의 updateUser 실행시 출력");
		sqltemplate.update("User.updateUser", vo);
	}
	
	public int deleteUser(String m_id) { // 회원 탈퇴
		System.out.println("UserDAO의 deleteUser 실행시 출력");
		int result = sqltemplate.delete("User.deleteUser", m_id);
		return result;
	}
	
	public int checkUser(UserVO vo) { // 로그인시 멤버 체크
		System.out.println("UserDAO의 checkUser 실행시 출력");
		return sqltemplate.selectOne("User.checkUser", vo);
	}
	
	public UserVO loginUser(UserVO vo) { // 로그인
		System.out.println("UserDAO의 loginUser 실행시 출력");
		return (UserVO)sqltemplate.selectOne("User.loginUser", vo);
	}
	
	public int checkId(String m_id) { // 아이디 중복 검사
		System.out.println("UserDAO의 checkId 실행시 출력");
		int result = sqltemplate.selectOne("User.checkId", m_id);
		return result;
	}
	
	public int checkPw(UserVO vo) { // 비밀번호 검사
		System.out.println("비밀번호 체크~~");
		int result = sqltemplate.selectOne("User.checkPw", vo);
		return result;
	}
}
