<%@page import="com.db.DBConnect"%>
<%@page import="java.sql.*"%>
<%@include file="user.jsp"%>

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
				<li class="breadcrumb-item"><a href="dashboard1.jsp">Home</a></li>
				<li class="breadcrumb-item active">Profile</li>
			</ol>
		</nav>
	</div>
	<!-- End Page Title -->
	
	
	<section class="section profile">
		<div class="row">
			<div class="col-xl-4">

				<div class="card" style="position: relative; left: 300px;">
					<div
						class="card-body profile-card pt-3 d-flex flex-column align-items-center">
						<h2><%=user.getName()%></h2>
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

						</ul>
						<div class="tab-content pt-2">

							<div class="tab-pane fade show active profile-overview"
								id="profile-overview">

								<h5 class="card-title">Profile Details</h5>
								
								<div class="row">
									<div class="col-lg-3 col-md-4 label ">ID</div>
									<div class="col-lg-9 col-md-8"><%=user.getId()%></div>
								</div>

								<div class="row">
									<div class="col-lg-3 col-md-4 label ">Full Name</div>
									<div class="col-lg-9 col-md-8"><%=user.getName()%></div>
								</div>

								<div class="row">
									<div class="col-lg-3 col-md-4 label">Email ID</div>
									<div class="col-lg-9 col-md-8"><%=user.getEmail()%></div>
								</div>
								
								<div class="row">
									<div class="col-lg-3 col-md-4 label">Contact Number</div>
									<div class="col-lg-9 col-md-8"><%=user.getNumber()%></div>
								</div>
								
								<div class="row">
									<div class="col-lg-3 col-md-4 label">Address</div>
									<div class="col-lg-9 col-md-8"><%=user.getAddress()%></div>
								</div>
								
								<div class="row">
									<div class="col-lg-3 col-md-4 label">Gender</div>
									<div class="col-lg-9 col-md-8"><%=user.getGender()%></div>
								</div>

							</div>

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
