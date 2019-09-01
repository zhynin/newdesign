package com.sql.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.db.DB;
import com.entity.Manager;
import com.entity.Music;
import com.entity.Speech;

public class SqlHelper {
	private Connection conn = null;
	
	/* 连接 */
	public SqlHelper() {
		conn = DB.getConnection();
	}
	
	/* 释放 */
	public void destroy() {
		if(conn!=null)
			try {
				conn.close();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
	}
	public Manager queryManagerById(String Manager_id) {
		String sql = "SELECT manager_id,manager_name,manager_pwd FROM manager WHERE manager_id=?";
		Manager manager = null; 
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, Manager_id);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				manager = new Manager();
				manager.setManager_id(rs.getString("manager_id"));
				manager.setManager_name(rs.getString("manager_name"));
				manager.setManager_pwd(rs.getString("manager_pwd"));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return manager;
	}
	
	
	/* 通过账号和密码查找，用于登录验证  */
	public Manager queryManagerByIdAndPwd(Manager m) {
		String sql = "SELECT manager_id,manager_name,manager_pwd FROM manager WHERE manager_id=? and manager_pwd=?";
		Manager manager = null; 
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, m.getManager_id());
			ps.setString(2, m.getManager_pwd());
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				manager = new Manager();
				manager.setManager_id(rs.getString("manager_id"));
				manager.setManager_name(rs.getString("manager_name"));
				manager.setManager_pwd(rs.getString("manager_pwd"));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return manager;
	}
	
	/* 插入一个用户 */
	public boolean insertManager(Manager manager) {
		String sql = "INSERT INTO manager(manager_id,manager_name,manager_pwd)VALUES(?,?,?)";
		Boolean b = false;
		try {
			 PreparedStatement ps = conn.prepareStatement(sql);
			 ps.setString(1, manager.getManager_id());
			 ps.setString(2, manager.getManager_name());
			 ps.setString(3, manager.getManager_pwd());
			 ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return b;
	}
	
	public boolean deleteManager(Manager manager) {
		String sql = "DELETE FROM manager WHERE manager_id=?";
		Boolean b = false;
		try {
			 PreparedStatement ps = conn.prepareStatement(sql);
			 ps.setString(1, manager.getManager_id());
			 ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return b;
	}
	
	public boolean updateManagerpwd(Manager manager) {
		String sql = "UPDATE manager SET manager_pwd=? WHERE manager_id=?";
		Boolean b = false;
		try {
			 PreparedStatement ps = conn.prepareStatement(sql);
			 ps.setString(1, manager.getManager_pwd());
			 ps.setString(2, manager.getManager_id());
			 ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return b;
	}
	public boolean updateManagername(Manager manager) {
		String sql = "UPDATE manager SET manager_name=? WHERE manager_id=?";
		Boolean b = false;
		try {
			 PreparedStatement ps = conn.prepareStatement(sql);
			 ps.setString(1, manager.getManager_name());
			 ps.setString(2, manager.getManager_id());
			 ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return b;
	}
	public boolean updateManagernameandpwd(Manager manager) {
		String sql = "UPDATE manager SET manager_name=?,manager_pwd=? WHERE manager_id=?";
		Boolean b = false;
		try {
			 PreparedStatement ps = conn.prepareStatement(sql);
			 ps.setString(1, manager.getManager_name());
			 ps.setString(2, manager.getManager_pwd());
			 ps.setString(3, manager.getManager_id());
			 ps.executeUpdate();
			 b = true;
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return b;
	}
	public List<Manager> queryManagerALL(){
		List <Manager>list = new ArrayList<Manager>();
		String sql = "SELECT manager_id,manager_name FROM manager";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Manager manager = new Manager();
				manager.setManager_id(rs.getString("manager_id"));
				manager.setManager_name(rs.getString("manager_name"));
				list.add(manager);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	public List<Music> queryMusicsList(){
		List<Music>list = new ArrayList<Music>();
		String sql = "SELECT music_name, music_url, music_date, music_singer,music_play_url FROM music where 1=1";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Music music = new Music();
				music.setMusic_name(rs.getString("music_name"));
				music.setMusic_url(rs.getString("music_url"));
				music.setMusic_date(rs.getString("music_date"));
				music.setMusic_singer(rs.getString("music_singer"));
				music.setPlay_url(rs.getString("music_play_url"));
				list.add(music);
			}
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return list;
	}

	public boolean sendSpeech(Speech speech) {
		// TODO Auto-generated method stub
		String  sql = "INSERT INTO `speech` (`speech_id`, `speech_user`, `speech_content`, `speech_date`) VALUES (?, ?, ?, ?)";
		boolean b = false;
		try {
			PreparedStatement ps  =  conn.prepareStatement(sql);
			ps.setString(1, speech.getSpeech_id());
			ps.setString(2, speech.getSpeech_user());
			ps.setString(3, speech.getSpeech_content());
			ps.setString(4, speech.getSpeech_date());
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		
		return b;
	}

	
	/**
	 * @return 分享数据 
	 */
	public List<Speech> querySpeechList() {
		// TODO Auto-generated method stub
		List<Speech>list = new ArrayList<Speech>();
		String sql = "SELECT speech_user, speech_content,speech_date FROM speech where 1=1";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Speech speech = new Speech();
				speech.setSpeech_user(rs.getString("speech_user"));
				speech.setSpeech_content(rs.getString("speech_content"));
				speech.setSpeech_date(rs.getString("speech_date"));
				list.add(speech);
			}
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return list;
	}
	
	
}
