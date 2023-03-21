package com.music.pro.model.music;

import java.util.List;

import com.music.pro.vo.music.MusicVO;


public interface MusicService {
	
	public List<MusicVO> getMusicList(String genre);
	
	public MusicVO getMusicDetail(MusicVO vo);
	
	public List<MusicVO> musicSearch(String keyword);
}
