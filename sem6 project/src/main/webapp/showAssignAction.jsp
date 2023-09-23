<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.user.UserDetails"%>
<%@page import="com.user.Post"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.PostDAO"%>
<%@include file="admin.jsp"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Assignment</title>
</head>
<body>
	<main id="main" class="main">
  <div class="pagetitle">
	<h1>VIEW ASSIGNMENT</h1>
	<nav>
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="dashboard.jsp">Home</a></li>
			<li class="breadcrumb-item active">View Assignment</li>
		</ol>
	</nav>
  </div>

	 <section class="section dashboard">
	 <div class="row">
	 
	 <%
		String updateMsg = (String) session.getAttribute("updateMsg");
		if(updateMsg!=null)
		{%>
			<div class="alert alert-success" role="alert" style="width: 100%;"><%=updateMsg%></div>
		<%
		session.removeAttribute("updateMsg");
		}
	%>

	<%
		String wrongMsg = (String) session.getAttribute("wrongMsg");
		if(wrongMsg!=null)
		{%>
			<div class="alert alert-danger" role="alert" style="width: 100%;"><%=wrongMsg%></div>
		<%
		session.removeAttribute("wrongMsg");
		}
	%>
	 
	<div class="container">
		<div class="row">
			<div class="col-md-12">
			<form action="showAssignAction.jsp" method="post">
			<div class="form-group">
							<label for="exampleInputTitle">Select Subject</label> 
							<select name="subject" onchange="showCustomer(this.value)">
								<option value="subject" selected="selected">-- Select ID --</option>
		                		<option>English</option>
		               			<option>Marathi</option>
		                		<option>Hindi</option>
		                		<option>Maths</option>
		                		<option>Science</option>
		                		<option>Social Science</option>
							</select>

							<button type="submit" class="btn btn-primary">SEARCH</button>
						</div>
						</form>
			</div>
			<table cellpadding="5" style="font-size: 18px; width: 100%;">
				<tr class="table-secondary">
					<th>ID</th>
					<th>SUBJECT</th>
					<th>TITLE</th>
					<th>SUBMISSION DATE</th>
					<th>VIEW</th>
				</tr>
					<%
      	try{
      		Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/enotes?characterEncoding=latin1",
					"library", "securelib");
    		Statement st = conn.createStatement();
			String subject = request.getParameter("subject");
    		ResultSet rs = st.executeQuery("select * from post where subject='"+subject+"' ORDER BY id");
    		while(rs.next()){
      %>
      
		
					<tr>
						<td><%=rs.getInt(1) %></td>
						<td><%=rs.getString(2) %></td>
						<td><%=rs.getString(3) %></td>
						<td><%=rs.getString(5) %></td>
						<td><a href="viewAssign.jsp?id=<%=rs.getString("id")%>">OPEN</a></td>
					</tr>
				</tbody>
				<% } }
      catch(Exception e){}
     %>
			</div>
		</table>
	</div>
	<!-- view form end -->
			
		</div>
	</div>
	</div></section></main>
</body>
</html>