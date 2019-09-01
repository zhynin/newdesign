package com.action.bean;

import java.util.List;

import com.entity.Manager;
import com.entity.Music;
import com.entity.Speech;
import com.sql.dao.SqlHelper;

public class ActionBean {
	public String queryManagerALL() {
		SqlHelper sqlHepler  = new SqlHelper();
		List<Manager> list = sqlHepler.queryManagerALL();
		String tableHtml = "";
		int i = 1;
		for(Manager manager:list) {
			tableHtml += "<tr><td><input  type=\"radio\" name=\"rad\" autocomplete=\"off\" value=\""+manager.getManager_id()+"\"/></td><td class=\"text-center\">"+(i++)+"</td><td>"+manager.getManager_id()+"</td><td>"+manager.getManager_name()+"</td></tr>";
		}
		sqlHepler.destroy();
		return tableHtml;
	}
	public Manager queryManagerById(String manager_id) {
		SqlHelper sqlHelper = new SqlHelper();
		Manager manager=sqlHelper.queryManagerById(manager_id);
		sqlHelper.destroy();
		return manager;
	}
	
	/* 首页歌曲列表 */
	public String queryMusicsList() {
		SqlHelper sqlHelper = new SqlHelper();
		List<Music> list =  sqlHelper.queryMusicsList();
		String musicHtml = "";
		int i = 1;
		for (Music music:list) {
			musicHtml += "<tr><td class=\"text-center\">"+(i++)+"</td><td>"+music.getMusic_name()+"</td><td><audio class=\"btn-audio\" src=\""+ music.getPlay_url() + "\" controls  ></audio></td><td>"+music.getMusic_date()+"</td><td>"+music.getMusic_singer()+"</td></tr>";
		}
		sqlHelper.destroy();
		return musicHtml;
	}
	
	/**
	 * @return: 朋友圈分享的东西。
	 */
	public String querySpeechList() {
		SqlHelper sqlHelper = new SqlHelper();
		List<Speech> list = sqlHelper.querySpeechList();
		String speechHtml = "";
		
		for (Speech speech : list) {
			speechHtml += " <div class=\"media\"><div class=\"media-left media-top\"><img src=\"http://static.runoob.com/images/mix/img_avatar.png\" class=\"media-object\" style=\"width:80px\"></div><div class=\"media-body\"><h4 class=\"media-heading\">" + speech.getSpeech_user() + " </h4><p>" + speech.getSpeech_content() + "</p><p> " + speech.getSpeech_date() + "</p></div></div><hr>";
		}
		sqlHelper.destroy();
		return speechHtml;
	}
	
	/* 热门推荐歌曲列表 */
	public String hotMusicsList() {
		SqlHelper sqlHelper = new SqlHelper();
		List<Music> list =  sqlHelper.queryMusicsList();
		String musicHtml = "";
		int i = 1;
		for (Music music:list) {
			musicHtml += "<tr><td class=\"text-center\">"+(i++)+"</td><td><a href=\""+ music.getMusic_url() +"\">"+music.getMusic_name()+"</a></td><<td>"+music.getMusic_date()+"</td><td>"+music.getMusic_singer()+"</td></tr>";
		}
		sqlHelper.destroy();
		return musicHtml;
	}
	
	

}
