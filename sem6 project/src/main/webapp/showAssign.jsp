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
	
	<%
		String updateMsg = (String) session.getAttribute("updateMsg");
		if(updateMsg!=null)
		{%>
			<div class="alert alert-success" role="alert"><%=updateMsg%></div>
		<%
		session.removeAttribute("updateMsg");
		}
	%>

	<%
		String wrongMsg = (String) session.getAttribute("wrongMsg");
		if(wrongMsg!=null)
		{%>
			<div class="alert alert-danger" role="alert"><%=wrongMsg%></div>
		<%
		session.removeAttribute("wrongMsg");
		}
	%>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
			<div class="form-group">
				<%
				PostDAO ob = new PostDAO(DBConnect.getConn());
				List<Post> post=ob.getData();
					for (Post po : post) 
					{%>
					<div class="card mt-3">
					<img alt="" src="images/img1.png" class="card-img-top mt-2 mx-auto"
						style="max-width: 100px;">

					<div class="card-body p-4">
						<h5 class="card-title"><%=po.getTitle() %></h5>
						<p><%=po.getContent() %></p>
						
						<p>
							<b class="text-success">Published Date: <%=po.getPdate() %></b><br> <b
								class="text-primary"></b>
						</p>

						<div class="container text-center mt-2">
							<a href="DeleteServlet?note_id=<%= po.getId() %>" class="btn btn-danger">Delete</a> 
							<a href="edit.jsp?note_id=<%=po.getId() %>" class="btn btn-primary">Edit</a>
						</div>
					</div>
				</div>
				<%
				}
				%>
				

			</div>
		</div>
	</div>
	</div></section></main>
</body>
</html>