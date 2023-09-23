<%@page import="com.db.DBConnect"%>
<%@page import="java.sql.*"%>
<%@include file="admin.jsp"%>

<html lang="en">
  <title>Add Assignment</title>
<body>
<main id="main" class="main">
  <div class="pagetitle">
	<h1>ADD ASSIGNMENT</h1>
	<nav>
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="dashboard.jsp">Home</a></li>
			<li class="breadcrumb-item active">Add Assignment</li>
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
					<form action="AddNotesServlet" method="post">
					
						<div class="form-group">
							<label for="exampleInputTitle">Select Subject</label> 
							<select name="subject" onchange="showCustomer(this.value)" class="form-control">
								<option value="subject" selected="selected">-- Select ID --</option>
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
							<input type="date" class="form-control" name="sub_date" style="max-width: 300px;" required>
						</div>
						
						<div class="form-group">
							<label for="exampleInputTitle">Enter Title</label> <input
								type="text" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" placeholder="Enter Title" name="title" oninvalid="this.setCustomValidity('Enter Title Here')" oninput="this.setCustomValidity('')" required>
						</div>
						<div class="form-group">
							<label for="exampleInputContent">Enter Content</label>
							<textarea rows="10" cols="" class="form-control" name="content" oninvalid="this.setCustomValidity('Enter Assignment Here')" oninput="this.setCustomValidity('')" required></textarea>
						</div>
						<div class="container text-center">
							<button type="submit" class="btn btn-primary">ADD ASSIGNMENT</button>
						</div>
					</form>
				</div>
			</div>
</section>
  </main><!-- End #main -->
</body>
</html>