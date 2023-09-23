<%@page import="java.sql.*"%>
			<%
				String a_id = request.getParameter("a_id");
				String a_name = request.getParameter("a_name");
				String username = request.getParameter("username");
	String password = request.getParameter("password");
	String classes_name = request.getParameter("classes_name");
	String contact_no = request.getParameter("contact_no");
	String address = request.getParameter("address");
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/enotes?characterEncoding=latin1","library", "securelib");
		PreparedStatement ps = conn.prepareStatement("update admin set a_name=?, username=?, password=?, classes_name=?, contact_no=?, address=? where a_id=?");
        ps.setString(1, a_name);
        ps.setString(2, username);
        ps.setString(3, password);
        ps.setString(4, classes_name);
        ps.setString(5, contact_no);
        ps.setString(6, address);
        ps.setString(7, a_id);
        int i=ps.executeUpdate();
        System.out.println(i+"record updated");
		response.sendRedirect("profile.jsp");
		HttpSession session1=request.getSession();
			session1.setAttribute("succMsg", "Profile Updated Successfully..");
			response.sendRedirect("profile.jsp");
		
	}
	catch(Exception e){
		out.println(e);
	}
%>