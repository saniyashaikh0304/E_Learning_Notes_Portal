<%@page import="com.user.AdminDetails"%>
<nav
	class="navbar navbar-expand-lg navbar-dark bg-custom navbar-fixed-top navbar-custom">
	<a class="navbar-brand" style="font-size: 25px; color: white;"><i
		class="fa fa-book" aria-hidden="true"></i> E-Learning Notes</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto"
			style="position: relative; right: -15px;">
			<li class="nav-item active"><a class="nav-link"
				href="home_page.jsp"><i class="fa fa-home" aria-hidden="true"></i>
					Home <span class="sr-only">(current)</span> </a></li>
			<li class="nav-item"><a class="nav-link" href="login1.jsp"><i
					class="fa fa-user-circle-o" aria-hidden="true"></i> ADMIN</a></li>
			<li class="nav-item"><a class="nav-link" href="login.jsp"><i
					class="fa fa-user-o" aria-hidden="true"></i> STUDENT</a></li>
		</ul>
		<form class="form-inline my-2 my-lg-0"
			style="position: relative !important; left: -20px !important;">

			<%
			AdminDetails admin = (AdminDetails) session.getAttribute("AdminD");
			if (admin != null) {
			%>
			<a class="btn btn-light my-2 my-sm-0 mr-3 btn1" data-toggle="modal"
				data-target="#exampleModal" type="submit" href=""><i
				class="fa fa-user-o" aria-hidden="true"></i> <%=admin.getUsername()%></a>

			<a class="btn btn-light my-2 my-sm-0 btn1" type="submit"
				href="LogoutServlet1"><i class="fa fa-sign-in"
				aria-hidden="true"></i> Logout</a>

			<!-- Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Profile Page</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<div class="container text-center">
								<i class="fa fa-user fa-3x" aria-hidden="true"></i>

								<table class="table">
									<tbody>
										<tr>
											<th>Admin Name:</th>
											<td><%=admin.getA_name()%></td>
										</tr>
										<tr>
											<th>Admin UserName:</th>
											<td><%=admin.getUsername()%></td>
										</tr>
									</tbody>
								</table>

								<div>
									<button type="button" class="btn btn-primary"
										data-dismiss="modal">Close</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<%
			session.removeAttribute("userD");
			} else {
			%>
			<a class="btn btn-light my-2 my-sm-0 mr-3 btn1" type="submit"
				href="register.jsp"><i class="fa fa-user-plus"
				aria-hidden="true"></i> Register</a> <a
				class="btn btn-light my-2 my-sm-0 btn1" type="submit"
				href="login.jsp"><i class="fa fa-sign-in" aria-hidden="true"></i>
				Login</a>
			<%
			}
			%>

		</form>
	</div>
</nav>