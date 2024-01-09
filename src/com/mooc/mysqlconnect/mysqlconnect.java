package com.mooc.mysqlconnect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
/**
 *      資料庫連線類
 * 
 *
 */
public class mysqlconnect {

	//private static final String dricerClass;
	private static final String url;
	private static final String username;
	private static final String password;

	static {
		//dricerClass = "com.mysql.jdbc.Driver";
		url = "jdbc:mysql://localhost:3306/java";
		username = "root";
		password = "";
	}

	/*
	 * 載入資料庫的方法
	 */

	public static void locadClass() throws ClassNotFoundException {

		Class.forName("com.mysql.jdbc.Driver");
	}

	/*
	 * 獲取資料庫連線的方法
	 */
	public static Connection getConnection() throws Exception {

		Connection conn = DriverManager.getConnection(url, username, password);

		return conn;
	}

	/*
	 * 關閉連線並釋放資源的方法
	 */
	public static void result(Connection conn, Statement stam) {

		if (conn != null) {

			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			conn = null;
		}

		if (stam != null) {

			try {
				stam.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			stam = null;
		}
	}

	/*
	 * 關閉連線並釋放資源的方法
	 */
	public static void result(Connection conn, Statement stam, ResultSet rs) {

		if (conn != null) {

			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			conn = null;
		}

		if (stam != null) {

			try {
				stam.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			stam = null;
		}
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			rs = null;
		}

	}

}
