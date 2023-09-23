<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>
<%@include file="allcomponent/allcontent.jsp"%>
</head>
<body>
	<%@include file="allcomponent/navbar.jsp"%>
	<div class="container-fluid"
		style="background-image: radial-gradient(circle, #8377f0, #8d72eb, #976ce5, #9f67df, #a761d8); height: 750px;">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
						<h4>Registration Form</h4>
					</div>

					<%
					String regMsg = (String) session.getAttribute("reg-success");
					if (regMsg != null) {
					%>
					<div class="alert alert-success" role="alert"><%=regMsg%> Login<a href="login.jsp"> Click Here</a></div>
					<%
						session.removeAttribute("reg-success");
					}
					%>
					
					
					<%
					String failMsg = (String) session.getAttribute("failed-msg");
					if (failMsg != null) {
					%>
					<div class="alert alert-danger" role="alert"><%=failMsg%></div>
					<%
						session.removeAttribute("failed-msg");
					}
					%>


					<div class="card-body">
						<form action="UserServlet" method="post">
							<div class="form-group">
								<label for="exampleInputPassword1">Enter Full Name</label> <input
									type="text" class="form-control" id="exampleInputName1"
									aria-describedby="emailHelp" placeholder="Enter full Name"
									name="fname" oninvalid="this.setCustomValidity('Enter Name Here')" oninput="this.setCustomValidity('')" required>
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Enter Email</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter email"
									name="uemail" oninvalid="this.setCustomValidity('Enter proper Email-id Here')" oninput="this.setCustomValidity('')" required>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Enter Password:</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Password" name="upass" oninvalid="this.setCustomValidity('Enter Password Here')" oninput="this.setCustomValidity('')" required>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Enter Contact No:</label> <input
									type="tel" class="form-control" id="exampleInputNumber1"
									placeholder="Contact Number" name="number" pattern="[1-9]{1}[0-9]{9}" oninvalid="this.setCustomValidity('Enter 10 Digit Number Only')" oninput="this.setCustomValidity('')" required>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Enter Address:</label> <input
									type="text" class="form-control" id="exampleInputAddress1"
									placeholder="Enter Address" name="address" oninvalid="this.setCustomValidity('Enter Address Here')" oninput="this.setCustomValidity('')" required>
							</div>
							<div class="form-group">
								<label>Gender : </label>
								<label><input type="radio" name="gender" value="Male" required="required">Male</label>
								<label><input type="radio" name="gender" value="Female" required="required">Female</label>
							</div>
							<button type="submit"
								class="btn btn-primary btn-primary badge-pill btn-block">Register</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid footer1" style="background-color: #8e24aa !important; height: 80px;">
	<center><p style="color: white; font-size: 18px; position: relative; top: 10px; font-weight: bold;">Copyright &copy; 2022. All Rights Reserved <br>Made By SHAIKH SANIA TYCS-20</p></center>
	</div>
</body>
</html>