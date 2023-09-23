<%@page import="com.db.DBConnect"%>
<%@page import="java.sql.*"%>
<%@include file="admin.jsp"%>

<!DOCTYPE html>
<html>
<head>
  <title>Profile</title>
</head>
<body>
<main id="main" class="main">
  <div class="pagetitle">
	<div class="pagetitle">
		<h1>Profile</h1>
		<nav>
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="dashboard.jsp">Home</a></li>
				<li class="breadcrumb-item active">Profile</li>
			</ol>
		</nav>
	</div>
	<!-- End Page Title -->
	<%
		String succMsg = (String) session.getAttribute("succMsg");
		if(succMsg!=null)
		{%>
			<div class="alert alert-success" role="alert" style="width: 100%;"><%=succMsg%></div>
		<%
		session.removeAttribute("succMsg");
		}
	%>
	
	<section class="section profile">
		<div class="row">
			<div class="col-xl-4">
			
						<%
      						try{
      							Class.forName("com.mysql.jdbc.Driver");
								Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/enotes?characterEncoding=latin1",
									"library", "securelib");
    							Statement st = conn.createStatement();
    							ResultSet rs = st.executeQuery("select * from admin");
    							while(rs.next()){
      					%>

				<div class="card" style="position: relative; left: 240px; width: 400px;">
					<div
						class="card-body profile-card pt-3 d-flex flex-column align-items-center">
						<h2><%=rs.getString(2) %></h2>
					</div>
				</div>
			</div>
			<div class="col-xl-8">

				<div class="card" style="position: relative; top: 90px; left: -165px;">
					<div class="card-body pt-3">
						<!-- Bordered Tabs -->
						<ul class="nav nav-tabs nav-tabs-bordered">
							<li class="nav-item">
								<a class="nav-link active" data-bs-toggle="tab"
									href="#profile-overview">Overview</a>
							</li>

							<li class="nav-item">
								<a href="editProfile1.jsp" class="btn btn-primary" style="position: relative; left: 340px; bottom: 5px; color: white;">Edit Profile</a>
							</li>
						</ul>
						
						<div class="tab-content pt-2">

							<div class="tab-pane fade show active profile-overview"
								id="profile-overview">

								<h5 class="card-title">Profile Details</h5>

								<div class="row">
									<div class="col-lg-3 col-md-4 label ">Full Name</div>
									<div class="col-lg-9 col-md-8"><%=rs.getString(2) %></div>
								</div>

								<div class="row">
									<div class="col-lg-3 col-md-4 label">UserName</div>
									<div class="col-lg-9 col-md-8"><%=rs.getString(3) %></div>
								</div>
								
								<div class="row">
									<div class="col-lg-3 col-md-4 label">Password</div>
									<div class="col-lg-9 col-md-8"><%=rs.getString(4) %></div>
								</div>
								
								<div class="row">
									<div class="col-lg-3 col-md-4 label">Classes Name</div>
									<div class="col-lg-9 col-md-8"><%=rs.getString(5) %></div>
								</div>
								
								<div class="row">
									<div class="col-lg-3 col-md-4 label">Contact Number</div>
									<div class="col-lg-9 col-md-8"><%=rs.getString(6) %></div>
								</div>
								
								<div class="row">
									<div class="col-lg-3 col-md-4 label">Address</div>
									<div class="col-lg-9 col-md-8"><%=rs.getString(7) %></div>
								</div>

							</div>
						<% } }
      						catch(Exception e){}
    					 %>
					</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	</div>
  </main><!-- End #main -->
</body>
</html>
