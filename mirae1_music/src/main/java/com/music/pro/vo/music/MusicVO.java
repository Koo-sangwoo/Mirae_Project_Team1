package com.music.pro.vo.music;

import java.util.Date;

public class MusicVO {
 private int music_id;
 private String music_title;
 private String music_genre;
 private Date music_releasedate;
 private String music_exp;
 private String music_picture;
 private String music_artname;
 private String music_link;
 private String keyword;


 


public Date getMusic_releasedate() {
	return music_releasedate;
}
public void setMusic_releasedate(Date music_releasedate) {
	this.music_releasedate = music_releasedate;
}
public String getMusic_link() {
	return music_link;
}
public void setMusic_link(String music_link) {
	this.music_link = music_link;
}
public String getMusic_artname() {
	return music_artname;
}
public void setMusic_artname(String music_artname) {
	this.music_artname = music_artname;
}
public String getMusic_picture() {
	return music_picture;
}
public void setMusic_picture(String music_picture) {
	this.music_picture = music_picture;
}
public int getMusic_id() {
	return music_id;
}
public void setMusic_id(int music_id) {
	this.music_id = music_id;
}

public String getMusic_title() {
	return music_title;
}
public void setMusic_title(String music_title) {
	this.music_title = music_title;
}
public String getMusic_genre() {
	return music_genre;
}
public void setMusic_genre(String music_ganre) {
	this.music_genre = music_ganre;
}

public String getMusic_exp() {
	return music_exp;
}
public void setMusic_exp(String music_exp) {
	this.music_exp = music_exp;
}

public String getKeyword() {
	return keyword;
}
public void setKeyword(String keyword) {
	this.keyword = keyword;
}
@Override
public String toString() {
	return "MusicVO [music_id=" + music_id + ", music_title=" + music_title + ", music_genre=" + music_genre
			+ ", music_releasedate=" + music_releasedate + ", music_exp=" + music_exp + ", music_picture="
			+ music_picture + ", music_artname=" + music_artname + ", music_link=" + music_link + ", keyword=" + keyword
			+ "]";
}












 
 
 
}
