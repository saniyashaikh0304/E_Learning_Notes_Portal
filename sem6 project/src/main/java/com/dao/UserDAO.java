package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.user.UserDetails;

public class UserDAO {
	private Connection conn;

	public UserDAO(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean addUser(UserDetails ud) {
		boolean f = false;

		try {
			String query = "insert into user(name,email,password,number,address,gender) values(?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, ud.getName());
			ps.setString(2, ud.getEmail());
			ps.setString(3, ud.getPassword());
			ps.setString(4, ud.getNumber());
			ps.setString(5, ud.getAddress());
			ps.setString(6, ud.getGender());
			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	public UserDetails loginUser(UserDetails ud) {
		UserDetails user = null;
		try {
			String query = "select * from user where email=? and password=?";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, ud.getEmail());
			ps.setString(2, ud.getPassword());
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				user = new UserDetails();
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setEmail(rs.getString("email"));
				user.setPassword(rs.getString("password"));
				user.setNumber(rs.getString("number"));
				user.setAddress(rs.getString("address"));
				user.setGender(rs.getString("gender"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return user;
	}
	
}
