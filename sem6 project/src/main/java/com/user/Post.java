package com.user;

import java.util.Date;

public class Post {
	private int id;
	private String subject;
	private String title;
	private String content;
	private String sub_date;
	private Date pdate;
	private AdminDetails admin; 

	public Post() {
		super();
	}

	public Post(int id, String subject, String title, String content, String sub_date, Date pdate, AdminDetails admin) {
		super();
		this.id = id;
		this.subject = subject;
		this.title = title;
		this.content = content;
		this.sub_date = sub_date;
		this.pdate = pdate;
		this.admin = admin;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getSub_date() {
		return sub_date;
	}

	public void setSub_date(String sub_date) {
		this.sub_date = sub_date;
	}

	public Date getPdate() {
		return pdate;
	}

	public void setPdate(Date pdate) {
		this.pdate = pdate;
	}

	public AdminDetails getAdmin() {
		return admin;
	}

	public void setAdmin(AdminDetails admin) {
		this.admin = admin;
	}
}
