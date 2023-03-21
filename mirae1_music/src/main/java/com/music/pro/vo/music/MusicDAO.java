package com.music.pro.vo.music;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.music.pro.vo.product.ProductVO;

@Repository
public class MusicDAO {
	
	@Inject
	private SqlSessionTemplate sqltemplate;
	
	public List<MusicVO> getMusicAll(String genre) { //모든 상품 정보를 가져오는 메서드
		System.out.println("음악 출력");
		return sqltemplate.selectList("Music.musicAll",genre);
	}
	
	public MusicVO getMusicDetail(MusicVO vo) {
		System.out.println("음악 상세페이지 출력");
		return sqltemplate.selectOne("Music.musicDetail", vo);
	}
	
	public List<MusicVO> musicSearch(String keyword) {
		System.out.println("검색 음악 DB 연동");
		return sqltemplate.selectList("Music.musicSearch",keyword);
	}
}
