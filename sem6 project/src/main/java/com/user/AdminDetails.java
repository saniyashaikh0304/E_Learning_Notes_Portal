package com.user;

public class AdminDetails {
	private int a_id;
	private String a_name;
	private String username;
	private String password;
	private String classes_name;
	private String contact_no;
	private String address;
	
	
	public AdminDetails() {
		super();
	}
	
	public AdminDetails(int a_id, String a_name, String username, String password, String classes_name,
			String contact_no, String address) {
		super();
		this.a_id = a_id;
		this.a_name = a_name;
		this.username = username;
		this.password = password;
		this.classes_name = classes_name;
		this.contact_no = contact_no;
		this.address = address;
	}

	public int getA_id() {
		return a_id;
	}

	public void setA_id(int a_id) {
		this.a_id = a_id;
	}

	public String getA_name() {
		return a_name;
	}

	public void setA_name(String a_name) {
		this.a_name = a_name;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getClasses_name() {
		return classes_name;
	}

	public void setClasses_name(String classes_name) {
		this.classes_name = classes_name;
	}

	public String getContact_no() {
		return contact_no;
	}

	public void setContact_no(String contact_no) {
		this.contact_no = contact_no;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	
}
