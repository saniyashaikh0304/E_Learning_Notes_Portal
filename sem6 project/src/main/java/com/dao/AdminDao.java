package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.user.AdminDetails;
import com.user.UserDetails;


public class AdminDao {
	private Connection conn;

	public AdminDao(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public AdminDetails loginAdmin(AdminDetails ad) {
		AdminDetails admin = null;
		try {
			String query = "select * from admin where username=? and password=?";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, ad.getUsername());
			ps.setString(2, ad.getPassword());
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				admin = new AdminDetails();
				admin.setA_id(rs.getInt("a_id"));
				admin.setA_name(rs.getString("a_name"));
				admin.setUsername(rs.getString("username"));
				admin.setPassword(rs.getString("password"));
				admin.setClasses_name(rs.getString("classes_name"));
				admin.setContact_no(rs.getString("contact_no"));
				admin.setAddress(rs.getString("address"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return admin;
	}
	
	// Update edit User code here
		public boolean updateUserProfile(AdminDetails a) {
			boolean f = false;
			try {
				String sql = "update admin set a_name=?, username=?, password=?, classes_name=?, address=? where a_id=?";
				PreparedStatement ps = conn.prepareStatement(sql);
				ps.setString(1, a.getA_name());
		        ps.setString(2, a.getUsername());
		        ps.setString(3, a.getPassword());
		        ps.setString(4, a.getClasses_name());
		        ps.setString(5, a.getContact_no());
		        ps.setString(6, a.getAddress());
		        ps.setInt(6, a.getA_id());

				int i = ps.executeUpdate();
				if (i == 1) {
					f = true;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return f;
		}
}
