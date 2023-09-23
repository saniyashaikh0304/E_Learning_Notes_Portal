<%@page import="com.user.UserDetails"%>
<%@page import="com.user.Post"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.PostDAO"%>
<%@include file="admin.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Assignment</title>
</head>
<body>
	<main id="main" class="main">
  <div class="pagetitle">
	<h1>VIEW ASSIGNMENT</h1>
	<nav>
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="dashboard.jsp">Home</a></li>
			<li class="breadcrumb-item active">View Assignment</li>
		</ol>
	</nav>
  </div>

	 <section class="section dashboard">
	 <div class="row">
	
	<a title="print screen" alt="print screen"
					onclick="window.print();" target="_blank" style="cursor: pointer;">
							<img src="images/print.png" style="position: relative; left: 440px; bottom: 10px;"></a>

	<div class="container" style="position: relative; top: 10px;">
		<div class="row">
			<div class="col-md-12">
			<div class="form-group">
				<%
				try{
		      		Class.forName("com.mysql.jdbc.Driver");
					Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/enotes?characterEncoding=latin1",
							"library", "securelib");
		    		Statement st = conn.createStatement();
		    		String id = request.getParameter("id");
		    		ResultSet rs = st.executeQuery("select * from post where id='"+id+"'");
		    		while(rs.next())
					{%>
					<div class="card mt-3">
					<img alt="" src="images/img1.png" class="card-img-top mt-2 mx-auto"
						style="max-width: 100px;">

					<div class="card-body p-4">
						<h5 class="card-title">Subject: <%=rs.getString(2) %></h5>
						<h5 class="card-title"><%=rs.getString(3) %></h5>
						<p><%=rs.getString(4) %></p>
						
						<p>
							<b class="text-success">Published Date: <%=rs.getString(6) %></b><br> <b
								class="text-danger">Submission Date: <%=rs.getString(5) %></b>
						</p>

						<div class="container text-center mt-2">
							<a href="DeleteServlet?note_id=<%=rs.getString(1) %>" class="btn btn-danger">Delete</a> 
							<a href="edit.jsp?note_id=<%=rs.getString(1) %>" class="btn btn-primary">Edit</a>
						</div>
					</div>
				</div>
				<%
				}}
				catch(Exception e){
					System.out.print(e);
				}
				%>
				

			</div>
		</div>
	</div>
	</div></section></main>
</body>
</html>