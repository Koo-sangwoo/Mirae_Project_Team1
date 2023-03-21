package com.music.pro.model.music;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.music.pro.vo.music.MusicDAO;
import com.music.pro.vo.music.MusicVO;

@Service
public class MusicServiceImpl implements MusicService {
	
	@Autowired
	private MusicDAO dao;
	
	
	@Override
	public List<MusicVO> getMusicList(String genre) {
		return dao.getMusicAll(genre);
	}


	@Override
	public MusicVO getMusicDetail(MusicVO vo) {
		return dao.getMusicDetail(vo);
	}


	@Override
	public List<MusicVO> musicSearch(String keyword) {
		return dao.musicSearch(keyword);
	}

}
