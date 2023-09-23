<%@page import="com.user.Post"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.PostDAO"%>
<%@include file="admin.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Assignment</title>
</head>
<body>
<main id="main" class="main">
  <div class="pagetitle">
	<h1>EDIT ASSIGNMENT</h1>
	<nav>
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="dashboard.jsp">Home</a></li>
			<li class="breadcrumb-item active">Edit Assignment</li>
		</ol>
	</nav>
</div>

    <section class="section dashboard">
	<div class="row">

	<%
		Integer noteid = Integer.parseInt(request.getParameter("note_id"));
		PostDAO post = new PostDAO(DBConnect.getConn());
		Post p = post.getDataById(noteid);
		
	%>
		<h2 class="text-center" style="position: relative; top: 5px;">EDIT YOUR NOTES</h2>
		<div class="container" style="position: relative;top: -4px;">
			<div class="row">
				<div class="col-md-12">
					<form action="EditNotesServlet" method="post">
					
					<input type="hidden" value="<%=noteid%>" name="noteid">
						
						<div class="form-group">
							<label for="exampleInputTitle">Select Subject</label> 
							<select name="subject" class="form-control">
								<option>-- Select ID --</option>
								<option value="subject" selected="selected"><%=p.getSubject()%></option>
		                		<option>English</option>
		               			<option>Marathi</option>
		                		<option>Hindi</option>
		                		<option>Maths</option>
		                		<option>Science</option>
		                		<option>Social Science</option>
							</select>
						</div>
						
						<div>
							<label for="exampleInputTitle">Select submission Date</label> 
							<input type="date" class="form-control" name="sub_date" style="max-width: 300px;" value="<%=p.getSub_date()%>" required>
						</div>
						
						<div class="form-group">
							<label for="exampleInputTitle">Enter Title</label> <input
								type="text" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" placeholder="Enter Title" name="title" value="<%=p.getTitle()%>" oninvalid="this.setCustomValidity('Enter Title Here')" oninput="this.setCustomValidity('')" required>
						</div>
						<div class="form-group">
							<label for="exampleInputContent">Enter Content</label>
							<textarea rows="10" cols="" class="form-control" name="content" oninvalid="this.setCustomValidity('Enter Assignment Here')" oninput="this.setCustomValidity('')" required><%=p.getContent() %></textarea>
						</div>
						<div class="container text-center">
							<button type="submit" class="btn btn-primary">EDIT NOTES</button>
						</div>
					</form>
				</div>
			</div>
		</div></div>
		</section></main>
</body>
</html>