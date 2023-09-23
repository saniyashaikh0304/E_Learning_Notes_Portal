<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>student Login Page</title>
<%@include file="allcomponent/allcontent.jsp"%>
</head>
<body>
	<%@include file="allcomponent/navbar.jsp"%>
	<div class="container-fluid"
		style="background-image: radial-gradient(circle, #8377f0, #8d72eb, #976ce5, #9f67df, #a761d8); height: 500px;">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-5">
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-sign-in fa-3x" aria-hidden="true"></i>
						<h4>Login Form</h4>
					</div>

					<%
					String invalidMsg = (String) session.getAttribute("login-failed");
					if (invalidMsg != null) {
					%>
					<div class="alert alert-danger" role="alert"><%=invalidMsg%></div>
					<%
					session.removeAttribute("login-failed");
					}
					%>
					
					<%
					String lgMsg = (String) session.getAttribute("logoutMsg");
					if(lgMsg!=null)
					{%>
					<div class="alert alert-success" role="alert"><%=lgMsg%></div>
					<%
					session.removeAttribute("logoutMsg");
					}
					%>
					
					<div class="card-body">
						<form action="LoginServlet" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Enter Email</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter email"
									name="uemail" required>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Enter Password:</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Password" name="upass" required>
							</div>
							<button type="submit"
								class="btn btn-primary btn-primary badge-pill btn-block">Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="allcomponent/footer.jsp"%>
</body>
</html>