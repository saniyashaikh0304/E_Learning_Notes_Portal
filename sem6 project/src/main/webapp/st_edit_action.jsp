<%@page import="java.sql.*"%>
<%
	String id = request.getParameter("id");
	String name = request.getParameter("fname");
	String email = request.getParameter("uemail");
	String pass = request.getParameter("upass");
	String num = request.getParameter("number");
	String addr = request.getParameter("address");
	String gender = request.getParameter("gender");
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/enotes?characterEncoding=latin1","library", "securelib");
		PreparedStatement ps = conn.prepareStatement("update user set name=?, email=?, password=?, number=?, address=?, gender=? where id=?");
        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, pass);
        ps.setString(4, num);
        ps.setString(5, addr);
        ps.setString(6, gender);
        ps.setString(7, id);
        int i=ps.executeUpdate();
        System.out.println(i+"record updated");
        HttpSession session1=request.getSession();
		session1.setAttribute("editstd", "Profile Updated Successfully..");
		response.sendRedirect("viewStudents.jsp");
	}
	catch(Exception e){
		out.println(e);
	}
%>