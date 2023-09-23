<%@page import="com.db.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<%@include file="allcomponent/allcontent.jsp"%>
<!-- Vendor CSS Files -->
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
<link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
<link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="style.css">

<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet">
</head>

<body>
	<%@include file="allcomponent/navbar.jsp"%>

	<div class="carousel-inner">
		<div class="carousel-item active back-img">
			<img class="d-block w-100" src="images/slider_image.jpg"
				alt="First slide" style="height: 530px;">
			<div class="carousel-caption d-none d-md-block"
				style="position: relative; top: -500px; left: 10px;">
				<h2 style="color: white;">
					<i class="fa fa-book" aria-hidden="true"></i> E-Learning Notes - Save
					Your Notes <br>For Class X
				</h2>
				<a href="login.jsp" class="btn btn-light"><i
					class="fa fa-sign-in" aria-hidden="true"></i> Login</a> <a
					href="register.jsp" class="btn btn-light"><i
					class="fa fa-user-plus" aria-hidden="true"></i> Register</a>
			</div>
		</div>
	</div>

	<section id="ABOUT" style="position: relative; top: -70px;">
		<div class="about-1">
			<h1>ABOUT US</h1>
			<P>ARIBA CLASSES is tied with getting results and setting your
				child up for long haul achievement. At Ariba Classes, we are
				centered around building scholastic certainty, lighting scholarly
				interest and motivating an affection for learning. For almost 15
				years, we've helped a large number of understudies and families like
				yours accomplish new dimension of scholarly achievement.</P>
		</div>
		<div id="about-2">
			<div class="content-box-lg">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<div class="about-item text-center">
								<i class="fa fa-book"></i>
								<h3>MISSION</h3>
								<hr>
								<p>Our main goal at Inspire Tuition Centre is to ensure that
									we can create an environment that will be inspiring to our
									students and can provide them with the confidence and
									enthusiasm to attain the highest possible results. Our teachers
									are experienced, highly academic and strive to offer the best
									quality education.</p>
							</div>
						</div>
						<div class="col-md-6">
							<div class="about-item text-center">
								<i class="fa fa-globe"></i>
								<h3>VISION</h3>
								<hr>
								<p>Provide a positive experience and opportunities for every
									student to improve their skills and build self-esteem. Help
									students to build the foundation of their future success by
									helping them to become independent learners. Provide positive
									learning environment. Providing comprehensive and tailored tutoring programs</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<div class="about-1" style="position: relative; top: -30px;">
			<h2>CONTACT US</h2>
	<div class="container" style="position: relative; top: 15px;">
					<div class="row">
						<div class="col-md-4">
							<div class="about-item1 text-center">
								<i class="fa fa-book"></i>
								<h5>ADDRESS</h5>
								<hr>
								<p>C/102,103, Trivedi Plaza, Haidery Chowk, Naya Nagar, MiraRoad(E), Thane-401107.</p>
							</div>
						</div>
						<div class="col-md-4">
							<div class="about-item1 text-center">
								<i class="fa fa-globe"></i>
								<h5>PHONE</h5>
								<hr>
								<p>+91 - 9920378504</p>
							</div>
						</div>
						<div class="col-md-4">
							<div class="about-item1 text-center">
								<i class="fa fa-book"></i>
								<h5>MAIL</h5>
								<hr>
								<p>aribaclasses04@gmail.com</p>
							</div>
						</div>
					</div>
				</div>
	</div>
	

	<%@include file="allcomponent/footer.jsp"%>
	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>
	<!-- Vendor JS Files -->
	<script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/vendor/chart.js/chart.min.js"></script>
	<script src="assets/vendor/echarts/echarts.min.js"></script>
	<script src="assets/vendor/quill/quill.min.js"></script>
	<script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
	<script src="assets/vendor/tinymce/tinymce.min.js"></script>
	<script src="assets/vendor/php-email-form/validate.js"></script>
	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>
</body>
</html>