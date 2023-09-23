package com.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	private static Connection conn;

	public static Connection getConn() {
		try {
			if (conn == null) {
				Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/enotes?characterEncoding=latin1",
						"library", "securelib");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return conn;
	}

}
