<%@page import="java.sql.*"%>
<%@include file="admin.jsp"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Students</title>
<style type="text/css">
	table, th, td {
border: 1px solid black;
border-collapse: collapse;
}
th, td {
padding: 10px;
}
th {
background-color: #ce93d8;	
}

</style>
</head>
<body>
	
	<main id="main" class="main">
  <div class="pagetitle">
	<h1>Dashboard</h1>
	<nav>
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="dashboard.jsp">Home</a></li>
			<li class="breadcrumb-item active">View Students</li>
		</ol>
	</nav>
  </div>
  
  <%
		String editstd = (String) session.getAttribute("editstd");
		if(editstd!=null)
		{%>
			<div class="alert alert-success" role="alert" style="width: 100%;"><%=editstd%></div>
		<%
		session.removeAttribute("editstd");
		}
	%>
	
	<%
		String dltstd = (String) session.getAttribute("dltstd");
		if(dltstd!=null)
		{%>
			<div class="alert alert-success" role="alert" style="width: 100%;"><%=dltstd%></div>
		<%
		session.removeAttribute("dltstd");
		}
	%>
  
  <a title="print screen" alt="print screen"
					onclick="window.print();" target="_blank" style="cursor: pointer;">
							<img src="images/print.png" style="position: relative; left: 440px; bottom: 10px;"></a>
   <section class="section dashboard">
	<div class="row">
	<div class="tbl-header">
		<table>
			<thead style="text-align: center;">
				<tr>
					<th>ID</th>
					<th>NAME</th>
					<th>EMAIL ID</th>
					<th>PASSWORD</th>
					<th>CONTACT NUMBER</th>
					<th>ADDRESS</th>
					<th>GENDER</th>
					<th>EDIT</th>
					<th>DELETE</th>
				</tr>
			</thead>
					<%
      	try{
      		Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/enotes?characterEncoding=latin1",
					"library", "securelib");
    		Statement st = conn.createStatement();
    		ResultSet rs = st.executeQuery("select * from user");
    		while(rs.next()){
      %>
      <div class="tbl-content">
				<tbody style="text-align: center;">
					<tr>
						<td><%=rs.getInt(1) %></td>
						<td><%=rs.getString(2) %></td>
						<td><%=rs.getString(3) %></td>
						<td><%=rs.getString(4) %></td>
						<td><%=rs.getString(5) %></td>
						<td><%=rs.getString(6) %></td>
						<td><%=rs.getString(7) %></td>
						<td><a href="editStudents.jsp?id=<%=rs.getString("id")%>">EDIT</a></td>
						<td><a href="st_delete.jsp?id=<%=rs.getString("id")%>">DELETE</a></td>
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
	</section>
  
</body>
</html>