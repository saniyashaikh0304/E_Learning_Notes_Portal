<%@page import="com.db.DBConnect"%>
<%@page import="java.sql.*"%>
<%@include file="admin.jsp"%>

<html lang="en">
  <title>Add Notes</title>
  <head>
  	<style type="text/css">
  	td {
  		padding-top: 10px;
  		padding-bottom: 10px;
  	}
  	</style>
  </head>
<body>
<main id="main" class="main">
  <div class="pagetitle">
	<h1>ADD NOTES</h1>
	<nav>
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="dashboard.jsp">Home</a></li>
			<li class="breadcrumb-item active">Add Notes</li>
		</ol>
	</nav>
</div>

	 <section class="section dashboard">
	 <div class="row">
	 
	 <%
		String insertMsg = (String) session.getAttribute("insertMsg");
		if(insertMsg!=null)
		{%>
			<div class="alert alert-success" role="alert" style="width: 100%;"><%=insertMsg%></div>
		<%
		session.removeAttribute("insertMsg");
		}
	%>
	 
	 <div class="col-md-12">
					<center>
					<h2 style="color: #012970; font-weight: 400;">UPLOAD NOTES</h2>
		<form method="post" action="UploadServlet" enctype="multipart/form-data">
			<table border="0" >
				<tr>
					<td>Select Subject: </td>
					<td><select name="subject" onchange="showCustomer(this.value)" class="form-control" >
						<option value="subject" selected="selected">-- Select ID --</option>
		                <option>English</option>
		                <option>Marathi</option>
		                <option>Hindi</option>
		                <option>Maths</option>
		                <option>Science</option>
		                <option>Social Science</option>
					</select></td>
				</tr>
				<tr>
					<td>Enter Title: </td>
					<td><input type="text" name="title" size="50" class="form-control" oninvalid="this.setCustomValidity('Enter Title Here')" oninput="this.setCustomValidity('')" required /></td>
				</tr>
				<tr>
					<td>Select File: </td>
					<td><input type="file" name="file" size="50" class="form-control" oninvalid="this.setCustomValidity('Select File From Here')" oninput="this.setCustomValidity('')" required /></td>
				</tr>
				<tr style="text-align: center;">
					<td colspan="2">
						<div class="container text-center">
							<button type="submit" class="btn btn-primary">ADD NOTES</button>
						</div>
					</td>
				</tr>
			</table>
		</form>
	</center>
				</div>
			</div>

</section>
  </main><!-- End #main -->
</body>
</html>