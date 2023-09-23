<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home Page</title>
<%@include file="allcomponent/allcontent.jsp"%>
</head>
<body>
	<%@include file="allcomponent/navbar1.jsp"%>

	<div class="container-fluid"
		style="position: relative; top: 50px; left: 0px;">
		<div class="row">
			<!-- Product 1 -->
			<div class="col-md-3">
				<div class="card">
					<a href="addnotes.jsp"><img src="images/img1.png"
						class="card-img-top prdimg"></a>
					<div class="card-body">
						<h4 class="card-title des text-center font-weight-bold"
							style="color: #9c27b0">ADD NOTES</h4>
					</div>
				</div>
			</div>
			<!-- Product 2 -->
			<div class="col-md-3">
				<div class="card">
					<a href="uploadnotes.jsp"><img src="images/img4.png"
						class="card-img-top prdimg"></a>
					<div class="card-body">
						<h4 class="card-title des text-center font-weight-bold"
							style="color: #9c27b0">UPLOAD NOTES</h4>
					</div>
				</div>
			</div>
			<!-- Product 3 -->
			<div class="col-md-3">
				<div class="card">
					<a href="shownotes.jsp"><img src="images/img2.png"
						class="card-img-top prdimg"></a>
					<div class="card-body">
						<h4 class="card-title des text-center font-weight-bold"
							style="color: #9c27b0">SHOW NOTES</h4>
					</div>
				</div>
			</div>
			<!-- Product 4 -->
			<div class="col-md-3">
				<div class="card">
					<a href="dashboard.jsp"><img src="images/img3.png"
						class="card-img-top prdimg" style="width: 289px; height: 288px;"></a>
					<div class="card-body">
						<h4 class="card-title des text-center font-weight-bold"
							style="color: #9c27b0">DASHBOARD</h4>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>