package com.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DB {
	/* 驱动 */
	private static String driver = "com.mysql.jdbc.Driver";
	/* 连接地址 */
	private static String url = "jdbc:mysql://localhost:3306/design?useUnicode=true&characterEncoding=utf-8";
	/* 用户名 */
	private static String user = "remtor";
	/* 密码 */
	private static String pwd = "654321";
	/**
	 * @author mshing
	 * @desc:创建一个mysql连接
	 * @return:Connection
	 */
	public static Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, pwd);
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return conn;
	}
}

