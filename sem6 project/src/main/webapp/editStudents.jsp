<%@page import="java.sql.*"%>
<%@include file="admin.jsp"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Student Profile</title>
</head>
<body>
	<main id="main" class="main">
  <div class="pagetitle">
	<h1>Dashboard</h1>
	<nav>
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="dashboard.jsp">Home</a></li>
			<li class="breadcrumb-item active">Update Student</li>
		</ol>
	</nav>
  </div>
  
   <section class="section dashboard">
	<div class="row">
		<div class="cotainer">
		<div class="row justify-content-center">
			<div class="card-body bd1">
			<form name="my-form" action="st_edit_action.jsp" method="post">
			<div class="form-group row">
			<% 
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/enotes?characterEncoding=latin1",
					"library", "securelib");
				String id1 = request.getParameter("id");
				PreparedStatement ps = conn.prepareStatement("select * from user where id = ?");
				ps.setString(1, id1);
				ResultSet rs = ps.executeQuery();
				while(rs.next()){				
			%>
							
			<label for="present_id"
			class="col-md-4 col-form-label text-md-right">Student ID : </label>
			<div class="col-md-6">
			<input type="text" class="form-control" name="id" required="required" placeholder="Enter id" oninvalid="this.setCustomValidity('Enter id Here')" oninput="this.setCustomValidity('')" value="<%=rs.getString("id") %>" readonly="readonly" style="width: 500px;">
			</div>
			</div>

			<div class="form-group row">
			<label for="full_name" class="col-md-4 col-form-label text-md-right">Student Name</label>
			<div class="col-md-6">
			<input type="text" class="form-control" name="fname" required="required" placeholder="Enter Name" oninvalid="this.setCustomValidity('Enter Name Here')" oninput="this.setCustomValidity('')" value="<%=rs.getString("name") %>" style="width: 500px;">
			</div>
			</div>

			<div class="form-group row">
			<label for="email_address"
			class="col-md-4 col-form-label text-md-right ">Email-id: </label>
			<div class="col-md-6">
			<input type="email" class="form-control" name="uemail" required="required" placeholder="Enter Email-id" oninvalid="this.setCustomValidity('Enter Email-id Here')" oninput="this.setCustomValidity('')" value="<%=rs.getString("email") %>" style="width: 500px;">
			</div>
			</div>

			<div class="form-group row">
			<label for="password" class="col-md-4 col-form-label text-md-right">Password: </label>
			<div class="col-md-6">
			<input type="text" class="form-control" name="upass" required="required" placeholder="Enter Password" oninvalid="this.setCustomValidity('Enter Password Here')" oninput="this.setCustomValidity('')" value="<%=rs.getString("password") %>" style="width: 500px;">
			</div>
			</div>

			<div class="form-group row">
			<label for="permanent_address" class="col-md-4 col-form-label text-md-right">Number</label>
			<div class="col-md-6">
			<input type="tel" pattern="[1-9]{1}[0-9]{9}" class="form-control" name="number" required="required" placeholder="Enter Contact Number" oninvalid="this.setCustomValidity('Enter 10 Digit Number Only')" oninput="this.setCustomValidity('')" value="<%=rs.getString("number") %>" style="width: 500px;">
			</div>
			</div>

			<div class="form-group row">
			<label for="permanent_address" class="col-md-4 col-form-label text-md-right">Address</label>
			<div class="col-md-6">
			<input type="text" class="form-control" name="address" required="required" placeholder="Enter Address" oninvalid="this.setCustomValidity('Enter Address Here')" oninput="this.setCustomValidity('')" value="<%=rs.getString("address") %>" style="width: 500px;">
			</div>
			</div>

			<div class="form-group row">
			<label for="gender" class="col-md-4 col-form-label text-md-right">Gender : </label>
			<div class="col-md-6">
			<input type="text" class="form-control" name="gender" value="<%=rs.getString("gender") %>" style="width: 500px;">
			</div>
			</div>
			<%} %>

			<div style="position: relative; left: 400px;">
			<button type="submit" class="btn btn-primary">UPDATE</button>
			</div>
		</form>
		</div>

	</div>
	</div>
</body>
</html>