<%@page import="com.db.DBConnect"%>
<%@page import="java.sql.*"%>
<%@include file="admin.jsp"%>

<!DOCTYPE html>
<html>
<head>
  <title>Profile Edit</title>
</head>
<body>
<main id="main" class="main">
  <div class="pagetitle">
	<div class="pagetitle">
		<h1>Profile Edit</h1>
		<nav>
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="dashboard.jsp">Home</a></li>
				<li class="breadcrumb-item active">Profile Edit</li>
			</ol>
		</nav>
	</div>
	<!-- End Page Title -->
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
								<p class="nav-link active" data-bs-toggle="tab">Edit Profile</p>
							</li>
						</ul>
					<!-- Profile Edit Form -->
					
								<form action="editProfileAction.jsp" method="post" style="position: relative; top: 20px;">
									<input type="hidden" value="<%=rs.getInt(1) %>" name="a_id">

									<div class="row mb-3">
										<label class="col-md-4 col-lg-3 col-form-label">Full Name</label>
										<div class="col-md-8 col-lg-9">
											<input name="a_name" type="text" class="form-control"
												value="<%=rs.getString(2) %>" oninvalid="this.setCustomValidity('Enter Full Name Here')" oninput="this.setCustomValidity('')" required>
										</div>
									</div>

									<div class="row mb-3">
										<label class="col-md-4 col-lg-3 col-form-label">User Name</label>
										<div class="col-md-8 col-lg-9">
											<input name="username" type="text" class="form-control"
												value="<%=rs.getString(3) %>" oninvalid="this.setCustomValidity('Enter UserName Here')" oninput="this.setCustomValidity('')" required>
										</div>
									</div>
									
									<div class="row mb-3">
										<label class="col-md-4 col-lg-3 col-form-label">Password</label>
										<div class="col-md-8 col-lg-9">
											<input name="password" type="text" class="form-control"
												value="<%=rs.getString(4) %>" oninvalid="this.setCustomValidity('Enter Password Here')" oninput="this.setCustomValidity('')" required>
										</div>
									</div>

									<div class="row mb-3">
										<label class="col-md-4 col-lg-3 col-form-label">Classes Name</label>
										<div class="col-md-8 col-lg-9">
											<input name="classes_name" type="text" class="form-control"
												value="<%=rs.getString(5) %>" oninvalid="this.setCustomValidity('Enter Classes Name Here')" oninput="this.setCustomValidity('')" required>
										</div>
									</div>
									
									<div class="row mb-3">
										<label class="col-md-4 col-lg-3 col-form-label">Contact Number</label>
										<div class="col-md-8 col-lg-9">
											<input name="contact_no" type="tel" class="form-control" pattern="[1-9]{1}[0-9]{9}" oninvalid="this.setCustomValidity('Enter 10 Digit Number Only')" oninput="this.setCustomValidity('')"
												value="<%=rs.getString(6) %>">
										</div>
									</div>
									
									<div class="row mb-3">
										<label class="col-md-4 col-lg-3 col-form-label">Address</label>
										<div class="col-md-8 col-lg-9">
											<input name="address" type="text" class="form-control"
												value="<%=rs.getString(7) %>" oninvalid="this.setCustomValidity('Enter Address Here')" oninput="this.setCustomValidity('')" required>
										</div>
									</div>

									<div class="text-center">
										<button type="submit" class="btn btn-primary">Update</button>
									</div>
								</form>
							<% } }
      						catch(Exception e){}
    					 %>
							
								<!-- End Profile Edit Form -->
								</div>
					</div>
				</div>
			</div>
			</section>
		</div>
  </main><!-- End #main -->
</body>
</html>