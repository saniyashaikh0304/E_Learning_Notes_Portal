<%@page import="java.sql.*" %>

<%
	String id = request.getParameter("id");
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/enotes?characterEncoding=latin1","library", "securelib");
		PreparedStatement ps = conn.prepareStatement("delete from user where id=?");
        ps.setString(1, id);
        int i=ps.executeUpdate();
        System.out.println(i+"record deleted");
		response.sendRedirect("viewStudents.jsp");
	}
	catch(Exception e){
		out.println(e);
	}
%>