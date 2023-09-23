package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.user.Post;

public class PostDAO {
	private Connection conn;

	public PostDAO(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean AddNotes(String su ,String ti,String co,String dt) {
		boolean f = false;
		
		try {
			String qu = "insert into post(subject,title,content,sub_date) values(?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(qu);
			ps.setString(1, su);
			ps.setString(2, ti);
			ps.setString(3, co);
			ps.setString(4, dt);
			
			int i = ps.executeUpdate();
			if (i==1) {
				f= true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}
	
	
	public List<Post> getData() {
		List<Post> list = new ArrayList<Post>();
		Post po = null;
		
		try {
			String qu = "select * from post order id=?";
			PreparedStatement ps = conn.prepareStatement(qu);
			
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				po = new Post();
				po.setId(rs.getInt(1));
				po.setSubject(rs.getString(2));
				po.setTitle(rs.getString(3));
				po.setContent(rs.getString(4));
				po.setSub_date(rs.getString(5));
				po.setPdate(rs.getTimestamp(6));
				list.add(po);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public List<Post> getData1(int id) {
		List<Post> list = new ArrayList<Post>();
		Post po = null;
		
		try {
			String qu = "select * from post where uid=? order by id DESC";
			PreparedStatement ps = conn.prepareStatement(qu);
			ps.setInt(1, id);
			
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				po = new Post();
				po.setId(rs.getInt(1));
				po.setTitle(rs.getString(2));
				po.setContent(rs.getString(3));
				po.setPdate(rs.getTimestamp(4));
				list.add(po);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public Post getDataById(int noteId) {
		Post p = null;
		
		try {
			String qu = "select * from post where id=?";
			PreparedStatement ps = conn.prepareStatement(qu);
			ps.setInt(1, noteId);
			ResultSet rs = ps.executeQuery();
			
			if (rs.next()) {
				p=new Post();
				p.setId(rs.getInt(1));
				p.setSubject(rs.getString(2));
				p.setTitle(rs.getString(3));
				p.setContent(rs.getString(4));
				p.setSub_date(rs.getString(5));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return p;
	}
	
	public boolean postUpdate(int nid,String su,String ti,String co,String dt) {
		boolean f = false;
		
		try {
			String qu = "update post set subject=?, title=?, content=?, sub_date=? where id=?";
			PreparedStatement ps = conn.prepareStatement(qu);
			ps.setString(1,su);
			ps.setString(2, ti);
			ps.setString(3, co);
			ps.setString(4, dt);
			ps.setInt(5, nid);
			
			int i = ps.executeUpdate();
			if (i==1) {
				f=true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}
	
	public boolean deleteNotes(int nid) {
		boolean f = false;
		
		try {
			String qu = "delete from post where id=?";
			PreparedStatement ps = conn.prepareStatement(qu);
			ps.setInt(1, nid);
			int x = ps.executeUpdate();
			if (x==1) {
				f=true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}
}
